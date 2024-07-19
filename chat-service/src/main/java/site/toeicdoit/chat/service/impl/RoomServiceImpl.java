package site.toeicdoit.chat.service.impl;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.domain.model.RoomFluxModel;
import site.toeicdoit.chat.repository.RoomRepository;
import site.toeicdoit.chat.service.RoomService;

@Service
@RequiredArgsConstructor
public class RoomServiceImpl implements RoomService {
    private final RoomRepository roomRepository;

    @Override
    public Mono<RoomFluxModel> save(RoomDTO dto) {
        return roomRepository.save(RoomFluxModel.builder()
                .title(dto.getTitle())
                .build());
    }

    @Override
    public Mono<RoomFluxModel> update(RoomDTO dto) {
        return roomRepository.existsById(dto.getId())
                .flatMap(i -> roomRepository.save(RoomFluxModel.builder()
                        .id(dto.getId())
                        .title(dto.getTitle())
                        .build()));
    }

    @Override
    public Mono<Boolean> delete(String id) {
        return roomRepository.existsById(id)
                .filter(i -> i)
                .flatMap(i -> roomRepository.deleteById(id).thenReturn(i));
    }

    @Override
    public Mono<RoomFluxModel> findById(String id) {
        return roomRepository.findById(id);
    }

    @Override
    public Flux<RoomFluxModel> findAll() {
        return roomRepository.findAll();
    }

    @Override
    public Mono<Long> count() {
        return roomRepository.count();
    }
}
