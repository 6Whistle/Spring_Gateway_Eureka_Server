package site.toeicdoit.chat.config;

import java.util.List;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.ReactiveMongoTemplate;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import site.toeicdoit.chat.domain.model.RoomFluxModel;
import site.toeicdoit.chat.domain.vo.RoomCategory;

/**
 * ReactiveMongoConfig
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see Configuration
 * @see RequiredArgsConstructor
 * @see ReactiveMongoTemplate
 * @see CommandLineRunner
 */
@Slf4j
@Configuration
@RequiredArgsConstructor
public class ReactiveMongoConfig {
    private final ReactiveMongoTemplate mongoTemplate;

    /**
     * mongodbInit
     * <p>Initialize MongoDB</p>
     * <p>Drop all collections and insert a test room</p>
     * @return {@link CommandLineRunner}
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see CommandLineRunner
     * @see ReactiveMongoTemplate
     */
    @Bean
    public CommandLineRunner mongodbInit() {
        mongoTemplate.getCollectionNames()
        .flatMap(collectionName -> mongoTemplate.dropCollection(collectionName))
        .collectList()
        .flatMap(i -> mongoTemplate.insert(RoomFluxModel.builder()
            .title("test room")
            .roomCategories(List.of(RoomCategory.ETC))
            .adminIds(List.of("admin"))
            .memberIds(List.of("admin"))
            .build()
        ))
        .doOnNext(i -> log.info("{}", i.toString()))
        .subscribe();

        return args -> {
            System.out.println("MongoDB Initiated!");
        };
    }
}