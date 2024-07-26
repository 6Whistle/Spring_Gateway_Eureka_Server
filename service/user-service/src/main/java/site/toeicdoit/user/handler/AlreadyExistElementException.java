package site.toeicdoit.user.handler;

public class AlreadyExistElementException extends RuntimeException{
    public AlreadyExistElementException(String message) {
        super(message);
    }
}