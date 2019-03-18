package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.domain.validator.AnswerValidator;
import by.makedon.aistudenttester.service.AnswerService;
import by.makedon.aistudenttester.service.TestSessionService;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * @author Yahor Makedon
 */
@RestController
@RequestMapping(value = "/ajax")
public class AjaxController {
    private TestSessionService testSessionService;
    private AnswerService answerService;
    private AnswerValidator answerValidator;

    @PreAuthorize("permitAll()")
    @PostMapping(value = "/updateAnswer")
    public void updateAnswer(@RequestParam String answer, HttpSession httpSession) {
        answerValidator.validate(answer);

        TestSession testSession = testSessionService.getTestSessionByID((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        answerService.updateAnswer(testSession, questionNumber, answer.charAt(0));
    }

    @Autowired
    public void setTestSessionService(TestSessionService testSessionService) {
        this.testSessionService = testSessionService;
    }

    @Autowired
    public void setAnswerService(AnswerService answerService) {
        this.answerService = answerService;
    }

    @Autowired
    public void setAnswerValidator(AnswerValidator answerValidator) {
        this.answerValidator = answerValidator;
    }
}