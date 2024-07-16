package site.toeicdoit.gateway.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.server.ServerResponse;

import lombok.RequiredArgsConstructor;
import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.domain.dto.LoginDTO;
import site.toeicdoit.gateway.service.AuthService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {
    private final AuthService authService;
    
    @PostMapping("/login/local")
    public Mono<ServerResponse> login(@RequestBody LoginDTO dto) {
        return authService.localLogin(dto);
    }

    
}
