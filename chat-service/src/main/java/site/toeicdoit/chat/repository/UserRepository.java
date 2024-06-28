package site.toeicdoit.chat.repository;

import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;

import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.model.UserFluxModel;

@Repository
public interface UserRepository extends ReactiveMongoRepository<UserFluxModel, String>{
    Mono<UserFluxModel> findByEmail(String email);
}
