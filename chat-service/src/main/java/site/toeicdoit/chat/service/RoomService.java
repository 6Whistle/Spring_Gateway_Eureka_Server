package site.toeicdoit.chat.service;

import org.springframework.data.domain.Pageable;

import reactor.core.publisher.Flux;
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
     * Find Chatting Room by type and value
     * <p>type에 따라 value를 검색하여 채팅방을 반환한다.</p>
     * @param type String
     * @param value String
     * @param pageable {@link Pageable}
     * @return {@link Flux}&lt{@link RoomFluxModel}&gt
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    Flux<RoomFluxModel> findBy(String type, String value, Pageable pageable);
}
