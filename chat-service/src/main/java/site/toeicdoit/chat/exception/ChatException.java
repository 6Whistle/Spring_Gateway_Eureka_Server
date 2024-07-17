package site.toeicdoit.chat.exception;

import lombok.Getter;
import site.toeicdoit.chat.domain.vo.ExceptionStatus;

@Getter
public class ChatException extends RuntimeException {
    private final ExceptionStatus status;

    public ChatException(ExceptionStatus status) {
        super(status.getMessage());
        this.status = status;
    }

    public ChatException(ExceptionStatus status, String message) {
        super(message + " : " + status.getMessage());
        this.status = status;
    }
}
