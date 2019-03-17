package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.TestSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class AnswerService extends AbstractService {
    @Autowired
    private TestSessionService testSessionService;

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
                testSessionService.save(testSession);

                break;
            case 2:
                testSession.setA2(answer);
                testSessionService.save(testSession);

                break;
            case 3:
                testSession.setA3(answer);
                testSessionService.save(testSession);

                break;
            case 4:
                testSession.setA4(answer);
                testSessionService.save(testSession);

                break;
            case 5:
                testSession.setA5(answer);
                testSessionService.save(testSession);

                break;
            case 6:
                testSession.setA6(answer);
                testSessionService.save(testSession);

                break;
            case 7:
                testSession.setA7(answer);
                testSessionService.save(testSession);

                break;
            case 8:
                testSession.setA8(answer);
                testSessionService.save(testSession);

                break;
            case 9:
                testSession.setA9(answer);
                testSessionService.save(testSession);

                break;
            case 10:
                testSession.setA10(answer);
                testSessionService.save(testSession);

                break;
            case 11:
                testSession.setA11(answer);
                testSessionService.save(testSession);

                break;
            case 12:
                testSession.setA12(answer);
                testSessionService.save(testSession);

                break;
            case 13:
                testSession.setA13(answer);
                testSessionService.save(testSession);

                break;
            case 14:
                testSession.setA14(answer);
                testSessionService.save(testSession);

                break;
            case 15:
                testSession.setA15(answer);
                testSessionService.save(testSession);

                break;
            case 16:
                testSession.setA16(answer);
                testSessionService.save(testSession);

                break;
            case 17:
                testSession.setA17(answer);
                testSessionService.save(testSession);

                break;
            case 18:
                testSession.setA18(answer);
                testSessionService.save(testSession);

                break;
            case 19:
                testSession.setA19(answer);
                testSessionService.save(testSession);

                break;
            case 20:
                testSession.setA20(answer);
                testSessionService.save(testSession);

                break;
            default:
                logger.error("Invalid questionNumber - " + questionNumber);
                throw new IllegalArgumentException("Invalid questionNumber - " + questionNumber);
        }
    }

    public List<Character> getAnswerListByTestSession(TestSession testSession) {
        List<Character> answerList = new ArrayList<>(20);

        answerList.add(testSession.getA1());
        answerList.add(testSession.getA2());
        answerList.add(testSession.getA3());
        answerList.add(testSession.getA4());
        answerList.add(testSession.getA5());
        answerList.add(testSession.getA6());
        answerList.add(testSession.getA7());
        answerList.add(testSession.getA8());
        answerList.add(testSession.getA9());
        answerList.add(testSession.getA10());
        answerList.add(testSession.getA11());
        answerList.add(testSession.getA12());
        answerList.add(testSession.getA13());
        answerList.add(testSession.getA14());
        answerList.add(testSession.getA15());
        answerList.add(testSession.getA16());
        answerList.add(testSession.getA17());
        answerList.add(testSession.getA18());
        answerList.add(testSession.getA19());
        answerList.add(testSession.getA20());

        return answerList;
    }
}