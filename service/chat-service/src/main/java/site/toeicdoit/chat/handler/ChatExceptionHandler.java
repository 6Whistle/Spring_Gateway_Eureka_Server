package site.toeicdoit.chat.handler;

import org.springframework.boot.web.reactive.error.ErrorWebExceptionHandler;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.http.MediaType;
import org.springframework.lang.NonNull;
import org.springframework.web.server.ServerWebExchange;

import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.vo.ExceptionStatus;
import site.toeicdoit.chat.exception.ChatException;

@Order(-2)
@Configuration
public class ChatExceptionHandler implements ErrorWebExceptionHandler{
    @NonNull
    @Override
    public Mono<Void> handle(@NonNull ServerWebExchange exchange, @NonNull Throwable ex) {
        return Mono.just(ChatException.toChatException(ex, ExceptionStatus.INTERNAL_SERVER_ERROR, "Global Handler Executed"))
        .doOnNext(e -> exchange.getResponse().setStatusCode(e.getStatus().getStatus()))
        .doOnNext(e -> exchange.getResponse().getHeaders().setContentType(MediaType.APPLICATION_JSON))
        .flatMap(e -> exchange.getResponse().writeWith(Mono.just(exchange.getResponse().bufferFactory().wrap(e.toString().getBytes()))))
        ;
    }
}
