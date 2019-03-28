package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.service.TestSessionService;
import by.makedon.aistudenttester.util.BaseConstants;
import org.apache.commons.lang3.time.DurationFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.time.Duration;
import java.time.format.DateTimeFormatter;

/**
 * @author Yahor Makedon
 */
@Controller
public class ResultController {
    private TestSessionService testSessionService;

    @GetMapping("/result")
    public String getResult(Model model, HttpSession httpSession) {
        if (httpSession.getAttribute(BaseConstants.TEST_SESSION_ID) != null) {
            TestSession testSession = testSessionService.getTestSessionByID((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));

            Duration duration = Duration.between(testSession.getCreatedDate(), testSession.getFinishedDate());
            model.addAttribute("duration", DurationFormatUtils.formatDuration(duration.toMillis(), "HH:mm:ss"));

            model.addAttribute("testSessionID", testSession.getTestSessionID());
            model.addAttribute("createdDate", testSession.getCreatedDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd, HH:mm:ss")));
            model.addAttribute("finishedDate", testSession.getFinishedDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd, HH:mm:ss")));
            model.addAttribute("studentGroupNumber", testSession.getStudent().getStudentGroup().getStudentGroupNumber());
            model.addAttribute("studentTicket", testSession.getStudent().getStudentTicket());
            model.addAttribute("firstName", testSession.getStudent().getFirstName());
            model.addAttribute("middleName", testSession.getStudent().getMiddleName());
            model.addAttribute("lastName", testSession.getStudent().getLastName());
            model.addAttribute("mark", testSession.getMark());
        }

        return "result";
    }

//  Getters/Setters

    @Autowired
    public void setTestSessionService(TestSessionService testSessionService) {
        this.testSessionService = testSessionService;
    }
}