package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.util.BaseConstants;
import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.TestSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class MarkCalculationService {
    private QuestionService questionService;
    private AnswerService answerService;
    private MarkService markService;

    public void calculateMark(TestSession testSession) {
        int numberOfRightQuestions = getNumberOfRightQuestions(testSession);
        int mark = markService.getMarkByNumberOfRightQuestions(numberOfRightQuestions).getMark();

        testSession.setMark(mark);
    }

    private int getNumberOfRightQuestions(TestSession testSession) {
        List<Question> questionList = questionService.getQuestionListByTestSession(testSession);
        List<Integer> answerList = answerService.getAnswerListByTestSession(testSession);

        int numberOfRightQuestions = 0;

        for (int index = 0; index < BaseConstants.QUESTION_COUNT; index++) {
            int answer = answerList.get(index);
            int rightAnswer = questionList.get(index).getRightAnswer();

            if (answer == rightAnswer) {
                ++numberOfRightQuestions;
            }
        }

        return numberOfRightQuestions;
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
    public void setMarkService(MarkService markService) {
        this.markService = markService;
    }
}