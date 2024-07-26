package site.toeicdoit.user.domain.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
@AllArgsConstructor
public enum ErrorCode {
    EMAIL_NOT_FOUND(HttpStatus.NOT_FOUND, "Email not found"),
    INVALID_PERMISSION(HttpStatus.UNAUTHORIZED, "Invalid permission"),
    DUPLICATED_EMAIL(HttpStatus.CONFLICT, "Duplicated email"),
    DATABASE_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "Database error"),;

    private HttpStatus httpStatus;
    private String message;

}
