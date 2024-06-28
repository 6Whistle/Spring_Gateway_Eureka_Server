package site.toeicdoit.chat.domain.dto;

import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

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
    private LocalDateTime createdAt;
}
