package by.makedon.aistudenttester.main.controller;

import by.makedon.aistudenttester.main.TestSessionGenerator;
import by.makedon.aistudenttester.main.bean.TestSession;
import by.makedon.aistudenttester.main.bean.TestSessionRepository;
import by.makedon.aistudenttester.main.validator.StudentTicketValidator;
import by.makedon.aistudenttester.main.validator.SubjectNameValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    private TestSessionRepository testSessionRepository;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/startTest", method = RequestMethod.POST)
    public String startTest(@RequestParam String studentTicket, @RequestParam String subjectName) {
        studentTicketValidator.validate(studentTicket);
        subjectNameValidator.validate(subjectName);

        //TODO add to session

        TestSession testSession = testSessionGenerator.getTestSession(studentTicket, subjectName);
        System.out.println(testSessionRepository.save(testSession).getId());

        return "redirect:/main"; //TODO change url
    }
}