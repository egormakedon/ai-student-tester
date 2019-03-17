package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.Student;
import by.makedon.aistudenttester.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
@Service
public class StudentService extends AbstractService {
    private StudentRepository studentRepository;

    public List<Student> getStudentListByStudentGroupNumber(long studentGroupNumber) {
        return studentRepository.findStudentsByActiveIsTrueAndStudentGroup_StudentGroupNumberAndStudentGroup_ActiveIsTrue(studentGroupNumber);
    }

    public boolean isStudentExists(long studentTicket) {
        return studentRepository.findStudentByStudentTicketAndActiveIsTrue(studentTicket).isPresent();
    }

    public Optional<Student> getStudentByStudentTicket(long studentTicket) {
        return studentRepository.findStudentByStudentTicketAndActiveIsTrue(studentTicket);
    }

    @Autowired
    public void setStudentRepository(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }
}