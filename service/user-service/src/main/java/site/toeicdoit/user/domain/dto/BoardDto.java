package site.toeicdoit.user.domain.dto;


import com.fasterxml.jackson.annotation.JsonFormat;
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
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS")
    private String createdAt;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS")
    private String updatedAt;
}
