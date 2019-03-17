package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.domain.validator.StudentTicketValidator;
import by.makedon.aistudenttester.domain.validator.SubjectNameValidator;
import by.makedon.aistudenttester.generator.TestSessionGenerator;
import by.makedon.aistudenttester.service.TestSessionService;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @author Yahor Makedon
 */
@Controller
public class StartTestController {
    private StudentTicketValidator studentTicketValidator;
    private SubjectNameValidator subjectNameValidator;
    private TestSessionGenerator testSessionGenerator;
    private TestSessionService testSessionService;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/startTest", method = RequestMethod.POST)
    public String startTest(@RequestParam String studentTicket, @RequestParam String subjectName, HttpSession httpSession) {
        studentTicketValidator.validate(studentTicket);
        subjectNameValidator.validate(subjectName);

        TestSession testSession = testSessionGenerator.getTestSession(Long.valueOf(studentTicket), subjectName);

        httpSession.setAttribute(BaseConstants.TEST_SESSION_ID, testSessionService.save(testSession).getID());
        httpSession.setAttribute(BaseConstants.QUESTION_NUMBER, "1");
        httpSession.setAttribute(BaseConstants.IS_TEST_STARTED, "true");

        return "redirect:/test";
    }

    @Autowired
    public void setStudentTicketValidator(StudentTicketValidator studentTicketValidator) {
        this.studentTicketValidator = studentTicketValidator;
    }

    @Autowired
    public void setSubjectNameValidator(SubjectNameValidator subjectNameValidator) {
        this.subjectNameValidator = subjectNameValidator;
    }

    @Autowired
    public void setTestSessionGenerator(TestSessionGenerator testSessionGenerator) {
        this.testSessionGenerator = testSessionGenerator;
    }

    @Autowired
    public void setTestSessionService(TestSessionService testSessionService) {
        this.testSessionService = testSessionService;
    }
}