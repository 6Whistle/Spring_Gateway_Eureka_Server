package site.toeicdoit.chat.service.impl;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.data.domain.Pageable;
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

/**
 * Chat Service Implementation
 * <p>Chat Service Implementation</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see ChatService
 * @see ChatRepository
 * @see RoomRepository
 * @see KafkaReceiverProvider
 * @see ReactiveKafkaProducerTemplate
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class ChatServiceImpl implements ChatService {
    private final ChatRepository chatRepository;
    private final RoomRepository roomRepository;
    private final KafkaReceiverProvider kafkaReceiverProvider;
    private final ReactiveKafkaProducerTemplate<String, ChatFluxModel> reactiveKafkaProducerTemplate;

    /**
     * Recieve Chat
     * <p>채팅을 받는다.</p>
     * @param roomId String
     * @return Flux&ltServerSentEvent&ltChatDTO&gt&gt(if success) or Mono.error(if fail)
     * @since 2024-07-23
     * @version 1.0
     */
    @Override
    public Flux<ServerSentEvent<ChatDTO>> recieve(String roomId) {
        return kafkaReceiverProvider.createKafkaReceiver(roomId)
        .receiveAutoAck()
        .concatMap(r -> r)
        .doOnNext(i -> log.info("Received key={}, value={}, topic={}, offset={}", i.key(), i.value(), i.topic(), i.offset()))
        .flatMap(record -> Mono.just(this.toDTO(record.value())))
        .mergeWith(Flux.interval(java.time.Duration.ofSeconds(30)).map(i -> ChatDTO.builder().roomId(roomId).id("0").build()))
        .flatMap(dto -> Mono.just(ServerSentEvent.builder(dto).build()))
        .onErrorMap(Exception.class, e -> ChatException.toChatException(e, ExceptionStatus.KAFKA_RECEIVE_ERROR, "Kafka receive error"))
        ;
    }

    /**
     * Save Chat
     * <p>채팅을 MongoDB에 저장하고 Kafka로 전송한다.</p>
     * @param dto {@link ChatDTO}
     * @return Mono&ltChatFluxModel&gt(if success) or Mono.error(if fail)
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
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
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Chat save error")))
        .onErrorMap(Exception.class, e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_SAVE_ERROR, "MongoDB save error"))
        .flatMap(entity -> 
            reactiveKafkaProducerTemplate.send(entity.getRoomId(), entity)
            .flatMap(kafkaResult -> 
                kafkaResult.exception() == null 
                ? Mono.just(entity) 
                : Mono.error(new ChatException(ExceptionStatus.KAFKA_SEND_ERROR, kafkaResult.exception().getMessage()))
            )
        )
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.KAFKA_SEND_ERROR, "Kafka send error")))
        .onErrorMap(Exception.class, e -> ChatException.toChatException(e, ExceptionStatus.KAFKA_SEND_ERROR, "Kafka send error"))
        ;
    }

    /**
     * Update Chat
     * <p>채팅을 업데이트한다.</p>
     * @param dto {@link ChatDTO}
     * @return Mono&ltChatFluxModel&gt(if success) or Mono.error(if fail)
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Override
    public Mono<ChatFluxModel> update(ChatDTO dto) {
        return Mono.just(dto)
        .filter(chatDTO -> chatDTO.getId() != null)
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.INVALID_INPUT, "Id must not be null")))
        .flatMap(chatDTO -> chatRepository.findById(chatDTO.getId()))
        .doOnNext(entity -> entity.setMessage(dto.getMessage()))
        .flatMap(entity -> chatRepository.save(entity))
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Chat not found")))
        .onErrorMap(Exception.class, e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_UPDATE_ERROR, "MongoDB update error"))
        ;
    }

    /**
     * Delete Chat
     * <p>채팅을 삭제한다.</p>
     * @param id String
     * @return Mono&ltBoolean&gt(if success) or Mono.error(if fail)
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Override
    public Mono<ChatFluxModel> delete(String id) {
        return Mono.just(id)
        .filter(i -> i != null && !i.isEmpty())
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.INVALID_INPUT, "Id must not be null")))
        .flatMap(chatRepository::findById)
        .flatMap(model -> chatRepository.deleteById(model.getId()).thenReturn(model))
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.NOT_FOUND, "Chat not found")))
        .onErrorMap(Exception.class, e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_DELETE_ERROR, "MongoDB delete error"))
        ;
    }

    /**
     * Find Chat by Id
     * <p>Id로 채팅을 찾는다.</p>
     * @param id String
     * @return Mono&ltChatFluxModel&gt(if success) or Mono.error(if fail)
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Override
    public Mono<ChatFluxModel> findById(String id) {
        return Mono.just(id)
        .filter(i -> i != null)
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.INVALID_INPUT, "Id must not be null")))
        .flatMap(chatRepository::findById)
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.NOT_FOUND, "Chat not found")))
        .onErrorMap(Exception.class, e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_FIND_ERROR, "MongoDB find error"))
        ;
    }

    /**
     * Count Chat
     * <p>채팅 수를 센다.</p>
     * @return Mono&ltLong&gt(if success) or Mono.error(if fail)
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Override
    public Mono<Long> count() {
        return chatRepository.count()
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Chat count error")))
        .onErrorMap(Exception.class, e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_FIND_ERROR, "MongoDB find error"))
        ;
    }

    /**
     * Find Chat by Field and Value
     * <p>MongoDB에서 room ID 중 특정 필드의 값이 일치하는 채팅을 찾는다.</p>
     * @param roomId String
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Flux&ltChatFluxModel&gt(if success) or Mono.error(if fail)
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Override
    public Flux<ChatFluxModel> findBy(String roomId, String field, String value, Pageable pageable) {
        return 
        Mono.just(field)
        .flatMapMany(f -> 
            switch (field) {
                case "all" -> chatRepository.findAllBy(pageable);
                case "roomId" -> Mono.just(roomId)
                    .filter(i -> i != null && !i.isEmpty())
                    .flatMapMany(i -> chatRepository.findByRoomId(i, pageable));
                case "senderId", "senderName", "message" -> Mono.just(roomId)
                    .filter(i -> i != null && !i.isEmpty())
                    .filter(i -> value != null && !value.isEmpty())
                    .flatMapMany(i -> chatRepository.findByRoomIdAndFieldEqualsValue(roomId, field, value, pageable));
                case "gt,createdAt", "gt,updatedAt", "lt,createdAt", "lt,updatedAt" -> Mono.just(roomId)
                    .filter(i -> i != null && !i.isEmpty())
                    .filter(i -> value != null && !value.isEmpty())
                    .flatMap(i -> Mono.just(LocalDateTime.parse(value, DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSS"))))
                    .flatMapMany(i -> field.startsWith("gt,")
                        ? chatRepository.findByRoomIdAndFieldGreaterThanValue(roomId, field.replace("gt,", ""), i, pageable)
                        : chatRepository.findByRoomIdAndFieldLessThanValue(roomId, field.replace("lt,", ""), i, pageable)
                    );
                default -> Flux.error(new ChatException(ExceptionStatus.INVALID_INPUT, "Invalid field"));
            }
        )
        .onErrorMap(Exception.class, e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_FIND_ERROR, "MongoDB find error"))
        ;
    }
}
