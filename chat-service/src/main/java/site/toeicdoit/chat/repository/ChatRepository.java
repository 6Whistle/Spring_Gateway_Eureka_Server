package site.toeicdoit.chat.repository;

import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;

import reactor.core.publisher.Flux;
import site.toeicdoit.chat.domain.model.ChatFluxModel;

@Repository
public interface ChatRepository extends ReactiveMongoRepository<ChatFluxModel, String>{
    Flux<ChatFluxModel> findByRoomId(String roomId);
}
