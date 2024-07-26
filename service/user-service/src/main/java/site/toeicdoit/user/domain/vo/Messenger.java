package site.toeicdoit.user.domain.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Messenger {
    // String 메세지 전달
    private String message;
    // Boolean 값 전달
    private Boolean state;
    // Integer / Long 값 전달
    private Long count;
    // Single / List of DTO 전달
    private Object data;
}
