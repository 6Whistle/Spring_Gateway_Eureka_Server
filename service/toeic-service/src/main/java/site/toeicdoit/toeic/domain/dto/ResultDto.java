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
    private String scorePart1;
    private String scorePart2;
    private String scorePart3;
    private String scorePart4;
    private String scorePart5;
    private String scorePart6;
    private String scorePart7;

    private String createdAt;
    private String updatedAt;



    private List<ResultDataDto> data;
    private List<?> barData;

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