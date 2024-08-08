package site.toeicdoit.toeic.domain.vo;

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
    private String message;
    private Boolean state;
    private Long count;
    private Object data;
}
