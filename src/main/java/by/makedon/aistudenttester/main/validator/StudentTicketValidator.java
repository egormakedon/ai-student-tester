package by.makedon.aistudenttester.main.validator;

import by.makedon.aistudenttester.main.service.StudentService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author Yahor Makedon
 */
@Component
public class StudentTicketValidator extends AbstractValidator {
    @Autowired
    private StudentService studentService;

    public void validate(String studentTicket) {
        if (studentTicket == null) {
            logger.error("Student ticket can't be null");
            throw new IllegalArgumentException("validation.student.ticket.null");
        }

        if (studentTicket.isEmpty()) {
            logger.error("Student ticket can't be empty");
            throw new IllegalArgumentException("validation.student.ticket.empty");
        }

        studentTicket = studentTicket.trim();
        if (!StringUtils.isNumeric(studentTicket)) {
            logger.error("Student ticket should be a number");
            throw new IllegalArgumentException("validation.student.ticket.not.number");
        }

        if (!studentService.isStudentExists(studentTicket)) {
            logger.error("Student ticket doesn't exist");
            throw new IllegalArgumentException("validation.student.ticket.not.exists");
        }
    }
}