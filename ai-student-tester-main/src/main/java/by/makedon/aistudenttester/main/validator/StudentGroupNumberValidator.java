package by.makedon.aistudenttester.main.validator;

import by.makedon.aistudenttester.main.service.StudentGroupService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author Yahor Makedon
 */
@Component
public class StudentGroupNumberValidator extends AbstractValidator {
    @Autowired
    private StudentGroupService studentGroupService;

    public void validate(String studentGroupNumber) {
        if (studentGroupNumber == null) {
            logger.error("Student group number can't be null");
            throw new IllegalArgumentException("validation.student.group.number.null");
        }

        if (studentGroupNumber.isEmpty()) {
            logger.error("Student group number can't be empty");
            throw new IllegalArgumentException("validation.student.group.number.empty");
        }

        studentGroupNumber = studentGroupNumber.trim();
        if (!StringUtils.isNumeric(studentGroupNumber)) {
            logger.error("Student group number should be a number");
            throw new IllegalArgumentException("validation.student.group.number.not.number");
        }

        if (!studentGroupService.isStudentGroupExists(studentGroupNumber)) {
            logger.error("Student group number doesn't exist");
            throw new IllegalArgumentException("validation.student.group.number.not.exists");
        }
    }
}