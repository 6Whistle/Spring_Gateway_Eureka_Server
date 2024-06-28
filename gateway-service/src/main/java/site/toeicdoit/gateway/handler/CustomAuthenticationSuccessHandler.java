package site.toeicdoit.gateway.handler;

import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.server.WebFilterExchange;
import org.springframework.security.web.server.authentication.ServerAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.domain.dto.MessengerDTO;

@Log4j2
@Component
@RequiredArgsConstructor
public class CustomAuthenticationSuccessHandler implements ServerAuthenticationSuccessHandler {
    private final ObjectMapper objectMapper;

    @Override
    public Mono<Void> onAuthenticationSuccess(WebFilterExchange webFilterExchange, Authentication authentication) {
        log.info("::::::webFilterExchange 정보: "+webFilterExchange);
        log.info("::::::authentication 정보: "+authentication);
        log.info("::::::getAuthorities 정보: "+authentication.getAuthorities());
        log.info("::::::getCredentials 정보: "+authentication.getCredentials());
        
        webFilterExchange.getExchange().getResponse().setStatusCode(HttpStatus.OK);
        webFilterExchange.getExchange().getResponse().getHeaders().add("Content-Type", "application/json");

        return webFilterExchange.getExchange().getResponse()
        .writeWith(
            Mono.just(
                webFilterExchange.getExchange()
                .getResponse()
                .bufferFactory()
                .wrap(
                    writeValueAsBytes(
                        MessengerDTO.builder()
                        .message("로그인 성공")
                        .accessToken(null)
                        .refreshToken(null)
                        .accessTokenExpired(null)
                        .refreshTokenExpired(null)
                        .build()
                    )
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

