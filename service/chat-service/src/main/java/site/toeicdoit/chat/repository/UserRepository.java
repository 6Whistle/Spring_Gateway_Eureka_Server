package site.toeicdoit.chat.repository;

import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;

import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.model.UserFluxModel;

/**
 * UserRepository
 * <p>Ractive MongoDB Repository for UserFluxModel</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see ReactiveMongoRepository
 * @see UserFluxModel
 */
@Repository
public interface UserRepository extends ReactiveMongoRepository<UserFluxModel, String>{
    Mono<UserFluxModel> findByEmail(String email);
}
