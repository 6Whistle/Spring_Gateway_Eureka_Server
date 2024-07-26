package site.toeicdoit.chat.repository;

import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;

import reactor.core.publisher.Flux;
import site.toeicdoit.chat.domain.model.ChatFluxModel;

/**
 * ChatRepository
 * <p>Ractive MongoDB Repository for ChatFluxModel</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see ReactiveMongoRepository
 * @see ChatFluxModel
 */
@Repository
public interface ChatRepository extends ReactiveMongoRepository<ChatFluxModel, String>{
    Flux<ChatFluxModel> findByRoomId(String roomId);
}
