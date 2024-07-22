package site.toeicdoit.chat.exception;

import lombok.Getter;
import site.toeicdoit.chat.domain.vo.ExceptionStatus;

/**
 * Chatting Exception
 * <p>채팅 서비스에서 발생하는 예외를 처리하는 클래스</p>
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see ExceptionStatus
 * @see Exception
 */
@Getter
public class ChatException extends RuntimeException {
    private final ExceptionStatus status;

    /**
     * Chatting Exception Constructor
     * @param status ExceptionStatus
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see ExceptionStatus
     */
    public ChatException(ExceptionStatus status) {
        super(status.getMessage());
        this.status = status;
    }

    /**
     * Chatting Exception Constructor
     * @param status ExceptionStatus
     * @param message String
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see ExceptionStatus
     */
    public ChatException(ExceptionStatus status, String message) {
        super(message + " : " + status.getMessage());
        this.status = status;
    }

    /**
     * Mapping {@link Throwable} to {@link ChatException}
     * @param e Throwable
     * @return {@link ChatException}
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    public static ChatException toChatException(Throwable e) {
        return toChatException(e, ExceptionStatus.INTERNAL_SERVER_ERROR, "Internal Server Error");
    }

    /**
     * Mapping {@link Throwable} to {@link ChatException}
     * @param e Throwable
     * @param status ExceptionStatus
     * @param message String
     * @return {@link ChatException}
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    public static ChatException toChatException(Throwable e, ExceptionStatus status, String message) {
        return e.getClass().equals(ChatException.class) ? (ChatException) e : new ChatException(status, message);
    }
}
