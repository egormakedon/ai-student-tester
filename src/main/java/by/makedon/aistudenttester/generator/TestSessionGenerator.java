package by.makedon.aistudenttester.generator;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.service.StudentService;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Component
public class TestSessionGenerator {
    private QuestionGenerator questionGenerator;
    private StudentService studentService;

    public TestSession getTestSession(long studentTicket, String subjectName) {
        TestSession testSession = new TestSession();

        testSession.setStudent(studentService.getStudentByStudentTicket(studentTicket).get());
        testSession.setCreatedDate(LocalDateTime.now());

        List<Question> questionList = questionGenerator.getQuetionList(subjectName);

        for (int i = 0; i < BaseConstants.QUESTION_COUNT; i++) {
            factorySetQuestions(testSession, questionList.get(i), i + 1);
        }

        return testSession;
    }

    private void factorySetQuestions(TestSession testSession, Question question, int index) {
        switch (index) {
            case 1:
                testSession.setQ1(question);

                break;
            case 2:
                testSession.setQ2(question);

                break;
            case 3:
                testSession.setQ3(question);

                break;
            case 4:
                testSession.setQ4(question);

                break;
            case 5:
                testSession.setQ5(question);

                break;
            case 6:
                testSession.setQ6(question);

                break;
            case 7:
                testSession.setQ7(question);

                break;
            case 8:
                testSession.setQ8(question);

                break;
            case 9:
                testSession.setQ9(question);

                break;
            case 10:
                testSession.setQ10(question);

                break;
            case 11:
                testSession.setQ11(question);

                break;
            case 12:
                testSession.setQ12(question);

                break;
            case 13:
                testSession.setQ13(question);

                break;
            case 14:
                testSession.setQ14(question);

                break;
            case 15:
                testSession.setQ15(question);

                break;
            case 16:
                testSession.setQ16(question);

                break;
            case 17:
                testSession.setQ17(question);

                break;
            case 18:
                testSession.setQ18(question);

                break;
            case 19:
                testSession.setQ19(question);

                break;
            case 20:
                testSession.setQ20(question);

                break;
        }
    }

    @Autowired
    public void setQuestionGenerator(QuestionGenerator questionGenerator) {
        this.questionGenerator = questionGenerator;
    }

    @Autowired
    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }
}