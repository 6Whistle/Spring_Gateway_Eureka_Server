package site.toeicdoit.gateway.filter;

import java.time.Instant;
import java.util.Base64;
import java.util.Date;

import javax.crypto.SecretKey;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import jakarta.annotation.PostConstruct;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;

@Slf4j
@Component
public class AuthorizationHeaderFilter extends AbstractGatewayFilterFactory<AuthorizationHeaderFilter.Config>{
    
    private static final String BEARER = "Bearer ";

    @Value("${jwt.secret}")
    private String secretKey;

    @Value("${jwt.issuer}")
    private String issuer;

    @Value("${jwt.expired.access}")
    private long accessExpired;

    @Value("${jwt.expired.refresh}")
    private long refreshExpired;

    private SecretKey SECRET_KEY;

    public AuthorizationHeaderFilter() {
        super(Config.class);
    }

    @PostConstruct
    public void init(){
        SECRET_KEY = Keys.hmacShaKeyFor(Base64.getUrlEncoder().encodeToString(secretKey.getBytes()).getBytes());
    }
    
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
            
            @SuppressWarnings("null")
            String token = exchange.getRequest().getHeaders().get(HttpHeaders.AUTHORIZATION).get(0);
            
            if(token == null || token.startsWith(BEARER) == false)
                return onError(exchange, HttpStatus.UNAUTHORIZED, "No Token or Invalid Token");

            String jwt = token.substring(BEARER.length());

            try {
                if (Jwts.parser().verifyWith(SECRET_KEY).build().parseSignedClaims(jwt).getPayload().getExpiration().before(Date.from(Instant.now())))
                    return onError(exchange, HttpStatus.UNAUTHORIZED, "Token Expired");
            } catch (Exception e) {
                return onError(exchange, HttpStatus.UNAUTHORIZED, "Invalid Token");
            }
            
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
