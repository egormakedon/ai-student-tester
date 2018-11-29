package by.makedon.aistudenttester.main.controller;

import by.makedon.aistudenttester.main.BaseConstants;
import by.makedon.aistudenttester.main.bean.Question;
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
public class TestPageController {
    @Autowired
    private TestSessionService testSessionService;
    @Autowired
    private ManagerDTO managerDTO;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String getTestPage(HttpSession httpSession, Model model) {
        TestSession testSession = testSessionService.getTestSessionById((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        Question question = testSessionService.getQuestionByTestSessionAndQuestionNumber(testSession, questionNumber);
        char answer = testSessionService.getAnswerByTestSessionAndQuestionNumber(testSession, questionNumber);

        managerDTO.getQuestionAndAnswersDTO(question, answer); //TODO

        return "test";
    }
}