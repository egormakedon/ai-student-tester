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
@RequestMapping(value = "/test")
public class TestPageController {
    @Autowired
    private TestSessionService testSessionService;
    @Autowired
    private ManagerDTO managerDTO;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getTestPage1(HttpSession httpSession, Model model) {
        TestSession testSession = testSessionService.getTestSessionById((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        Question question = testSessionService.getQuestionByTestSessionAndQuestionNumber(testSession, questionNumber);
        char answer = testSessionService.getAnswerByTestSessionAndQuestionNumber(testSession, questionNumber);

        model.addAttribute("questionAndAnswersDTO", managerDTO.getQuestionAndAnswersDTO(question, answer));

        return "public/test";
    }

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/nextQuestion", method = RequestMethod.GET)
    public String getTestPage2(HttpSession httpSession) {
        Integer questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        if (questionNumber == 20) {
            return "redirect:/test";
        }

        ++questionNumber;
        httpSession.setAttribute(BaseConstants.QUESTION_NUMBER, questionNumber.toString());

        return "redirect:/test";
    }

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/prevQuestion", method = RequestMethod.GET)
    public String getTestPage3(HttpSession httpSession) {
        Integer questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        if (questionNumber == 1) {
            return "redirect:/test";
        }

        --questionNumber;
        httpSession.setAttribute(BaseConstants.QUESTION_NUMBER, questionNumber.toString());

        return "redirect:/test";
    }
}