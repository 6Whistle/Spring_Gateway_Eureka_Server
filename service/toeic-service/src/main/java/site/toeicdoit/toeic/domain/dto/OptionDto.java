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
public class OptionDto {

    private Long id;
    private String choice1;
    private String choice2;
    private String choice3;
    private String choice4;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

}