package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.Question;
import by.makedon.aistudenttester.main.bean.TestSession;
import by.makedon.aistudenttester.main.bean.TestSessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Yahor Makedon
 */
@Service
public class TestSessionService {
    @Autowired
    private TestSessionRepository testSessionRepository;

    public TestSession save(TestSession testSession) {
        return testSessionRepository.save(testSession);
    }

    public TestSession getTestSessionById(Long testSessionId) {
        return testSessionRepository.findOne(testSessionId);
    }

    public Question getQuestionByTestSessionAndQuestionNumber(TestSession testSession, int questionNumber) {
        switch (questionNumber) {
            case 1:


                break;
            case 2:

                break;
            case 3:

                break;
            case 4:

                break;
            case 5:

                break;
            case 6:

                break;
            case 7:

                break;
            case 8:

                break;
            case 9:

                break;
            case 10:

                break;
            case 11:

                break;
            case 12:

                break;
            case 13:

                break;
            case 14:

                break;
            case 15:

                break;
            case 16:

                break;
            case 17:

                break;
            case 18:

                break;
            case 19:

                break;
            case 20:

                break;
    }

    public char getAnswerByTestSessionAndQuestionNumber(TestSession testSession, int questionNumber) {
        switch (questionNumber) {
            case 1:


                break;
            case 2:

                break;
            case 3:

                break;
            case 4:

                break;
            case 5:

                break;
            case 6:

                break;
            case 7:

                break;
            case 8:

                break;
            case 9:

                break;
            case 10:

                break;
            case 11:

                break;
            case 12:

                break;
            case 13:

                break;
            case 14:

                break;
            case 15:

                break;
            case 16:

                break;
            case 17:

                break;
            case 18:

                break;
            case 19:

                break;
            case 20:

                break;
    }
}