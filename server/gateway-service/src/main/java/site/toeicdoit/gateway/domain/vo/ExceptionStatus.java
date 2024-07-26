package site.toeicdoit.gateway.domain.vo;

import org.springframework.http.HttpStatus;

import lombok.Getter;

@Getter
public enum ExceptionStatus {
    BAD_REQUEST(HttpStatus.BAD_REQUEST, "Bad Request"),
    INVALID_INPUT(HttpStatus.BAD_REQUEST, "Invalid Input"),

    UNAUTHORIZED(HttpStatus.UNAUTHORIZED, "Unauthorized"),
    NO_PERMISSION(HttpStatus.FORBIDDEN, "No Permission"),

    NOT_FOUND(HttpStatus.NOT_FOUND, "Not Found"),
    
    INTERNAL_SERVER_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "Internal Server Error"),

    MONGODB_FIND_ERROR(HttpStatus.BAD_REQUEST, "MongoDB Find Error"),
    MONGODB_SAVE_ERROR(HttpStatus.BAD_REQUEST, "MongoDB Save Error"),
    
    KAFKA_SEND_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "Kafka Send Error");

    private final HttpStatus status;
    private final String message;

    ExceptionStatus(HttpStatus status, String message) {
        this.status = status;
        this.message = message;
    }
}
