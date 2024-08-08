package site.toeicdoit.tx.handler;

import jdk.jshell.spi.ExecutionControl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;
import site.toeicdoit.tx.exception.TxException;
import site.toeicdoit.tx.domain.vo.ExceptionStatus;


@Slf4j(topic = "GLOBAL_EXCEPTION_HANDLER")
@RestControllerAdvice(basePackages = "site.toeicdoit.tx")
public class TxExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(Exception.class)
    public ResponseEntity<Object> handleAllExceptions(Exception ex, WebRequest request) {
        log.error("@ExceptionHandler(Exception.class) 에러 내용 : {} ,{}", ex, request);
        TxException result = TxException.toTxException(ex);
        return ResponseEntity.status(result.getStatus().getHttpStatus()).body(result.getMessage());
    }

}