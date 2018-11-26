package by.makedon.aistudenttester.main.validator;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

/**
 * @author Yahor Makedon
 */
@Component
public class StudentGroupNumberValidator {
    public void validate(String studentGroupNumber) {
        if (studentGroupNumber == null) {
            throw new IllegalArgumentException("validation.student.group.number.null");
        }

        if (studentGroupNumber.isEmpty()) {
            throw new IllegalArgumentException("validation.student.group.number.empty");
        }

        if (!StringUtils.isNumeric(studentGroupNumber.trim())) {
            throw new IllegalArgumentException("validation.student.group.number.not.number");
        }
    }
}