package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.BaseConstants;
import by.makedon.aistudenttester.main.bean.Question;
import by.makedon.aistudenttester.main.bean.TestSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class MarkCalculationService extends AbstractService {
    @Autowired
    private QuestionService questionService;
    @Autowired
    private AnswerService answerService;
    @Autowired
    private MarkService markService;

    public void calculateMark(TestSession testSession) {
        int numberOfRightQuestions = getNumberOfRightQuestions(testSession);
        int mark = markService.getMarkByNumberOfRightQuestions(numberOfRightQuestions).getMark();

        testSession.setMark(mark);
    }

    private int getNumberOfRightQuestions(TestSession testSession) {
        List<Question> questionList = questionService.getQuestionListByTestSession(testSession);
        List<Character> answerList = answerService.getAnswerListByTestSession(testSession);

        int numberOfRightQuestions = 0;

        for (int index = 0; index < BaseConstants.QUESTION_COUNT; index++) {
            char answer = answerList.get(index);
            char rightAnswer = questionList.get(index).getRightAnswer();

            if (answer == rightAnswer) {
                ++numberOfRightQuestions;
            }
        }

        return numberOfRightQuestions;
    }
}