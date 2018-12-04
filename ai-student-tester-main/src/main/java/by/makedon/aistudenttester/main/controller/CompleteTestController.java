package by.makedon.aistudenttester.main.controller;

import by.makedon.aistudenttester.main.BaseConstants;
import by.makedon.aistudenttester.main.bean.TestSession;
import by.makedon.aistudenttester.main.service.AbstractService;
import by.makedon.aistudenttester.main.service.MarkCalculationService;
import by.makedon.aistudenttester.main.service.TestSessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * @author Yahor Makedon
 */
@Controller
public class CompleteTestController extends AbstractService {
    @Autowired
    private MarkCalculationService markCalculationService;
    @Autowired
    private TestSessionService testSessionService;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/completeTest", method = RequestMethod.POST)
    public String completeTest(HttpSession httpSession) {
        TestSession testSession = testSessionService.getTestSessionById((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));

        markCalculationService.calculateMark(testSession);
        testSessionService.save(testSession);

        httpSession.removeAttribute(BaseConstants.QUESTION_NUMBER);

        httpSession.setAttribute(BaseConstants.IS_TEST_STARTED, "false");

        return "redirect:/result";
    }
}