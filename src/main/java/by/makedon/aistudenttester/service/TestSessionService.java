package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Question;
import by.makedon.aistudenttester.domain.bean.Student;
import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.domain.bean.TestSession;
import by.makedon.aistudenttester.repository.TestSessionRepository;
import by.makedon.aistudenttester.util.BaseConstants;
import by.makedon.aistudenttester.util.QuestionListGenerator;
import by.makedon.aistudenttester.util.TestSessionBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.IntStream;

/**
 * @author Yahor Makedon
 */
@Service
public class TestSessionService {
    private TestSessionRepository repository;
    private QuestionListGenerator questionListGenerator;
    private MarkService markService;

    public TestSession getTestSessionByID(Long testSessionID) {
        return repository.findTestSessionByTestSessionID(testSessionID);
    }

    public List<TestSession> getTestSessionList() {
        return repository.findTestSessions();
    }

    @Transactional
    public List<TestSession> remove(Subject subject) {
        List<TestSession> testSessionList = repository.findTestSessionsBySubjectID(subject.getID());
        testSessionList.forEach(testSession -> testSession.setActive(false));
        return repository.saveAll(testSessionList);
    }

    @Transactional
    public TestSession save(TestSession testSession) {
        return repository.save(testSession);
    }

    @Transactional
    public TestSession generateTest(Subject subject, Student student) {
        TestSession testSession = new TestSession();

        testSession.setSubject(subject);
        testSession.setStudent(student);
        testSession.setCreatedDate(LocalDateTime.now());
        testSession.setActive(false);

        List<Question> questionList = questionListGenerator.generate(subject);

        TestSessionBuilder builder = TestSessionBuilder.setTestSession(testSession);
        IntStream.range(0, BaseConstants.QUESTION_COUNT)
                .forEach(index -> builder.build(questionList.get(index), index + 1));
        builder.build();

        return save(testSession);
    }

    @Transactional
    public TestSession completeTest(Long testSessionID) {
        TestSession testSession = getTestSessionByID(testSessionID);

        int mark = markService.calculateMark(testSession);

        testSession.setMark(mark);
        testSession.setFinishedDate(LocalDateTime.now());
        testSession.setActive(true);
        return save(testSession);
    }

//  Getters/Setters

    @Autowired
    public void setRepository(TestSessionRepository repository) {
        this.repository = repository;
    }

    @Autowired
    public void setQuestionListGenerator(QuestionListGenerator questionListGenerator) {
        this.questionListGenerator = questionListGenerator;
    }

    @Autowired
    public void setMarkService(MarkService markService) {
        this.markService = markService;
    }
}