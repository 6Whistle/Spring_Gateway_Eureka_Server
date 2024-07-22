package site.toeicdoit.chat.domain.dto;

import java.util.List;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Room Data Transfer Object
 * <p>채팅방 정보를 전달하는 DTO</p>
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
@Component
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RoomDTO {
    private String id;
    private String title;
    private List<String> roomCategroies;
    private List<String> adminIds;
    private List<String> memberIds;
}
