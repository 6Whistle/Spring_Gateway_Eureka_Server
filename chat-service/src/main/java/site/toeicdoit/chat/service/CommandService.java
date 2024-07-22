package site.toeicdoit.chat.service;

import reactor.core.publisher.Mono;

/**
 * Command Service
 * <p>Command Service Interface</p>
 * @param <Model> Wildcard Model
 * @param <DTO> Wildcard DTO
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
public interface CommandService<Model, DTO> {
    Mono<Model> save(DTO dto);
    Mono<Model> update(DTO dto);
    Mono<Boolean> delete(String id);
}
