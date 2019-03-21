package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.service.AnswerService;
import by.makedon.aistudenttester.service.QuestionService;
import by.makedon.aistudenttester.service.TestSessionService;
import by.makedon.aistudenttester.util.BaseConstants;
import by.makedon.aistudenttester.util.BaseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/test")
public class TestController {
    private TestSessionService testSessionService;
    private QuestionService questionService;
    private AnswerService answerService;

    @GetMapping
    public String getTest(Model model, HttpSession httpSession) {
        TestSession testSession = testSessionService.getTestSessionByID((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        Question question = questionService.getQuestionByTestSessionAndQuestionNumber(testSession, questionNumber);
        int answer = answerService.getAnswerByTestSessionAndQuestionNumber(testSession, questionNumber);
        List<Integer> answerList = answerService.getAnswerListByTestSession(testSession);

        model.addAttribute("question", question);
        model.addAttribute("answer", answer);
        model.addAttribute("answerList", answerList);

        return "test";
    }

    @GetMapping("/{questionNumber}")
    public String getTest(Model model, HttpSession httpSession, @PathVariable int questionNumber) {
        if (questionNumber < 1) {
            questionNumber = 1;
        } else if (questionNumber > BaseConstants.QUESTION_COUNT) {
            questionNumber = BaseConstants.QUESTION_COUNT;
        }

        httpSession.setAttribute(BaseConstants.QUESTION_NUMBER, String.valueOf(questionNumber));

        return "redirect:/test";
    }

    @GetMapping("/next")
    public String next(Model model, HttpSession httpSession) {
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        if (questionNumber == BaseConstants.QUESTION_COUNT) {
            return "redirect:/test";
        }

        httpSession.setAttribute(BaseConstants.QUESTION_NUMBER, String.valueOf(++questionNumber));

        return "redirect:/test";
    }

    @GetMapping("/prev")
    public String prev(Model model, HttpSession httpSession) {
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        if (questionNumber == 1) {
            return "redirect:/test";
        }

        httpSession.setAttribute(BaseConstants.QUESTION_NUMBER, String.valueOf(--questionNumber));

        return "redirect:/test";
    }

    @PostMapping("/ajax/update")
    @ResponseStatus(HttpStatus.OK)
    public void updateAnswer(Model model, HttpSession httpSession, @RequestParam int answer) {
        if (answer < 0 || answer > 5) {
            throw new BaseException("Error answer: " + answer + ". Answer must be from 0 to 5");
        }

        TestSession testSession = testSessionService.getTestSessionByID((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        answerService.updateAnswer(testSession, questionNumber, answer);
    }

//  Getters/Setters

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
}