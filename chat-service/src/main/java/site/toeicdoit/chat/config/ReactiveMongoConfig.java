package site.toeicdoit.chat.config;

import java.util.List;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.ReactiveMongoTemplate;

import lombok.RequiredArgsConstructor;
import site.toeicdoit.chat.domain.model.RoomFluxModel;
import site.toeicdoit.chat.domain.model.UserFluxModel;

@Configuration
@RequiredArgsConstructor
public class ReactiveMongoConfig {
    private final ReactiveMongoTemplate mongoTemplate;

    @Bean
    public CommandLineRunner commandLineRunner() {
        mongoTemplate.getCollectionNames()
        // .flatMap(collectionName -> mongoTemplate.dropCollection(collectionName))
        .collectList()
        .flatMapMany(i -> mongoTemplate.findAll(UserFluxModel.class))
        .collectList()
        .flatMap(i -> mongoTemplate.insert(RoomFluxModel.builder()
            .title("test room")
            .members(List.of(i.get(0).getId()))
            .members(List.of(i.get(0).getId(), i.get(1).getId()))
            .build()
        ))
        .subscribe();

        return args -> {
            System.out.println("MongoDB Initiated!");
        };
    }
}