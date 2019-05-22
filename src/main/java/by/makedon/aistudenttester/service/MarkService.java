package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Mark;
import by.makedon.aistudenttester.domain.bean.Question;
import by.makedon.aistudenttester.domain.bean.TestSession;
import by.makedon.aistudenttester.repository.MarkRepository;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
@Service
public class MarkService {
    private MarkRepository repository;
    private QuestionService questionService;
    private AnswerService answerService;

    public Optional<Mark> getMark(Long markID) {
        return repository.findById(markID);
    }

    public List<Mark> getMarkList() {
        return repository.findMarks();
    }

    public int calculateMark(TestSession testSession) {
        int numberOfRightQuestions = calculateNumberOfRightQuestions(testSession);
        return repository.findMarkByNumberOfRightQuestions(numberOfRightQuestions).getMark();
    }

    @Transactional
    public void save(List<Mark> markList) {
        markList.forEach(repository::save);
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
    public void setRepository(MarkRepository repository) {
        this.repository = repository;
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