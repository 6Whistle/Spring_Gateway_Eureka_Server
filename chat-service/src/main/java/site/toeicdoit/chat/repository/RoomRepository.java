package site.toeicdoit.chat.repository;

import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;

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
    
}
