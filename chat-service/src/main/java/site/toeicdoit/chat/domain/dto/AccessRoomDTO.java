package site.toeicdoit.chat.domain.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * AccessRoomDTO
 * <p>채팅방 입장 DTO</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AccessRoomDTO {
    private String roomId;
    private String userId;
}
