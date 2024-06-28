package site.toeicdoit.chat.repository;

import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;

import site.toeicdoit.chat.domain.model.RoomFluxModel;

@Repository
public interface RoomRepository extends ReactiveMongoRepository<RoomFluxModel, String>{
    
}
