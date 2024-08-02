package site.toeicdoit.user.domain.dto;


import lombok.*;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class ReplyDto {
    private Long id;
    private String content;
    private String writer;
}
