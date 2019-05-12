package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.util.BaseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * @author Yahor Makedon
 */
@ControllerAdvice
public class ErrorHandlingController {
	private static final Logger logger = LoggerFactory.getLogger(ErrorHandlingController.class);

	@ExceptionHandler(Exception.class)
	public void handle(Exception e) {
		logger.error(e.getMessage(), e);
		throw new BaseException(e.getMessage(), e);
	}
}