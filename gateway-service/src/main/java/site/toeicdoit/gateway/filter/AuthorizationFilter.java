package site.toeicdoit.gateway.filter;

import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.GatewayFilterFactory;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;

@Slf4j
@Component
public class AuthorizationFilter implements GatewayFilterFactory<AuthorizationFilter.Config>{
    @Data
    public static class Config {
        private String headerName;
        private String headerValue;
    }

    @Override
    public GatewayFilter apply(Config config) {
        return ((exchange, chain) -> {
            log.info("Request URL: {}", exchange.getRequest().getURI());
            if(!exchange.getRequest().getHeaders().containsKey(HttpHeaders.AUTHORIZATION))
                return onError(exchange, HttpStatus.UNAUTHORIZED, "No Authorization Header");
            return chain.filter(exchange);
        });
    }

    private Mono<Void> onError(ServerWebExchange exchange, HttpStatusCode httpStatusCode, String message){        
        log.error("Error Occured : {}, {}, {}", exchange.getRequest().getURI(), httpStatusCode, message);
        exchange.getResponse().setStatusCode(httpStatusCode);
        DataBuffer buffer = exchange.getResponse().bufferFactory().wrap(message.getBytes());
        return exchange.getResponse().writeWith(Mono.just(buffer));
    }
}
