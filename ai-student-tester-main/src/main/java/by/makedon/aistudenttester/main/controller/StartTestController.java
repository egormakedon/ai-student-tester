package by.makedon.aistudenttester.main.controller;

import by.makedon.aistudenttester.main.BaseConstants;
import by.makedon.aistudenttester.main.TestSessionGenerator;
import by.makedon.aistudenttester.main.bean.TestSession;
import by.makedon.aistudenttester.main.service.TestSessionService;
import by.makedon.aistudenttester.main.validator.StudentTicketValidator;
import by.makedon.aistudenttester.main.validator.SubjectNameValidator;
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
    @Autowired
    private StudentTicketValidator studentTicketValidator;
    @Autowired
    private SubjectNameValidator subjectNameValidator;
    @Autowired
    private TestSessionGenerator testSessionGenerator;
    @Autowired
    private TestSessionService testSessionService;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/startTest", method = RequestMethod.POST)
    public String startTest(@RequestParam String studentTicket, @RequestParam String subjectName, HttpSession httpSession) {
        studentTicketValidator.validate(studentTicket);
        subjectNameValidator.validate(subjectName);

        TestSession testSession = testSessionGenerator.getTestSession(studentTicket, subjectName);

        httpSession.setAttribute(BaseConstants.TEST_SESSION_ID, testSessionService.save(testSession).getId());
        httpSession.setAttribute(BaseConstants.QUESTION_NUMBER, "1");
        httpSession.setAttribute(BaseConstants.IS_TEST_STARTED, "true");

        return "redirect:/test";
    }
}