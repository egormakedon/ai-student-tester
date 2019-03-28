package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.repository.MarkRepository;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class MarkService {
    private MarkRepository markRepository;
    private QuestionService questionService;
    private AnswerService answerService;

    public int calculateMark(TestSession testSession) {
        int numberOfRightQuestions = calculateNumberOfRightQuestions(testSession);

        return markRepository
                .findMarkByNumberOfRightQuestionsAndActiveIsTrueAndStrategy_ActiveIsTrue(numberOfRightQuestions)
                .getMark();
    }

    private int calculateNumberOfRightQuestions(TestSession testSession) {
        List<Question> questionList = questionService.getQuestionListByTestSession(testSession);
        List<Integer> answerList = answerService.getAnswerListByTestSession(testSession);

        int numberOfRightQuestions = 0;

        for (int i = 0; i < BaseConstants.QUESTION_COUNT; i++) {
            if (answerList.get(i) == questionList.get(i).getRightAnswer()) {
                ++numberOfRightQuestions;
            }
        }

        return numberOfRightQuestions;
    }

//  Getters/Setters

    @Autowired
    public void setMarkRepository(MarkRepository markRepository) {
        this.markRepository = markRepository;
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