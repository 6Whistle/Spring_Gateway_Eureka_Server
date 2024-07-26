package site.toeicdoit.gateway.exception;

import lombok.Getter;
import site.toeicdoit.gateway.domain.vo.ExceptionStatus;

@Getter
public class GatewayException extends RuntimeException {
    private final ExceptionStatus status;
    
    public GatewayException(ExceptionStatus status) {
        super(status.getMessage());
        this.status = status;
    }

    public GatewayException(ExceptionStatus status, String message) {
        super(status.getMessage() + " : " + message);
        this.status = status;
    }
    
}
