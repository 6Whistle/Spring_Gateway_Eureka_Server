package site.toeicdoit.chat.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.mongodb.repository.Query;
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
    /**
     * Find Chat by RoomId
     * <p>특정 채팅방의 채팅을 찾는다.</p>
     * @param roomId String
     * @param pageable Pageable
     * @return Flux&ltChatFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    Flux<ChatFluxModel> findByRoomId(String roomId, Pageable pageable);

    /**
     * Find All Chat
     * <p>모든 채팅을 찾는다.</p>
     * @param pageable
     * @return Flux&ltChatFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    Flux<ChatFluxModel> findAllBy(Pageable pageable);

    /**
     * Find Chat by Field and Value in Room
     * <p>특정 방에서 필드의 값이 포함된 채팅을 찾는다.</p>
     * @param roomId String
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Flux&ltChatFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Query("{ roomId: ?0, ?1: { $in: [?2] } }")
    Flux<ChatFluxModel> findByRoomIdAndFieldHasValue(String roomId, String field, String value, Pageable pageable);

    /**
     * Find Chat by Field and Value in Room
     * <p>특정 방에서 필드의 값이 일치하는 채팅을 찾는다.</p>
     * @param roomId String
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Flux&ltChatFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Query("{ roomId: ?0, ?1: ?2 }")
    Flux<ChatFluxModel> findByRoomIdAndFieldEqualsValue(String roomId, String field, String value, Pageable pageable);

    /**
     * Find Chat by Field and Value in Room
     * <p>특정 방에서 필드의 값보다 큰 채팅을 찾는다.</p>
     * @param roomId String
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Flux&ltChatFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Query("{ roomId: ?0, ?1: { $gt: ?2 } }")
    Flux<ChatFluxModel> findByRoomIdAndFieldGreaterThanValue(String roomId, String field, Object value, Pageable pageable);

    /**
     * Find Chat by Field and Value in Room
     * <p>특정 방에서 필드의 값보다 작은 채팅을 찾는다.</p>
     * @param roomId String
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Flux&ltChatFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Query("{ roomId: ?0, ?1: { $lt: ?2 } }")
    Flux<ChatFluxModel> findByRoomIdAndFieldLessThanValue(String roomId, String field, Object value, Pageable pageable);
}
