package site.toeicdoit.user.domain.vo;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;

@Getter
@RequiredArgsConstructor
public enum ExceptionStatus {

    // BAD_REQUEST
    BAD_REQUEST(HttpStatus.BAD_REQUEST, "Bad Request"),
    INVALID_INPUT(HttpStatus.BAD_REQUEST, "Invalid Input"),

    // UNAUTHORIZED
    UNAUTHORIZED(HttpStatus.UNAUTHORIZED, "Unauthorized"),

    // FORBIDDEN
    FORBIDDEN(HttpStatus.FORBIDDEN, "Forbidden"),

    // NOT_FOUND
    NOT_FOUND(HttpStatus.NOT_FOUND, "Not Found"),

    // INTERNAL_SERVER_ERROR
    INTERNAL_SERVER_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "Internal Server Error")
    ;

    private final HttpStatus httpStatus;
    private final String message;
}
