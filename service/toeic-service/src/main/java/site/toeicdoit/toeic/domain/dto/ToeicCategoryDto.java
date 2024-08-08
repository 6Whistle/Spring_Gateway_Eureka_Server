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
public class ToeicCategoryDto {

    private Long id;
    private String title;
    private String sound;
    private String testType;


    private String createdAt;
    private String updatedAt;

    private List<ToeicCategoryDto> toeicQuestions;

}
