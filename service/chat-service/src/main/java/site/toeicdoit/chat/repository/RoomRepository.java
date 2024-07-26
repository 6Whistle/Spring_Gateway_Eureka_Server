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
    Flux<RoomFluxModel> findByTitle(String title, Pageable pageable);

    @Query("{ ?0: { $in: [?1] } }")
    Flux<RoomFluxModel> findTypeHasValue(String type, String value, Pageable pageable);

    @Query("{ ?0: ?1 }")
    Flux<RoomFluxModel> findTypeEqualsValue(String type, String value, Pageable pageable);
}
