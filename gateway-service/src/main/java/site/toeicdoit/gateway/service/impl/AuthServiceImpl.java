package site.toeicdoit.gateway.service.impl;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseCookie;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.server.ServerResponse;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.domain.dto.LoginDTO;
import site.toeicdoit.gateway.domain.model.PrincipalUserDetails;
import site.toeicdoit.gateway.domain.vo.ExceptionStatus;
import site.toeicdoit.gateway.exception.GatewayException;
import site.toeicdoit.gateway.service.AuthService;
import site.toeicdoit.gateway.service.provider.JwtTokenProvider;

@Slf4j
@Service
@RequiredArgsConstructor
public class AuthServiceImpl implements AuthService{
    private final WebClient webClient;
    private final JwtTokenProvider jwtTokenProvider;

    @Override
    public Mono<ServerResponse> localLogin(LoginDTO dto) {
        return Mono.just(dto)
        .log()
        .flatMap(i -> 
            webClient.post()
            .uri("lb://user-service/auth/login/local")
            .accept(MediaType.APPLICATION_JSON)
            .bodyValue(i)
            .retrieve()
            .bodyToMono(PrincipalUserDetails.class)
        )
        .log()
        .doOnNext(i -> log.info(">>> PrincipalUserDetails: {}", i.toString()))
        .flatMap(i -> 
            jwtTokenProvider.generateToken(i, false)
            .flatMap(accessToken -> 
                jwtTokenProvider.generateToken(i, true)
                .flatMap(refreshToken -> 
                    ServerResponse.ok()
                    .cookie(
                        ResponseCookie.from("accessToken")
                        .value(accessToken)
                        .maxAge(jwtTokenProvider.getAccessTokenExpired())
                        .path("/")
                        // .httpOnly(true)
                        .build()
                    )
                    .cookie(
                        ResponseCookie.from("refreshToken")
                        .value(refreshToken)
                        .maxAge(jwtTokenProvider.getRefreshTokenExpired())
                        .path("/")
                        // .httpOnly(true)
                        .build()
                    )
                    .build()
                )
            )
        )
        .log()
        .onErrorMap(Exception.class, e -> new GatewayException(ExceptionStatus.UNAUTHORIZED, "Invalid User"))
        .switchIfEmpty(Mono.error(new GatewayException(ExceptionStatus.UNAUTHORIZED, "Invalid User")))
        .onErrorResume(GatewayException.class, e -> ServerResponse.status(e.getStatus().getStatus().value()).bodyValue(e.getMessage()))
        ;
    }

    @Override
    public Mono<ServerResponse> refresh(String refreshToken) {
        return Mono.just(refreshToken)
        .flatMap(bearerToken -> Mono.just(jwtTokenProvider.removeBearer(bearerToken)))
        .filter(jwtToken -> jwtTokenProvider.isTokenValid(jwtToken, true))
        .switchIfEmpty(Mono.error(new GatewayException(ExceptionStatus.UNAUTHORIZED, "Invalid Refresh Token")))
        .flatMap(jwtToken -> 
            Mono.just(jwtTokenProvider.extractPrincipalUserDetails(jwtToken))
            .filterWhen(user -> jwtTokenProvider.isTokenInRedis(user.getUsername(), jwtToken))
            .switchIfEmpty(Mono.error(new GatewayException(ExceptionStatus.UNAUTHORIZED, "Token not found in Redis")))
            .flatMap(i -> jwtTokenProvider.generateToken(i, false))
        )
        .flatMap(accessToken -> 
            ServerResponse.ok()
            .cookie(
                ResponseCookie.from("accessToken")
                .value(accessToken)
                .maxAge(jwtTokenProvider.getAccessTokenExpired())
                .path("/")
                // .httpOnly(true)
                .build()
            )
            .build()    
        )
        .onErrorResume(GatewayException.class, e -> ServerResponse.status(e.getStatus().getStatus().value()).bodyValue(e.getMessage()));
    }

    @Override
    public Mono<ServerResponse> logout(String refreshToken) {
        return Mono.just(refreshToken)
        .flatMap(bearerToken -> Mono.just(jwtTokenProvider.removeBearer(bearerToken)))
        .filter(jwtToken -> jwtTokenProvider.isTokenValid(jwtToken, false))
        .switchIfEmpty(Mono.error(new GatewayException(ExceptionStatus.UNAUTHORIZED, "Invalid Refresh Token")))
        .flatMap(jwtToken -> 
            Mono.just(jwtTokenProvider.extractPrincipalUserDetails(jwtToken))
            .filterWhen(user -> jwtTokenProvider.removeTokenInRedis(user.getUsername()))
            .switchIfEmpty(Mono.error(new GatewayException(ExceptionStatus.UNAUTHORIZED, "Token not found in Redis")))
        )
        .flatMap(i -> ServerResponse.ok().build())
        .onErrorResume(GatewayException.class, e -> ServerResponse.status(e.getStatus().getStatus().value()).bodyValue(e.getMessage()));
    }
 
}
