package site.toeicdoit.chat.service;

import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.AccessRoomDTO;
import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.domain.model.RoomFluxModel;

/**
 * Chatting Room Service
 * <p>채팅방 관련 요청을 처리하는 서비스</p>
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see CommandService
 * @see QueryService
 * @see RoomFluxModel
 * @see RoomDTO
 */
public interface RoomService extends CommandService<RoomFluxModel, RoomDTO>, QueryService<RoomFluxModel, RoomDTO>{
    /**
     * Mapping {@link RoomFluxModel} to {@link RoomDTO}
     * @param model {@link RoomFluxModel}
     * @return {@link RoomDTO}
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    default RoomDTO toDTO(RoomFluxModel model) {
        return RoomDTO.builder()
        .id(model.getId())
        .title(model.getTitle())
        .roomCategories(model.getRoomCategories().stream().map(c -> c.name().toLowerCase()).toList())
        .adminIds(model.getAdminIds())
        .memberIds(model.getMemberIds())
        .createdAt(model.getCreatedAt())
        .updatedAt(model.getUpdatedAt())
        .build();
    }

    /**
     * Enter Chatting Room
     * <p>채팅방에 입장한다.</p>
     * @param dto {@link AccessRoomDTO}
     * @return {@link Mono}&lt{@link RoomFluxModel}&gt
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    Mono<RoomFluxModel> enter(AccessRoomDTO dto);

    /**
     * Exit Chatting Room
     * <p>채팅방에서 퇴장한다.</p>
     * @param dto {@link AccessRoomDTO}
     * @return {@link Mono}&lt{@link RoomFluxModel}&gt
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    Mono<RoomFluxModel> exit(AccessRoomDTO dto);
}
