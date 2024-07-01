package site.toeicdoit.tx.repository.dsl;



import site.toeicdoit.tx.domain.dto.PaymentDto;

import java.util.List;

public interface PaymentDao {
    List<PaymentDto> getPaymentByUserId(Long userId);
}
