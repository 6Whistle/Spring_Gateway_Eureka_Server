package site.toeicdoit.tx.controller;


import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.tx.domain.vo.Messenger;
import site.toeicdoit.tx.domain.dto.PaymentDto;
import site.toeicdoit.tx.service.Impl.PaymentServiceImpl;


import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@ApiResponses(value = {
        @ApiResponse(responseCode = "400", description = "Invalid ID supplied"),
        @ApiResponse(responseCode = "404", description = "Customer not found")})
@Slf4j
@CrossOrigin(origins = "*")
@RestController
@RequestMapping(path = "/api/payment")
@RequiredArgsConstructor
public class PaymentController {
    private final PaymentServiceImpl paymentService;

    private final IamportClient iamportClient;



    @PostMapping("/verifyIamport/{imp_uid}")
    public ResponseEntity<?> paymentByImpUid(@PathVariable("imp_uid") String imp_uid) throws IamportResponseException, IOException {
        log.info("imp_uid={}", imp_uid);
        IamportResponse<Payment> response = iamportClient.paymentByImpUid(imp_uid);
        return ResponseEntity.ok(response);
    }
    @PostMapping("/save")
    public ResponseEntity<Messenger> save(@RequestBody PaymentDto dto) throws SQLException {
        log.info("입력받은 정보: {}",dto);
        return ResponseEntity.ok(paymentService.save(dto));
    }
    @GetMapping("/find")
    public ResponseEntity<List<PaymentDto>> getPaymentByUserId(@RequestParam ("id") Long userId) throws SQLException {
        return ResponseEntity.ok(paymentService.getPaymentByUserId(userId));
    }
    @PostMapping("/refund")
    public ResponseEntity<Messenger> refundPayment(@RequestBody PaymentDto dto) throws SQLException, IamportResponseException, IOException {
        log.info("입력받은 정보: {}",dto);
        return ResponseEntity.ok(paymentService.refundPayment(dto));
    }

}

