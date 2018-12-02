package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.Question;
import by.makedon.aistudenttester.main.bean.TestSession;
import by.makedon.aistudenttester.main.bean.TestSessionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
                logger.error("Invalid questionNumber - " + questionNumber);
                throw new IllegalArgumentException("Invalid questionNumber - " + questionNumber);
        }
    }

    public char getAnswerByTestSessionAndQuestionNumber(TestSession testSession, int questionNumber) {
        switch (questionNumber) {
            case 1:
                return testSession.getA1();
            case 2:
                return testSession.getA2();
            case 3:
                return testSession.getA3();
            case 4:
                return testSession.getA4();
            case 5:
                return testSession.getA5();
            case 6:
                return testSession.getA6();
            case 7:
                return testSession.getA7();
            case 8:
                return testSession.getA8();
            case 9:
                return testSession.getA9();
            case 10:
                return testSession.getA10();
            case 11:
                return testSession.getA11();
            case 12:
                return testSession.getA12();
            case 13:
                return testSession.getA13();
            case 14:
                return testSession.getA14();
            case 15:
                return testSession.getA15();
            case 16:
                return testSession.getA16();
            case 17:
                return testSession.getA17();
            case 18:
                return testSession.getA18();
            case 19:
                return testSession.getA19();
            case 20:
                return testSession.getA20();
            default:
                logger.error("Invalid questionNumber - " + questionNumber);
                throw new IllegalArgumentException("Invalid questionNumber - " + questionNumber);
        }
    }

    @Transactional
    public void updateAnswer(TestSession testSession, int questionNumber, char answer) {
        switch (questionNumber) {
            case 1:
                testSession.setA1(answer);
                save(testSession);

                break;
            case 2:
                testSession.setA2(answer);
                save(testSession);

                break;
            case 3:
                testSession.setA3(answer);
                save(testSession);

                break;
            case 4:
                testSession.setA4(answer);
                save(testSession);

                break;
            case 5:
                testSession.setA5(answer);
                save(testSession);

                break;
            case 6:
                testSession.setA6(answer);
                save(testSession);

                break;
            case 7:
                testSession.setA7(answer);
                save(testSession);

                break;
            case 8:
                testSession.setA8(answer);
                save(testSession);

                break;
            case 9:
                testSession.setA9(answer);
                save(testSession);

                break;
            case 10:
                testSession.setA10(answer);
                save(testSession);

                break;
            case 11:
                testSession.setA11(answer);
                save(testSession);

                break;
            case 12:
                testSession.setA12(answer);
                save(testSession);

                break;
            case 13:
                testSession.setA13(answer);
                save(testSession);

                break;
            case 14:
                testSession.setA14(answer);
                save(testSession);

                break;
            case 15:
                testSession.setA15(answer);
                save(testSession);

                break;
            case 16:
                testSession.setA16(answer);
                save(testSession);

                break;
            case 17:
                testSession.setA17(answer);
                save(testSession);

                break;
            case 18:
                testSession.setA18(answer);
                save(testSession);

                break;
            case 19:
                testSession.setA19(answer);
                save(testSession);

                break;
            case 20:
                testSession.setA20(answer);
                save(testSession);

                break;
            default:
                logger.error("Invalid questionNumber - " + questionNumber);
                throw new IllegalArgumentException("Invalid questionNumber - " + questionNumber);
        }
    }
}