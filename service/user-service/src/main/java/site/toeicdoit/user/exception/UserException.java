package site.toeicdoit.user.exception;

import lombok.Getter;
import site.toeicdoit.user.domain.vo.ExceptionStatus;

@Getter
public class UserException extends RuntimeException {
    private final ExceptionStatus status;

    public UserException(ExceptionStatus status) {
        super(status.getMessage());
        this.status = status;
    }

    public UserException(ExceptionStatus status, String message) {
        super(message + " : " + status.getMessage());
        this.status = status;
    }

    public static UserException toUserException(Throwable e) {
        return toUserException(e, ExceptionStatus.INTERNAL_SERVER_ERROR, "Global Handler Executed");
    }

    public static UserException toUserException(Throwable e, ExceptionStatus status, String message) {
        return e.getClass().equals(UserException.class) ? (UserException) e : new UserException(status, message);
    }
}
