package by.makedon.aistudenttester.main.controller;

import by.makedon.aistudenttester.main.BaseConstants;
import by.makedon.aistudenttester.main.bean.TestSession;
import by.makedon.aistudenttester.main.dto.ManagerDTO;
import by.makedon.aistudenttester.main.service.TestSessionService;
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
    @Autowired
    private TestSessionService testSessionService;
    @Autowired
    private ManagerDTO managerDTO;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/result", method = RequestMethod.GET)
    public String getResultPage(HttpSession httpSession, Model model) {
        if (httpSession.getAttribute(BaseConstants.TEST_SESSION_ID) != null) {
            TestSession testSession = testSessionService.getTestSessionById((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));

            model.addAttribute("testResultDTO", managerDTO.getTestResultDTO(testSession));
        }

        return "public/result";
    }
}