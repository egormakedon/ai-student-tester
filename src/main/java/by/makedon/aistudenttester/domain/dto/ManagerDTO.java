package by.makedon.aistudenttester.domain.dto;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.TestSession;
import org.springframework.stereotype.Service;

import java.time.format.DateTimeFormatter;

/**
 * @author Yahor Makedon
 */
@Service
public class ManagerDTO {
    public QuestionAndAnswersDTO getQuestionAndAnswersDTO(Question question, int answer) {
        QuestionAndAnswersDTO questionAndAnswersDTO = new QuestionAndAnswersDTO();

        questionAndAnswersDTO.setQuestionName(question.getQuestionName());
        questionAndAnswersDTO.setFirstAnswer(question.getFirstAnswer());
        questionAndAnswersDTO.setSecondAnswer(question.getSecondAnswer());
        questionAndAnswersDTO.setThirdAnswer(question.getThirdAnswer());
        questionAndAnswersDTO.setFourthAnswer(question.getFourthAnswer());
        questionAndAnswersDTO.setFifthAnswer(question.getFifthAnswer());
        questionAndAnswersDTO.setAnswer(answer);

        return questionAndAnswersDTO;
    }

    public TestResultDTO getTestResultDTO(TestSession testSession) {
        TestResultDTO testResultDTO = new TestResultDTO();

        testResultDTO.setTestSessionId(testSession.getTestSessionID().toString());
        testResultDTO.setStudentGroupNumber(String.valueOf(testSession.getStudent().getStudentGroup().getStudentGroupNumber()));
        testResultDTO.setStudentTicket(String.valueOf(testSession.getStudent().getStudentTicket()));
        testResultDTO.setLastName(testSession.getStudent().getLastName());
        testResultDTO.setFirstName(testSession.getStudent().getFirstName());
        testResultDTO.setMiddleName(testSession.getStudent().getMiddleName());
        testResultDTO.setCreatedDate(testSession.getCreatedDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss")));
        testResultDTO.setFinishedDate(testSession.getFinishedDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss")));
        testResultDTO.setMark(testSession.getMark().toString());

        return testResultDTO;
    }
}