package site.toeicdoit.chat.service;

import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.UserDTO;
import site.toeicdoit.chat.domain.model.UserFluxModel;

public interface UserService extends QueryService<UserFluxModel, UserDTO>, CommandService<UserFluxModel, UserDTO>{
    Mono<UserFluxModel> findByEmail(String email);
}
