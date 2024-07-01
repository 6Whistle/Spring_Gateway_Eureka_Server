package site.toeicdoit.tx.domain.vo;

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
    private int status;
    private String accessToken;
    private String refreshToken;
    private Long boardId;
    private Long paymentId;
    private Long subscribeId;
}