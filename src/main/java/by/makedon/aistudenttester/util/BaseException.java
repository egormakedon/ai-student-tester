package by.makedon.aistudenttester.util;

/**
 * @author Yahor Makedon
 */
public class BaseException extends RuntimeException {
	public BaseException() {
	}

	public BaseException(String message) {
		super(message);
	}

	public BaseException(String message, Throwable cause) {
		super(message, cause);
	}

	public BaseException(Throwable cause) {
		super(cause);
	}
}