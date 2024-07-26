package site.toeicdoit.chat.domain.vo;

import org.springframework.http.HttpStatus;

import lombok.Getter;

/**
 * Exception Status
 * <p>Exception Status Enum</p>
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see HttpStatus
 */
@Getter
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
    INTERNAL_SERVER_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "Internal Server Error"),

    // MONGODB
    MONGODB_FIND_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "MongoDB Find Error"),
    MONGODB_SAVE_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "MongoDB Save Error"),
    MONGODB_UPDATE_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "MongoDB Update Error"),
    MONGODB_DELETE_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "MongoDB Delete Error"),

    // KAFKA
    KAFKA_SEND_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "Kafka Send Error");

    private final HttpStatus status;
    private final String message;

    /**
     * Exception Status Constructor
     * @param status HttpStatus
     * @param message String
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    ExceptionStatus(HttpStatus status, String message) {
        this.status = status;
        this.message = message;
    }
}
