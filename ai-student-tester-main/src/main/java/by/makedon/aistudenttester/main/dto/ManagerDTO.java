package by.makedon.aistudenttester.main.dto;

import by.makedon.aistudenttester.main.bean.Student;
import by.makedon.aistudenttester.main.bean.StudentGroup;
import by.makedon.aistudenttester.main.bean.Subject;
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
}