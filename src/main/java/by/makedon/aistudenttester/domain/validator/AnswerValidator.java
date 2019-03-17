package by.makedon.aistudenttester.domain.validator;

import org.springframework.stereotype.Component;

/**
 * @author Yahor Makedon
 */
@Component
public class AnswerValidator extends AbstractValidator {
    public void validate(String answer) {
        if (answer == null) {
            logger.error("Answer can't be null");
            throw new IllegalArgumentException("validation.answer.null");
        }

        if (answer.isEmpty()) {
            logger.error("Answer can't be empty");
            throw new IllegalArgumentException("validation.answer.empty");
        }

        answer = answer.trim();

        switch (answer) {
            case "-":
                return;
            case "1":
                return;
            case "2":
                return;
            case "3":
                return;
            case "4":
                return;
            case "5":
                return;
            default:
                logger.error("Answer has invalid value = " + answer);
                throw new IllegalArgumentException("validation.answer.invalid.value");
        }
    }
}