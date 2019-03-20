package by.makedon.aistudenttester.domain.dto;

import by.makedon.aistudenttester.domain.TestSession;
import org.springframework.stereotype.Service;

import java.time.format.DateTimeFormatter;

/**
 * @author Yahor Makedon
 */
@Service
public class ManagerDTO {
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