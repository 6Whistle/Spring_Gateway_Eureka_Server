package site.toeicdoit.user.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;
import site.toeicdoit.user.domain.vo.ExceptionStatus;
import site.toeicdoit.user.exception.UserException;

@Slf4j(topic = "GLOBAL_EXCEPTION_HANDLER")
@RestControllerAdvice(basePackages = "site.toeicdoit.user")
public class UserExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(Exception.class)
    public ResponseEntity<Object> handleAllExceptions(Exception ex, WebRequest request) {
        log.error("@ExceptionHandler(Exception.class) 에러 내용 : {} ,{}", ex, request);
        UserException result = UserException.toUserException(ex);
        return ResponseEntity.status(result.getStatus().getHttpStatus()).body(result.getMessage());
    }

}