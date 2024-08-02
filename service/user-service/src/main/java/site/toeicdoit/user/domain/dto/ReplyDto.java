package site.toeicdoit.user.domain.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReplyDto {
    private Long id;
    private String content;
    private Long userId;
    private String writerName;
    private Long boardId;
}
