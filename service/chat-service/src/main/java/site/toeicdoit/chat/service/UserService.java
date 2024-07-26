package site.toeicdoit.chat.service;

import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.UserDTO;
import site.toeicdoit.chat.domain.model.UserFluxModel;

/**
 * UserService
 * <p>User Service Interface</p>
 * @since 2024-07-23
 * @version 1.0
 * @see QueryService
 * @see CommandService
 * @see UserFluxModel
 * @see UserDTO
 */
public interface UserService extends QueryService<UserFluxModel, UserDTO>, CommandService<UserFluxModel, UserDTO>{
    Mono<UserFluxModel> findByEmail(String email);
}
