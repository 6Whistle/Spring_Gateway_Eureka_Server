package site.toeicdoit.chat.service;

import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

/**
 * Query Service
 * <p>Query Service Interface</p>
 * @param <Model> Wildcard Model
 * @param <DTO> Wildcard DTO
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
public interface QueryService<Model, DTO> {
    Mono<Model> findById(String id);
    Flux<Model> findAll();
    Mono<Long> count();
}
