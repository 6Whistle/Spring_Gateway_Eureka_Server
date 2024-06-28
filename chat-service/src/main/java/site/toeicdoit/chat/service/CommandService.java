package site.toeicdoit.chat.service;

import reactor.core.publisher.Mono;

public interface CommandService<Model, DTO> {
    Mono<Model> save(DTO dto);
    Mono<Model> update(DTO dto);
    Mono<Boolean> delete(String id);
}
