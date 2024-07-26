package site.toeicdoit.user.repository.mongo;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import site.toeicdoit.user.domain.model.mongo.UserFluxModel;

@Repository
public interface UserMongoRepository extends MongoRepository<UserFluxModel, String>{
    
}
