package site.toeicdoit.gateway.filter;

import java.util.List;

import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.domain.vo.ExceptionStatus;
import site.toeicdoit.gateway.domain.vo.Role;
import site.toeicdoit.gateway.exception.GatewayException;
import site.toeicdoit.gateway.service.provider.JwtTokenProvider;

@Slf4j
@Component
public class AuthorizationHeaderFilter extends AbstractGatewayFilterFactory<AuthorizationHeaderFilter.Config>{

    private final JwtTokenProvider jwtTokenProvider;

    public AuthorizationHeaderFilter(JwtTokenProvider jwtTokenProvider){ 
        super(Config.class);
        this.jwtTokenProvider = jwtTokenProvider;
    }
    
    @Data
    public static class Config {
        private List<Role> roles;
    }

    @Override
    public GatewayFilter apply(Config config) {
        return ((exchange, chain) -> {
            

            return Mono.just(exchange)
                .flatMap(i -> Mono.just(exchange.getRequest().getHeaders().get(HttpHeaders.AUTHORIZATION)))
                .flatMap(i -> Mono.just(i.get(0)))
                .switchIfEmpty(Mono.error(new GatewayException(ExceptionStatus.UNAUTHORIZED,"No Authorization Header")))
                .log()
                .filterWhen(i -> Mono.just(i.startsWith("Bearer ")))
                .flatMap(i -> Mono.just(jwtTokenProvider.removeBearer(i)))
                .filterWhen(i -> Mono.just(jwtTokenProvider.isTokenValid(i, false)))
                .switchIfEmpty(Mono.error(new GatewayException(ExceptionStatus.UNAUTHORIZED,"Invalid Token")))
                .log()
                .flatMapMany(i -> Flux.just(jwtTokenProvider.extractRoles(i).stream().map(j -> Role.valueOf(j)).toList()))
                .log()
                .hasElement(config.getRoles())
                .log()
                .filter(i -> i)
                .switchIfEmpty(Mono.error(new GatewayException(ExceptionStatus.NO_PERMISSION, "No Permission")))
                .log()
                .flatMap(i -> chain.filter(exchange))
                .onErrorResume(GatewayException.class, e -> onError(exchange, HttpStatusCode.valueOf(e.getStatus().getStatus().value()), e.getMessage()))
                .log()
                ;
            
            // @SuppressWarnings("null")
            // String token = exchange.getRequest().getHeaders().get(HttpHeaders.AUTHORIZATION).get(0);
            
            // if(token == null)
            //     return onError(exchange, HttpStatus.UNAUTHORIZED, "No Token or Invalid Token");

            // String jwt = jwtTokenProvider.removeBearer(token);

            // log.info("JWT Token: {}", jwt);

            // log.info("isTokenValid: {}", jwtTokenProvider.isTokenValid(jwt, false));

            // Mono.just(!jwtTokenProvider.isTokenValid(jwt, false))
            //     .filter(i -> i)
            //     .flatMap(i -> onError(exchange, HttpStatus.UNAUTHORIZED, "Invalid Token"))
            //     .subscribe()
            //     ;

            // List<Role> roles = jwtTokenProvider.extractRoles(jwt).stream().map(i -> Role.valueOf(i)).toList();

            // log.info("Roles: {}", roles);

            // for(var i : config.getRoles()){
            //     if(roles.contains(i))
            //         return chain.filter(exchange);
            // }
            
            // return onError(exchange, HttpStatus.UNAUTHORIZED, "No Permission");
        });
    }

    private Mono<Void> onError(ServerWebExchange exchange, HttpStatusCode httpStatusCode, String message){        
        log.error("Error Occured : {}, {}, {}", exchange.getRequest().getURI(), httpStatusCode, message);
        exchange.getResponse().setStatusCode(httpStatusCode);
        return exchange.getResponse().writeWith(Mono.just(exchange.getResponse().bufferFactory().wrap(message.getBytes())));
    }
}
