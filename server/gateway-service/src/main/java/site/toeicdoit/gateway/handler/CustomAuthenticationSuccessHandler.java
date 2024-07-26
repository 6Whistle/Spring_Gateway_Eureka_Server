package site.toeicdoit.gateway.handler;


import java.net.URI;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.server.WebFilterExchange;
import org.springframework.security.web.server.authentication.ServerAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.domain.dto.MessengerDTO;
import site.toeicdoit.gateway.domain.model.PrincipalUserDetails;
import site.toeicdoit.gateway.service.provider.JwtTokenProvider;

@Slf4j
@Component
@RequiredArgsConstructor
public class CustomAuthenticationSuccessHandler implements ServerAuthenticationSuccessHandler {
    private final ObjectMapper objectMapper;
    private final JwtTokenProvider jwtTokenProvider;

    @Override
    public Mono<Void> onAuthenticationSuccess(WebFilterExchange webFilterExchange, Authentication authentication) {
        log.info("::::::webFilterExchange 정보: "+webFilterExchange);
        log.info("::::::authentication 정보: "+authentication);
        log.info("::::::getAuthorities 정보: "+authentication.getAuthorities());
        log.info("::::::getCredentials 정보: "+authentication.getCredentials());

        webFilterExchange.getExchange().getResponse().setStatusCode(HttpStatus.FOUND);
        webFilterExchange.getExchange().getResponse().getHeaders().setLocation(URI.create("http://localhost:3000"));
        webFilterExchange.getExchange().getResponse().getHeaders().add("Content-Type", "application/json");

        return webFilterExchange.getExchange().getResponse()
        .writeWith(
            jwtTokenProvider.generateToken((PrincipalUserDetails)authentication.getPrincipal(), false)
            .doOnNext(accessToken -> 
                webFilterExchange
                .getExchange()
                .getResponse()
                .getCookies()
                .add("accessToken", 
                    ResponseCookie.from("accessToken", accessToken)
                    .path("/")
                    .maxAge(jwtTokenProvider.getAccessTokenExpired())
                    // .httpOnly(true)
                    .build()
                )
            )
            .flatMap(i -> jwtTokenProvider.generateToken((PrincipalUserDetails)authentication.getPrincipal(), true))
            .doOnNext(refreshToken -> 
                webFilterExchange
                .getExchange()
                .getResponse()
                .getCookies()
                .add("refreshToken", 
                    ResponseCookie.from("refreshToken", refreshToken)
                    .path("/")
                    .maxAge(jwtTokenProvider.getRefreshTokenExpired())
                    // .httpOnly(true)
                    .build()
                )
            )
            .flatMap(i -> 
                Mono.just(
                    MessengerDTO.builder()
                    .message("로그인 성공")
                    .build()
                )
            )
            .flatMap(messageDTO -> 
                Mono.just(
                    webFilterExchange.getExchange()
                    .getResponse()
                    .bufferFactory()
                    .wrap(writeValueAsBytes(messageDTO))
                )
            )
        );
    }
    

    private byte[] writeValueAsBytes(MessengerDTO messengerDTO) {
        try {
            return objectMapper.writeValueAsBytes(messengerDTO);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }
}