package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Question;
import by.makedon.aistudenttester.domain.bean.QuestionMap;
import by.makedon.aistudenttester.domain.bean.TestSession;
import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.repository.QuestionRepository;
import by.makedon.aistudenttester.util.BaseConstants;
import by.makedon.aistudenttester.util.BaseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author Yahor Makedon
 */
@Service
public class QuestionService {
    private QuestionRepository repository;
    private QuestionMapService questionMapService;

    public List<Question> getQuestionList() {
        return repository.findQuestions();
    }

    @Transactional
    public Question addQuestion(Question question, Topic topic) {
        Question savedQuestion = save(question);
        addQuestionMap(savedQuestion, topic);

        return savedQuestion;
    }

    @Transactional
    public void addQuestion(Map<Topic, List<Question>> topicQuestionListMap) {
        topicQuestionListMap.forEach((topic, questionList) ->
                repository.saveAll(questionList)
                        .forEach(question -> addQuestionMap(question, topic))
        );
    }

    @Transactional
    public QuestionMap addQuestionMap(Question question, Topic topic) {
        QuestionMap questionMap = new QuestionMap();
        questionMap.setQuestion(question);
        questionMap.setTopic(topic);
        questionMap.setActive(true);

        return questionMapService.save(questionMap);
    }

    @Transactional
    public Question save(Question question) {
        return repository.save(question);
    }

    @Transactional
    public Question remove(Question question) {
        questionMapService.removeByQuestionID(question.getID());
        question.setActive(false);
        return save(question);
    }

    public Question getQuestionByTestSessionAndQuestionNumber(TestSession testSession, int questionNumber) {
        switch (questionNumber) {
            case 1:
                return testSession.getQ1();
            case 2:
                return testSession.getQ2();
            case 3:
                return testSession.getQ3();
            case 4:
                return testSession.getQ4();
            case 5:
                return testSession.getQ5();
            case 6:
                return testSession.getQ6();
            case 7:
                return testSession.getQ7();
            case 8:
                return testSession.getQ8();
            case 9:
                return testSession.getQ9();
            case 10:
                return testSession.getQ10();
            case 11:
                return testSession.getQ11();
            case 12:
                return testSession.getQ12();
            case 13:
                return testSession.getQ13();
            case 14:
                return testSession.getQ14();
            case 15:
                return testSession.getQ15();
            case 16:
                return testSession.getQ16();
            case 17:
                return testSession.getQ17();
            case 18:
                return testSession.getQ18();
            case 19:
                return testSession.getQ19();
            case 20:
                return testSession.getQ20();
            default:
                throw new BaseException("Error question number: " + questionNumber + ". Question number must be from 1 to 20");
        }
    }

    public List<Question> getQuestionListByTestSession(TestSession testSession) {
        List<Question> questionList = new ArrayList<>(BaseConstants.QUESTION_COUNT);

        questionList.add(testSession.getQ1());
        questionList.add(testSession.getQ2());
        questionList.add(testSession.getQ3());
        questionList.add(testSession.getQ4());
        questionList.add(testSession.getQ5());
        questionList.add(testSession.getQ6());
        questionList.add(testSession.getQ7());
        questionList.add(testSession.getQ8());
        questionList.add(testSession.getQ9());
        questionList.add(testSession.getQ10());
        questionList.add(testSession.getQ11());
        questionList.add(testSession.getQ12());
        questionList.add(testSession.getQ13());
        questionList.add(testSession.getQ14());
        questionList.add(testSession.getQ15());
        questionList.add(testSession.getQ16());
        questionList.add(testSession.getQ17());
        questionList.add(testSession.getQ18());
        questionList.add(testSession.getQ19());
        questionList.add(testSession.getQ20());

        return questionList;
    }

//  Getters/Setters

    @Autowired
    public void setRepository(QuestionRepository repository) {
        this.repository = repository;
    }

    @Autowired
    public void setQuestionMapService(QuestionMapService questionMapService) {
        this.questionMapService = questionMapService;
    }
}