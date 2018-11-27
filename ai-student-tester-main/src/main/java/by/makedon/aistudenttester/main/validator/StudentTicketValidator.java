package by.makedon.aistudenttester.main.validator;

import by.makedon.aistudenttester.main.service.StudentService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author Yahor Makedon
 */
@Component
public class StudentTicketValidator {
    @Autowired
    private StudentService studentService;

    public void validate(String studentTicket) {
        if (studentTicket == null) {
            throw new IllegalArgumentException("validation.student.ticket.null");
        }

        if (studentTicket.isEmpty()) {
            throw new IllegalArgumentException("validation.student.ticket.empty");
        }

        studentTicket = studentTicket.trim();
        if (!StringUtils.isNumeric(studentTicket)) {
            throw new IllegalArgumentException("validation.student.ticket.not.number");
        }

        if (!studentService.isStudentExists(studentTicket)) {
            throw new IllegalArgumentException("validation.student.ticket.not.exists");
        }
    }
}