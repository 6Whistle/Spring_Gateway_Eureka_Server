package site.toeicdoit.chat.config;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.ReactiveMongoTemplate;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import site.toeicdoit.chat.domain.model.RoomFluxModel;

@Slf4j
@Configuration
@RequiredArgsConstructor
public class ReactiveMongoConfig {
    private final ReactiveMongoTemplate mongoTemplate;

    @Bean
    public CommandLineRunner commandLineRunner() {
        mongoTemplate.getCollectionNames()
        .flatMap(collectionName -> mongoTemplate.dropCollection(collectionName))
        .collectList()
        // .flatMapMany(i -> mongoTemplate.findAll(UserFluxModel.class))
        // .collectList()
        .flatMap(i -> mongoTemplate.insert(RoomFluxModel.builder()
            .title("test room")
            .build()
        ))
        .doOnNext(i -> log.info("{}", i.toString()))
        .subscribe();

        return args -> {
            System.out.println("MongoDB Initiated!");
        };
    }
}