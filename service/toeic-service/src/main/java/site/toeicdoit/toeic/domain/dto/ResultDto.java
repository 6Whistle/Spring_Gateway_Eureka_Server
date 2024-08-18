package site.toeicdoit.toeic.domain.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
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
    private boolean take;

    private String rcAllScore;
    private String lcAllScore;

    @JsonFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
    private LocalDateTime createdAt;

    @JsonFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
    private LocalDateTime updatedAt;

    private List<ResultDataDto> data;
    private List<?> barData;

    private RecentResultsDto recentResults;

    @Builder
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class ResultDataDto {
        private Long toeicId;
        private String answer;
        private Integer part;

        @Override
        public String toString() {
            return String.format("(toeicId=%d, answer=%s, part=%d)", toeicId, answer, part);
        }
    }

    @Builder
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class RecentResultsDto {
        private List<Integer> exam;
        private List<Integer> level;
        private List<Integer> part;
        private List<Integer> test;
    }
}
