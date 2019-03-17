package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.repository.TestSessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    @Autowired
    public void setTestSessionRepository(TestSessionRepository testSessionRepository) {
        this.testSessionRepository = testSessionRepository;
    }
}