package site.toeicdoit.gateway.service.impl;

import java.net.URI;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseCookie;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.server.ServerResponse;

import lombok.RequiredArgsConstructor;
import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.domain.dto.LoginDTO;
import site.toeicdoit.gateway.domain.model.PrincipalUserDetails;
import site.toeicdoit.gateway.service.AuthService;
import site.toeicdoit.gateway.service.provider.JwtTokenProvider;

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
        .flatMap(i -> 
            jwtTokenProvider.generateToken(i, false)
            .flatMap(accessToken -> 
                jwtTokenProvider.generateToken(i, true)
                .flatMap(refreshToken -> 
                    ServerResponse.temporaryRedirect(URI.create("http://localhost:3000"))
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
        ;
    }
    
}
