package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.service.TestSessionService;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * @author Yahor Makedon
 */
@Controller
public class ResultPageController {
    private TestSessionService testSessionService;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/result", method = RequestMethod.GET)
    public String getResultPage(HttpSession httpSession, Model model) {
        if (httpSession.getAttribute(BaseConstants.TEST_SESSION_ID) != null) {
            TestSession testSession = testSessionService.getTestSessionByID((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));

//            model.addAttribute("testResultDTO", managerDTO.getTestResultDTO(testSession));
        }

        return "public/result";
    }

    @Autowired
    public void setTestSessionService(TestSessionService testSessionService) {
        this.testSessionService = testSessionService;
    }
}