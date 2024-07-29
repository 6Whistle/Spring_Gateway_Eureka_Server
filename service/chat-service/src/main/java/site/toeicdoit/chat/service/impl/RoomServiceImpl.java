package site.toeicdoit.chat.service.impl;

import java.util.List;
import java.util.stream.Stream;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.AccessRoomDTO;
import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.domain.model.RoomFluxModel;
import site.toeicdoit.chat.domain.vo.ExceptionStatus;
import site.toeicdoit.chat.domain.vo.RoomCategory;
import site.toeicdoit.chat.exception.ChatException;
import site.toeicdoit.chat.repository.RoomRepository;
import site.toeicdoit.chat.service.RoomService;

/**
 * Chatting Room Service Implementation
 * <p>채팅방 관련 요청을 처리하는 서비스 구현체</p>
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see RoomService
 */
@Service
@RequiredArgsConstructor
public class RoomServiceImpl implements RoomService {
    private final RoomRepository roomRepository;

    /**
     * Create Chatting Room
     * <p>RoomDTO을 MongoDB에 저장한다.</p>
     * @param dto RoomDTO
     * @return {@link Mono}&lt{@link RoomFluxModel}&gt(created model) or {@link Mono}&lt{@link ChatException}&gt(if error occurs)
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see CommandService#save(DTO)
     */
    @Override
    public Mono<RoomFluxModel> save(RoomDTO dto) {
        return Mono.just(dto)
        .filter(roomDTO -> roomDTO.getTitle() != null && !roomDTO.getTitle().isEmpty())
        .filter(roomDTO -> roomDTO.getAdminIds() != null && !roomDTO.getAdminIds().isEmpty())
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Title or AdminIds is empty")))
        .flatMap(roomDTO -> Mono.just(
            RoomFluxModel.builder()
                .title(roomDTO.getTitle())
                .adminIds(roomDTO.getAdminIds())
                .memberIds(roomDTO.getAdminIds())
                .roomCategories(
                    roomDTO.getRoomCategories() != null 
                    ? roomDTO.getRoomCategories().stream().map(RoomCategory::toRoomCategory).distinct().toList()
                    : List.of(RoomCategory.ETC)
                )
                .build()
            )
        )
        .flatMap(roomRepository::save)
        .onErrorMap(e -> e.getClass().equals(ChatException.class) ? e : new ChatException(ExceptionStatus.MONGODB_SAVE_ERROR, "Failed to save room"))
        ;
    }

