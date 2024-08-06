package site.toeicdoit.user.domain.dto;


import lombok.*;
import org.springframework.stereotype.Component;
import site.toeicdoit.user.domain.model.mysql.ReplyModel;

import java.time.LocalDateTime;
import java.util.List;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class BoardDto {
    private Long id;
    private String title;
    private String content;
    private String type;
    private String category;
    private Long userId;
    private List<?> replyIds;


    private String writerName;
    private String createdAt;
    private String updatedAt;
}
