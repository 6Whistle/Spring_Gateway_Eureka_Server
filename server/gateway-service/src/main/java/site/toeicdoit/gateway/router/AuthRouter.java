package site.toeicdoit.gateway.router;

import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.RouterFunctions;
import org.springframework.web.reactive.function.server.ServerResponse;

import lombok.RequiredArgsConstructor;
import site.toeicdoit.gateway.domain.dto.LoginDTO;
import site.toeicdoit.gateway.service.AuthService;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpHeaders;

@Configuration
@RequiredArgsConstructor
public class AuthRouter {
    private final AuthService authService;

    @Bean
    public RouterFunction<ServerResponse> authRoutes() {
        return RouterFunctions.route()
            .path("/auth", builder -> builder
                .POST("/login/local", req -> req.bodyToMono(LoginDTO.class).flatMap(authService::localLogin))
                .POST("/refresh", req -> authService.refresh(req.headers().header(HttpHeaders.AUTHORIZATION).get(0)))
                .POST("/logout", req -> authService.logout(req.headers().header(HttpHeaders.AUTHORIZATION).get(0)))
            )
            .build();
    }
}
