package site.toeicdoit.toeic.domain.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class ToeicDto {
    private Long id;
    private Long level;
    private String part;
    private String question;
    private String answer;
    private String image;
    private String description;
    private ToeicCategoryDto toeicCategory;
    private OptionDto option;
}
