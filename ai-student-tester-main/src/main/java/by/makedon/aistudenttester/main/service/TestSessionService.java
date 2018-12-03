package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.TestSession;
import by.makedon.aistudenttester.main.bean.TestSessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Yahor Makedon
 */
@Service
public class TestSessionService extends AbstractService {
    @Autowired
    private TestSessionRepository testSessionRepository;

    public TestSession save(TestSession testSession) {
        return testSessionRepository.save(testSession);
    }

    public TestSession getTestSessionById(Long testSessionId) {
        return testSessionRepository.findOne(testSessionId);
    }
}