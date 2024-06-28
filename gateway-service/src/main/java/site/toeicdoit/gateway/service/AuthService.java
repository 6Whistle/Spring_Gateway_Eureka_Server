package site.toeicdoit.gateway.service;

import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.domain.dto.LoginDTO;
import site.toeicdoit.gateway.domain.dto.MessengerDTO;

public interface AuthService {
    Mono<MessengerDTO> login(LoginDTO dto);
}
