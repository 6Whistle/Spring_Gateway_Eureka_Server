package site.toeicdoit.chat.service.impl;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.http.codec.ServerSentEvent;
import org.springframework.stereotype.Service;

import jakarta.annotation.PreDestroy;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import reactor.core.publisher.Sinks;
import site.toeicdoit.chat.domain.dto.ChatDTO;
import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.domain.model.ChatFluxModel;
import site.toeicdoit.chat.domain.model.RoomFluxModel;
import site.toeicdoit.chat.exception.ChatException;
import site.toeicdoit.chat.repository.ChatRepository;
import site.toeicdoit.chat.repository.RoomRepository;
import site.toeicdoit.chat.service.RoomService;

@Slf4j
@Service
@RequiredArgsConstructor
public class RoomServiceImpl implements RoomService {
    private final RoomRepository roomRepository;
    private final ChatRepository chatRepository;
    private final Map<String, Sinks.Many<ServerSentEvent<ChatDTO>>> chatSinks;

    @PreDestroy
    public void close() {
        chatSinks.values().forEach(Sinks.Many::tryEmitComplete);
    }

    @Override
    public Mono<RoomFluxModel> save(RoomDTO dto) {
        return roomRepository.save(RoomFluxModel.builder()
                .title(dto.getTitle())
                .members(dto == null ? new ArrayList<>() : dto.getMembers())
                .build());
    }

    @Override
    public Mono<ChatDTO> saveChat(ChatDTO chatDTO) {
        return roomRepository.findById(chatDTO.getRoomId())
                .filter(i -> i.getMembers().contains(chatDTO.getSenderId()))
                .flatMap(i -> chatRepository.save(ChatFluxModel.builder()
                        .roomId(chatDTO.getRoomId())
                        .message(chatDTO.getMessage())
                        .senderId(chatDTO.getSenderId())
                        .senderName(chatDTO.getSenderName())
                        .build()))
                .log()
                .flatMap(i -> Mono.just(ChatDTO.builder()
                        .id(i.getId())
                        .roomId(i.getRoomId())
                        .senderId(i.getSenderId())
                        .senderName(i.getSenderName())
                        .message(i.getMessage())
                        .createdAt(i.getCreatedAt())
                        .build()))
                .log()
                .doOnSuccess(i -> {
                    chatSinks.get(i.getRoomId()).tryEmitNext(ServerSentEvent.builder(i).build());
                });
    }

    @Override
    public Mono<RoomFluxModel> update(RoomDTO dto) {
        return roomRepository.existsById(dto.getId())
                .flatMap(i -> roomRepository.save(RoomFluxModel.builder()
                        .id(dto.getId())
                        .title(dto.getTitle())
                        .members(dto.getMembers())
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
    public Mono<ChatFluxModel> findChatById(String id) {
        return chatRepository.findById(id);
    }

    @Override
    public Flux<ChatFluxModel> findChatsByRoomId(String roomId) {
        return roomRepository.existsById(roomId)
                .filter(i -> i)
                .flatMapMany(i -> chatRepository.findByRoomId(roomId));
    }

    @Override
    public Flux<RoomFluxModel> findAll() {
        return roomRepository.findAll();
    }

    @Override
    public Mono<Long> count() {
        return roomRepository.count();
    }

    @Override
    public Flux<ServerSentEvent<ChatDTO>> subscribeByRoomId(String roomId) {
        return chatSinks.computeIfAbsent(roomId, i -> {
            Sinks.Many<ServerSentEvent<ChatDTO>> sink = Sinks.many().replay().all(5);
            chatRepository.findByRoomId(roomId)
            .log()
                    .take(5)
                    .flatMap(j -> Flux.just(
                            ServerSentEvent.builder(
                                    ChatDTO.builder()
                                            .id(j.getId())
                                            .roomId(j.getRoomId())
                                            .senderId(j.getSenderId())
                                            .senderName(j.getSenderName())
                                            .message(j.getMessage())
                                            .createdAt(j.getCreatedAt())
                                            .build())
                                    .build()))
                    .subscribe(sink::tryEmitNext);
            return sink;
        })
                .asFlux()
                .doOnCancel(() -> {
                    log.info("Unsubscribed room {}", roomId);
                })
                .doOnError((i) -> {
                    log.error("Error in room {}", roomId, i);
                    chatSinks.get(roomId).tryEmitError(new ChatException(i.getMessage()));
                })
                .doOnComplete(() -> {
                    log.info("Complete room {}", roomId);
                    chatSinks.get(roomId).tryEmitComplete();
                    chatSinks.remove(roomId);
                });
    }

    @Override
    public Mono<Integer> countConnection() {
        return Mono.just(chatSinks.size());
    }
}
