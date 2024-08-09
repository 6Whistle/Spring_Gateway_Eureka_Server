package site.toeicdoit.user.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;
import site.toeicdoit.user.domain.dto.ErrorResponseDto;
import java.nio.file.AccessDeniedException;
import java.time.LocalDateTime;

@Slf4j(topic = "GLOBAL_EXCEPTION_HANDLER")
@RestControllerAdvice(basePackageClasses = GlobalExceptionHandler.class)
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

//    public static final String TRACE = "trace";
//
//    @Value("${error.printStackTrace}")
//    private boolean printStackTrace;


    @Override
    protected ResponseEntity<Object> handleExceptionInternal(Exception ex, Object body, HttpHeaders headers, HttpStatusCode statusCode, WebRequest request) {
        return buildErrorResponse(ex, ex.getMessage(), HttpStatus.valueOf(statusCode.value()), request);
    }

    private ResponseEntity<Object> buildErrorResponse(Exception ex, String message, HttpStatus httpStatus, WebRequest request) {
        ErrorResponseDto errorResponseDto = new ErrorResponseDto(httpStatus.value(), message, LocalDateTime.now());

        return ResponseEntity.status(httpStatus).body(errorResponseDto);
    }


    // 403 Access Denied Exception
    @ExceptionHandler(AccessDeniedException.class)
    @ResponseStatus(HttpStatus.FORBIDDEN) // 403 Forbidden
    public ResponseEntity<Object> handleAccessDeniedException(AccessDeniedException exception, WebRequest request) {
        log.error("Access denied", exception);
        return buildErrorResponse(exception, "Access denied", HttpStatus.FORBIDDEN, request);
    }

    // 412 Validate Exception
    @Override
    @ResponseStatus(HttpStatus.UNPROCESSABLE_ENTITY)
    protected ResponseEntity<Object> handleMethodArgumentNotValid(MethodArgumentNotValidException ex, HttpHeaders headers, HttpStatusCode status, WebRequest request) {
        ErrorResponseDto errorResponseDto = new ErrorResponseDto(HttpStatus.UNPROCESSABLE_ENTITY.value(), "Validation error. Check 'errors' field for details.", LocalDateTime.now());
        for (FieldError fieldError : ex.getBindingResult().getFieldErrors()) {
            errorResponseDto.addValidationError(fieldError.getField(), fieldError.getDefaultMessage());
        }
        return ResponseEntity.unprocessableEntity().body(errorResponseDto);
    }

    // 409 AlreadyExistElementException
    @ExceptionHandler(AlreadyExistElementException.class)
    @ResponseStatus(HttpStatus.CONFLICT)
    public ResponseEntity<Object> handleAlreadyExistElementException(AlreadyExistElementException alreadyExistElementException, WebRequest request){
        log.error("Failed to element is already exist", alreadyExistElementException);
        return buildErrorResponse(alreadyExistElementException, alreadyExistElementException.getMessage(), HttpStatus.CONFLICT, request);
    }



    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ResponseEntity<Object> handleAllUncaughtExceptions(Exception ex, WebRequest request) {
        log.error("Internal error occurred", ex);
        return buildErrorResponse(ex, ex.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR, request);
    }

}
