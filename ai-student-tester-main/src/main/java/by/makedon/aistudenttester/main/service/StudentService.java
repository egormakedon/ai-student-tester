package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.Student;
import by.makedon.aistudenttester.main.bean.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class StudentService {
    @Autowired
    private StudentRepository studentRepository;

    public List<Student> getStudentListByStudentGroupNumber(String studentGroupNumber) {
        return studentRepository.findStudentsByStudentGroup_StudentGroupNumber(studentGroupNumber);
    }

    public boolean isStudentExists(String studentTicket) {
        return studentRepository.findStudentByStudentTicketAndActiveIsTrue(studentTicket).isPresent();
    }
}