    /**
     * Update Chatting Room
     * <p>RoomDTO을 MongoDB에서 찾아 업데이트한다.</p>
     * @param dto RoomDTO
     * @return {@link Mono}&lt{@link RoomFluxModel}&gt(updated model) or {@link Mono}&lt{@link ChatException}&gt(if error occurs)
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see CommandService#update(DTO)
     */
    @Override
    public Mono<RoomFluxModel> update(RoomDTO dto) {
        return Mono.just(dto.getId())
        .filter(i -> i != null && !i.isEmpty())
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Id is empty"))) 
        .flatMap(roomRepository::findById)
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.NOT_FOUND, "Room not found")))
        .onErrorMap(e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_FIND_ERROR, "Failed to find room"))
        .doOnNext(roomModel -> roomModel.setTitle(dto.getTitle() != null ? dto.getTitle() : roomModel.getTitle()))
        .doOnNext(roomModel -> roomModel.setAdminIds(dto.getAdminIds() != null ? dto.getAdminIds() : roomModel.getAdminIds()))
        .doOnNext(roomModel -> roomModel.setRoomCategories(
            dto.getRoomCategories() != null 
            ? dto.getRoomCategories().stream().map(RoomCategory::toRoomCategory).distinct().toList()
            : roomModel.getRoomCategories()
        ))
        .flatMap(roomRepository::save)
        .onErrorMap(e -> e.getClass().equals(ChatException.class) ? e : new ChatException(ExceptionStatus.MONGODB_UPDATE_ERROR, "Failed to update room"))
        ;
    }

    /**
     * Delete Chatting Room
     * <p>MongoDB에서 Room을 ID로 삭제한다.</p>
     * @param id String
     * @return {@link Mono}&lt{@link Boolean}&gt(true if deleted) or {@link Mono}&lt{@link ChatException}&gt(if error occurs)
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see CommandService#delete(String)
     */
    @Override
    public Mono<RoomFluxModel> delete(String id) {
        return Mono.just(id)
        .filter(i -> i != null && !i.isEmpty())
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.INVALID_INPUT, "Id is empty")))
        .flatMap(roomRepository::findById)
        .flatMap(model -> roomRepository.deleteById(model.getId()).thenReturn(model))
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.NOT_FOUND, "Room not found")))
        .onErrorMap(e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_DELETE_ERROR, "Failed to delete room"))
        ;
    }

    /**
     * Find Chatting Room by ID
     * <p>MongoDB에서 Room을 ID로 찾는다.</p>
     * @param id String
     * @return {@link Mono}&lt{@link RoomFluxModel}&gt(found model) or {@link Mono}&lt{@link ChatException}&gt(if error occurs)
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see QueryService#findById(String)
     */
    @Override
    public Mono<RoomFluxModel> findById(String id) {
        return
        Mono.just(id)
        .flatMap(i -> i != null && !i.isEmpty() ? Mono.just(i) : Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Id is empty")))
        .flatMap(roomRepository::findById)
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.NOT_FOUND, "Room not found")))
        .onErrorMap(e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_FIND_ERROR, "Failed to find room"));
    }   

    /**
     * Count Chatting Room
     * <p>MongoDB에서 Room의 수를 센다.</p>
     * @return {@link Mono}&lt{@link Long}&gt(count) or {@link Mono}&lt{@link ChatException}&gt(if error occurs)
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see QueryService#count()
     */
    @Override
    public Mono<Long> count() {
        return roomRepository.count()
        .onErrorMap(e -> new ChatException(ExceptionStatus.MONGODB_FIND_ERROR, "Failed to count rooms"))
        ;
    }

    /**
     * Find Chatting Room by Category
     * <p>MongoDB에서 Room을 필드에 따라 유동적으로 찾는다.</p>
     * @param type String
     * @param value String
     * @param pageable {@link Pageable}
     * @return {@link Flux}&lt{@link RoomFluxModel}&gt(found models) or {@link Flux}&lt{@link ChatException}&gt(if error occurs)
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Override
    public Flux<RoomFluxModel> findBy(String roomId, String field, String value, Pageable pageable) {
        return 
        Mono.just(field)
        .flatMapMany(f -> switch(field) {
            case "all" -> roomRepository.findAllBy(pageable);
            case "title" -> Mono.just(value)
                .filter(i -> i != null && !i.isEmpty())
                .flatMapMany(i -> roomRepository.findFieldEqualsValue(field, value, pageable));
            case "roomCategories" -> Mono.just(value)
                .filter(i -> i != null && !i.isEmpty())
                .flatMapMany(i -> roomRepository.findFieldHasValue(field, value.toUpperCase(), pageable));
            case "adminIds", "memberIds" -> Mono.just(value)
                .filter(i -> i != null && !i.isEmpty())
                .flatMapMany(i -> roomRepository.findFieldHasValue(field, value, pageable));
            default -> Flux.error(new ChatException(ExceptionStatus.INVALID_INPUT, "Invalid field"));
            }
        )
        .onErrorMap(e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_FIND_ERROR, "Failed to find rooms"))
        ;
    }

    /**
     * Enter Chatting Room
     * <p>AccessRoomDTO을 MongoDB에서 찾아 입장한다.</p>
     * @param dto {@link AccessRoomDTO}
     * @return {@link Mono}&lt{@link RoomFluxModel}&gt(entered model) or {@link Mono}&lt{@link ChatException}&gt(if error occurs)
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Override
    public Mono<RoomFluxModel> enter(AccessRoomDTO dto) {
        return Mono.just(dto.getRoomId())
        .filter(i -> i != null && !i.isEmpty())
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Id is empty")))
        .flatMap(i -> roomRepository.findById(i))
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.NOT_FOUND, "Room not found")))
        .doOnNext(roomModel -> roomModel.setMemberIds(Stream.of(roomModel.getMemberIds(), List.of(dto.getUserId())).flatMap(List::stream).distinct().toList()))
        .flatMap(roomRepository::save)
        .onErrorMap(e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_UPDATE_ERROR, "Failed to enter room"))
        ;
    }

    /**
     * Exit Chatting Room
     * <p>AccessRoomDTO을 MongoDB에서 찾아 퇴장한다.</p>
     * @param dto {@link AccessRoomDTO}
     * @return {@link Mono}&lt{@link RoomFluxModel}&gt(exited model) or {@link Mono}&lt{@link ChatException}&gt(if error occurs)
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @Override
    public Mono<RoomFluxModel> exit(AccessRoomDTO dto) {
        return Mono.just(dto.getRoomId())
        .filter(i -> i != null && !i.isEmpty())
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.BAD_REQUEST, "Id is empty")))
        .flatMap(i -> roomRepository.findById(i))
        .switchIfEmpty(Mono.error(new ChatException(ExceptionStatus.NOT_FOUND, "Room not found")))
        .doOnNext(roomModel -> roomModel.setMemberIds(roomModel.getMemberIds().stream().filter(id -> !id.equals(dto.getUserId())).toList()))
        .flatMap(roomRepository::save)
        .onErrorMap(e -> ChatException.toChatException(e, ExceptionStatus.MONGODB_FIND_ERROR, "Failed to find room"))
        ;
    }
}
