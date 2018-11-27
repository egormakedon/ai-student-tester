package by.makedon.aistudenttester.main.validator;

import by.makedon.aistudenttester.main.service.StudentGroupService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author Yahor Makedon
 */
@Component
public class StudentGroupNumberValidator {
    @Autowired
    private StudentGroupService studentGroupService;

    public void validate(String studentGroupNumber) {
        if (studentGroupNumber == null) {
            throw new IllegalArgumentException("validation.student.group.number.null");
        }

        if (studentGroupNumber.isEmpty()) {
            throw new IllegalArgumentException("validation.student.group.number.empty");
        }

        studentGroupNumber = studentGroupNumber.trim();
        if (!StringUtils.isNumeric(studentGroupNumber)) {
            throw new IllegalArgumentException("validation.student.group.number.not.number");
        }

        if (!studentGroupService.isStudentGroupExists(studentGroupNumber)) {
            throw new IllegalArgumentException("validation.student.group.number.not.exists");
        }
    }
}