package site.toeicdoit.gateway.service.impl;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import lombok.RequiredArgsConstructor;
import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.domain.dto.LoginDTO;
import site.toeicdoit.gateway.domain.dto.MessengerDTO;
import site.toeicdoit.gateway.domain.model.PrincipalUserDetails;
import site.toeicdoit.gateway.service.AuthService;
import site.toeicdoit.gateway.service.provider.JwtTokenProvider;

@Service
@RequiredArgsConstructor
public class AuthServiceImpl implements AuthService{
    private final WebClient webClient;
    private final JwtTokenProvider jwtTokenProvider;

    @Override
    public Mono<MessengerDTO> login(LoginDTO dto) {
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
                    Mono.just(
                        MessengerDTO.builder()
                        .message("로그인 성공")
                        .accessToken(accessToken)
                        .refreshToken(refreshToken)
                        .accessTokenExpired(jwtTokenProvider.getAccessTokenExpired())
                        .refreshTokenExpired(jwtTokenProvider.getRefreshTokenExpired())
                        .build()
                    )
                )
            )
        )
        ;
    }
    
}
