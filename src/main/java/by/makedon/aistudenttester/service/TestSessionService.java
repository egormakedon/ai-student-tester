package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.Student;
import by.makedon.aistudenttester.domain.Subject;
import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.repository.TestSessionRepository;
import by.makedon.aistudenttester.util.BaseConstants;
import by.makedon.aistudenttester.util.QuestionListGenerator;
import by.makedon.aistudenttester.util.TestSessionBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.IntStream;

/**
 * @author Yahor Makedon
 */
@Service
public class TestSessionService extends AbstractService {
    private TestSessionRepository testSessionRepository;
    private QuestionListGenerator questionListGenerator;

    public TestSession save(TestSession testSession) {
        return testSessionRepository.save(testSession);
    }

    public TestSession getTestSessionByID(Long testSessionID) {
        return testSessionRepository.findTestSessionByTestSessionID(testSessionID);
    }

    public TestSession generateTest(Subject subject, Student student) {
        TestSession testSession = new TestSession();

        testSession.setStudent(student);
        testSession.setCreatedDate(LocalDateTime.now());

        List<Question> questionList = questionListGenerator.generate(subject);

        TestSessionBuilder builder = TestSessionBuilder.setTestSession(testSession);
        IntStream.range(0, BaseConstants.QUESTION_COUNT)
                .forEach(index -> builder.build(questionList.get(index), index + 1));
        builder.build();

        return testSession;
    }

//  Getters/Setters

    @Autowired
    public void setTestSessionRepository(TestSessionRepository testSessionRepository) {
        this.testSessionRepository = testSessionRepository;
    }

    @Autowired
    public void setQuestionListGenerator(QuestionListGenerator questionListGenerator) {
        this.questionListGenerator = questionListGenerator;
    }
}