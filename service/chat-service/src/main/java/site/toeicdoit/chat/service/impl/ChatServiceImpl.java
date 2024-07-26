package site.toeicdoit.chat.service.impl;

import org.springframework.http.codec.ServerSentEvent;
import org.springframework.kafka.core.reactive.ReactiveKafkaProducerTemplate;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.ChatDTO;
import site.toeicdoit.chat.domain.model.ChatFluxModel;
import site.toeicdoit.chat.domain.vo.ExceptionStatus;
import site.toeicdoit.chat.exception.ChatException;
import site.toeicdoit.chat.provider.KafkaReceiverProvider;
import site.toeicdoit.chat.repository.ChatRepository;
import site.toeicdoit.chat.repository.RoomRepository;
import site.toeicdoit.chat.service.ChatService;

@Slf4j
@Service
@RequiredArgsConstructor
public class ChatServiceImpl implements ChatService {
    private final ChatRepository chatRepository;
    private final RoomRepository roomRepository;
    private final KafkaReceiverProvider kafkaReceiverProvider;
    private final ReactiveKafkaProducerTemplate<String, ChatFluxModel> reactiveKafkaProducerTemplate;

    @Override
    public Flux<ServerSentEvent<ChatDTO>> recieve(String roomId) {
        return kafkaReceiverProvider.createKafkaReceiver(roomId)
        .receiveAutoAck()
        .concatMap(r -> r)
        .doOnNext(i -> log.info("Received key={}, value={}, topic={}, offset={}", i.key(), i.value(), i.topic(), i.offset()))
        .flatMap(record -> 
            Mono.just(
                ChatDTO.builder()
                .roomId(record.value().getRoomId())
                .message(record.value().getMessage())
                .senderId(record.value().getSenderId())
                .senderName(record.value().getSenderName())
                .createdAt(record.value().getCreatedAt())
                .updatedAt(record.value().getUpdatedAt())
                .build()
            )
        )
        .flatMap(dto -> Mono.just(ServerSentEvent.builder(dto).build()));
    }

    @Override
    public Mono<ChatFluxModel> save(ChatDTO dto) {
        return Mono.just(dto)
        .filterWhen(chatDTO -> roomRepository.existsById(chatDTO.getRoomId()))
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.INVALID_INPUT, "Room not found")))
        .flatMap(chatDTO -> 
            chatDTO.getId() != null
            ? Mono.error(new ChatException(ExceptionStatus.INVALID_INPUT, "Id must be null"))
            : chatDTO.getRoomId() == null || chatDTO.getSenderId() == null
            ? Mono.error(new ChatException(ExceptionStatus.INVALID_INPUT, "RoomId and SenderId must not be null"))
            : Mono.just(
                ChatFluxModel.builder()
                .roomId(chatDTO.getRoomId())
                .message(chatDTO.getMessage())
                .senderId(chatDTO.getSenderId())
                .senderName(chatDTO.getSenderName())
                .build()
            )
        )
        .flatMap(entity -> chatRepository.save(entity))
        .flatMap(entity -> 
            reactiveKafkaProducerTemplate.send(entity.getRoomId(), entity)
            .flatMap(kafkaResult -> 
                kafkaResult.exception() == null 
                ? Mono.just(entity) 
                : Mono.error(new ChatException(ExceptionStatus.KAFKA_SEND_ERROR, kafkaResult.exception().getMessage()))
            )
        )
        ;
    }

    @Override
    public Mono<ChatFluxModel> update(ChatDTO dto) {
        return Mono.just(dto)
        .flatMap(chatDTO -> Mono.just(chatDTO))
        .flatMap(chatDTO -> chatRepository.findById(chatDTO.getId()))
        .onErrorMap(IllegalArgumentException.class, e -> new ChatException(ExceptionStatus.INVALID_INPUT, "Id must not be null"))
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Chat not found")))
        .doOnNext(entity -> entity.setMessage(dto.getMessage()))
        .flatMap(entity -> chatRepository.save(entity))
        ;
    }

    @Override
    public Mono<Boolean> delete(String id) {
        return chatRepository.existsById(id)
        .filter(i -> i)
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Chat not found")))
        .flatMap(i -> chatRepository.deleteById(id).thenReturn(Boolean.TRUE))
        ;
    }

    @Override
    public Mono<ChatFluxModel> findById(String id) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'findById'");
    }

    @Override
    public Flux<ChatFluxModel> findAll() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'findAll'");
    }

    @Override
    public Mono<Long> count() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'count'");
    }
}
