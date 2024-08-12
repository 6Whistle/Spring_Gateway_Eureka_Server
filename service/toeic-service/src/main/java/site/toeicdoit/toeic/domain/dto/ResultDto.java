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

    private List<ResultDataDto> data;

    @Builder
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class ResultDataDto {
        private Long toeicId;
        private String answer;
        private Integer part; // part 필드 추가

        @Override
        public String toString() {
            return String.format("(toeicId=%d, answer=%s, part=%d)", toeicId, answer, part);
        }
    }

}