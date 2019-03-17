package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.domain.dto.ManagerDTO;
import by.makedon.aistudenttester.service.AnswerService;
import by.makedon.aistudenttester.service.QuestionService;
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
@RequestMapping(value = "/test")
public class TestPageController {
    private TestSessionService testSessionService;
    private QuestionService questionService;
    private AnswerService answerService;
    private ManagerDTO managerDTO;

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getTestPage1(HttpSession httpSession, Model model) {
        TestSession testSession = testSessionService.getTestSessionByID((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        Question question = questionService.getQuestionByTestSessionAndQuestionNumber(testSession, questionNumber);
        int answer = answerService.getAnswerByTestSessionAndQuestionNumber(testSession, questionNumber);

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

    @Autowired
    public void setTestSessionService(TestSessionService testSessionService) {
        this.testSessionService = testSessionService;
    }

    @Autowired
    public void setQuestionService(QuestionService questionService) {
        this.questionService = questionService;
    }

    @Autowired
    public void setAnswerService(AnswerService answerService) {
        this.answerService = answerService;
    }

    @Autowired
    public void setManagerDTO(ManagerDTO managerDTO) {
        this.managerDTO = managerDTO;
    }
}