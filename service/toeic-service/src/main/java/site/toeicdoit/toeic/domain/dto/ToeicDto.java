package site.toeicdoit.toeic.domain.dto;

import lombok.*;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
@Builder
public class ToeicDto {

    private Long id;
    private Long level;
    private String part;
    private String question;
    private String answer;
    private String description;
    private String image;

    private String createdAt;
    private String updatedAt;

    private long toeicCategoryId;

}