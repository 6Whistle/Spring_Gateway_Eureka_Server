package site.toeicdoit.tx.exception;

import lombok.Getter;
import site.toeicdoit.tx.domain.vo.ExceptionStatus;

@Getter
public class TxException extends RuntimeException {
    private final ExceptionStatus status;

    public TxException(ExceptionStatus status) {
        super(status.getMessage());
        this.status = status;
    }

    public TxException(ExceptionStatus status, String message) {
        super(message + " : " + status.getMessage());
        this.status = status;
    }

    public static TxException toTxException(Throwable e) {
        return toTxException(e, ExceptionStatus.INTERNAL_SERVER_ERROR, "Global Handler Executed");
    }

    public static TxException toTxException(Throwable e, ExceptionStatus status, String message) {
        return e.getClass().equals(TxException.class) ? (TxException) e : new TxException(status, message);
    }
}
