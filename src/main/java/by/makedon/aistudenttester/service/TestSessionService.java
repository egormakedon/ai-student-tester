package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.Student;
import by.makedon.aistudenttester.domain.Subject;
import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.repository.TestSessionRepository;
import by.makedon.aistudenttester.util.TestSessionBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

/**
 * @author Yahor Makedon
 */
@Service
public class TestSessionService extends AbstractService {
    private TestSessionRepository testSessionRepository;

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

        //TODO refactoring
//        List<Question> questionList = questionGenerator.getQuetionList(subjectName);

        TestSessionBuilder builder = TestSessionBuilder.setTestSession(testSession);
        for (int i = 1; i <= 20; i++) {
            builder.build(new Question(), i);
        }
        builder.build();

        return testSession;
    }

//  Getters/Setters

    @Autowired
    public void setTestSessionRepository(TestSessionRepository testSessionRepository) {
        this.testSessionRepository = testSessionRepository;
    }
}