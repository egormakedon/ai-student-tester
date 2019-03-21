package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.service.MarkCalculationService;
import by.makedon.aistudenttester.service.TestSessionService;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;

/**
 * @author Yahor Makedon
 */
@Controller
public class CompleteTestController {
    private MarkCalculationService markCalculationService;
    private TestSessionService testSessionService;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/completeTest", method = RequestMethod.POST)
    public String completeTest(HttpSession httpSession) {
        TestSession testSession = testSessionService.getTestSessionByID((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));

        markCalculationService.calculateMark(testSession);
        testSession.setFinishedDate(LocalDateTime.now());
        testSessionService.save(testSession);

        httpSession.removeAttribute(BaseConstants.QUESTION_NUMBER);

        httpSession.setAttribute(BaseConstants.IS_TEST_STARTED, "false");

        return "redirect:/result";
    }

    @Autowired
    public void setMarkCalculationService(MarkCalculationService markCalculationService) {
        this.markCalculationService = markCalculationService;
    }

    @Autowired
    public void setTestSessionService(TestSessionService testSessionService) {
        this.testSessionService = testSessionService;
    }
}