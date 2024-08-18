package site.toeicdoit.toeic.domain.dto;

import lombok.*;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.List;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
@Builder
public class ToeicCategoryDto {

    private Long id;
    private String title;
    private String sound;
    private String testType;
    private boolean take;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    private List<ToeicDto> toeicQuestions;
}
