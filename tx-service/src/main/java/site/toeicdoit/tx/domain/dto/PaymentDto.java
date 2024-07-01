package site.toeicdoit.tx.domain.dto;


import com.querydsl.core.annotations.QueryProjection;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Component;
import site.toeicdoit.tx.enums.PaymentStatus;


import java.time.LocalDateTime;

@Component
@NoArgsConstructor
@Data
@Builder
@Log4j2
public class PaymentDto {
    private Long id; // 결제 번호
    private Integer amount; // 결제 금액
    private PaymentStatus status; // 결제 상태
    private String paymentUid; // 결제 고유 번호
    private Long userId;
    private Long productId;
    private Long subscribeId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;



    @QueryProjection
    public PaymentDto(Long id, Integer amount, PaymentStatus status, String paymentUid, Long userId, Long productId, Long subscribeId, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.amount = amount;
        this.status = status;
        this.paymentUid = paymentUid;
        this.userId = userId;
        this.productId = productId;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.subscribeId = subscribeId;
    }
}



