package site.toeicdoit.tx.service.Impl;


import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.tx.domain.vo.Messenger;
import site.toeicdoit.tx.domain.dto.PaymentDto;
import site.toeicdoit.tx.domain.model.UserModel;
import site.toeicdoit.tx.repository.PaymentRepository;
import site.toeicdoit.tx.repository.UserRepository;
import site.toeicdoit.tx.service.PaymentService;
import site.toeicdoit.tx.repository.SubscribeRepository;


import java.io.IOException;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.List;


@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class PaymentServiceImpl implements PaymentService {

    private final PaymentRepository paymentRepository;
    private final SubscribeRepository subscribeRepository;
    private final UserRepository userRepository;
    private final IamportClient iamportClient;

    @Override
    public Messenger save(PaymentDto dto) {
        log.info(dto.getPaymentUid());
        log.info(dto.getAmount().toString());
        log.info(dto.getProductId().toString());

        paymentRepository.save(dtoToEntity(dto));
         Long paymentId = paymentRepository.findIdByPaymentUid(dto.getPaymentUid());
         log.info(paymentId.toString());

        return Messenger.builder()
                .message("SUCCESS")
                .paymentId(paymentId)
                .build();
    }

    @Override
    public List<PaymentDto> getPaymentByUserId(Long userId) {

        return paymentRepository.getPaymentByUserId(userId).stream().toList();

    }

    @Override
    public Messenger refundPayment(PaymentDto dto) throws IamportResponseException, IOException {
        log.info(dto.getPaymentUid());
        IamportResponse<Payment> response = iamportClient.paymentByImpUid(dto.getPaymentUid());
        //cancelData 생성
        CancelData cancelData = createCancelData(response, Math.toIntExact(dto.getAmount()));
        iamportClient.cancelPaymentByImpUid(cancelData);
        log.info("환불 성공");
        paymentRepository.deleteAllById(Collections.singleton(dto.getId()));
        subscribeRepository.deleteAllById(Collections.singleton(dto.getSubscribeId()));

        UserModel user = userRepository.findById(dto.getUserId()).orElseThrow(() -> new RuntimeException("User not found"));
        userRepository.save(user);
        return Messenger.builder()
                .message("SUCCESS")
                .build();
    }

    private CancelData createCancelData(IamportResponse<Payment> response, int refundAmount) {
        if (refundAmount == 0) { //전액 환불일 경우
            return new CancelData(response.getResponse().getImpUid(), true);
        }
        //부분 환불일 경우 checksum을 입력해 준다.
        return new CancelData(response.getResponse().getImpUid(), true, new BigDecimal(refundAmount));
    }
}



