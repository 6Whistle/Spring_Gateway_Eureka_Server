package site.toeicdoit.toeic.domain.dto;

import lombok.*;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
@Builder
public class ResultDto {

    private Long id;
    private Long userId;
    private Long toeicCategoryId;
    private Long toeicId;
    private String userAnswer;
    private String isCorrect;
    private String timeElapsed;
    private String score;
    private String lcScore;
    private String rcScore;

    private String createdAt;
    private String updatedAt;

    private List<ResultDto> resultDtoList;
}