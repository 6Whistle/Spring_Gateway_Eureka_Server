package site.toeicdoit.chat.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.mongodb.repository.Query;
import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;

import reactor.core.publisher.Flux;
import site.toeicdoit.chat.domain.model.RoomFluxModel;

/**
 * RoomRepository
 * <p>Ractive MongoDB Repository for RoomFluxModel</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see ReactiveMongoRepository
 * @see RoomFluxModel
 */
@Repository
public interface RoomRepository extends ReactiveMongoRepository<RoomFluxModel, String>{

    /**
     * Find All Room
     * <p>모든 채팅방을 찾는다.</p>
     * @param pageable Pageable
     * @return Flux&ltRoomFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    Flux<RoomFluxModel> findAllBy(Pageable pageable);

    /**
     * Find Room by Title
     * <p>특정 제목을 포함하는 채팅방을 찾는다.</p>
     * @param title String
     * @param pageable Pageable
     * @return Flux&ltRoomFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    Flux<RoomFluxModel> findByTitle(String title, Pageable pageable);

    /**
     * Find Room by Field and Value
     * <p>특정 필드의 값이 포함된 채팅방을 찾는다.</p>
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Flux&ltRoomFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Query("{ ?0: { $in: [?1] } }")
    Flux<RoomFluxModel> findFieldHasValue(String field, String value, Pageable pageable);

    /**
     * Find Room by Field and Value
     * <p>특정 필드의 값이 일치하는 채팅방을 찾는다.</p>
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Flux&ltRoomFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Query("{ ?0: ?1 }")
    Flux<RoomFluxModel> findFieldEqualsValue(String field, String value, Pageable pageable);

    /**
     * Find Room by Field and Value
     * <p>특정 필드의 값이 초과하는 채팅방을 찾는다.</p>
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Flux&ltRoomFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Query("{ ?0: { $gt: [?1] } }")
    Flux<RoomFluxModel> findFieldGreaterThanValue(String field, String value, Pageable pageable);

    /**
     * Find Room by Field and Value
     * <p>특정 필드의 값이 이하인 채팅방을 찾는다.</p>
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Flux&ltRoomFluxModel&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Query("{ ?0: { $lt: [?1] } }")
    Flux<RoomFluxModel> findFieldLessThanValue(String field, String value, Pageable pageable);
}
