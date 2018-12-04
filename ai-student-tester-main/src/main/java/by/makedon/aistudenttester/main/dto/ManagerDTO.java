package by.makedon.aistudenttester.main.dto;

import by.makedon.aistudenttester.main.bean.*;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class ManagerDTO {
    public List<StudentGroupNumberDTO> getStudentGroupNumberList(List<StudentGroup> studentGroupList) {
        List<StudentGroupNumberDTO> studentGroupNumberDTOList = new ArrayList<>(3);

        studentGroupList.forEach(studentGroup -> {
            studentGroupNumberDTOList.add(new StudentGroupNumberDTO(studentGroup.getStudentGroupNumber()));
        });

        return studentGroupNumberDTOList;
    }

    public List<StudentTicketAndFioDTO> getStudentTicketAndFioList(List<Student> studentList) {
        List<StudentTicketAndFioDTO> studentTicketAndFioDTOList = new ArrayList<>();

        studentList.forEach(student -> {
            studentTicketAndFioDTOList.add(new StudentTicketAndFioDTO(student.getStudentTicket(), student.getLastName(), student.getFirstName(), student.getMiddleName()));
        });

        return studentTicketAndFioDTOList;
    }

    public List<SubjectNameDTO> getSubjectNameList(List<Subject> subjectList) {
        List<SubjectNameDTO> subjectNameDTOList = new ArrayList<>(5);

        subjectList.forEach(subject -> {
            subjectNameDTOList.add(new SubjectNameDTO(subject.getSubjectName()));
        });

        return subjectNameDTOList;
    }

    public QuestionAndAnswersDTO getQuestionAndAnswersDTO(Question question, char answer) {
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

        testResultDTO.setTestSessionId(String.valueOf(testSession.getTestSessionId()));
        testResultDTO.setStudentGroupNumber(testSession.getStudent().getStudentGroup().getStudentGroupNumber());
        testResultDTO.setStudentTicket(testSession.getStudent().getStudentTicket());
        testResultDTO.setLastName(testSession.getStudent().getLastName());
        testResultDTO.setFirstName(testSession.getStudent().getFirstName());
        testResultDTO.setMiddleName(testSession.getStudent().getMiddleName());
        testResultDTO.setCreatedDate(testResultDTO.getCreatedDate());
        testResultDTO.setFinishedDate(testResultDTO.getFinishedDate());

        return testResultDTO;
    }
}