package site.toeicdoit.chat.domain.dto;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Messenger {
    private String message;
    private Boolean state;
    private Long count;
    private Object data;
}
