package site.toeicdoit.chat.service;

import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

public interface QueryService<Model, DTO> {
    Mono<Model> findById(String id);
    Flux<Model> findAll();
    Mono<Long> count();
}
