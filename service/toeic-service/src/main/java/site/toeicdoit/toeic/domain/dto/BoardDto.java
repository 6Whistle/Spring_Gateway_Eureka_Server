package site.toeicdoit.toeic.domain.dto;


import lombok.*;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
@Builder
public class BoardDto {
    private Long id;
    private String title;
    private String content;
    private String type;

    private Long userId;
    private String writer;

    private String createdAt;
    private String updatedAt;
}
