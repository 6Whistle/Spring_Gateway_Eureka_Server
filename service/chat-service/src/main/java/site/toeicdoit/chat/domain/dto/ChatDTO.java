package site.toeicdoit.chat.domain.dto;

import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * ChatDTO
 * <p>Chat Data Transfer Object</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
@Builder
public class ChatDTO {
    private String id;
    private String roomId;
    private String senderId;
    private String senderName;
    private String message;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS")
    private LocalDateTime createdAt;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS")
    private LocalDateTime updatedAt;
}