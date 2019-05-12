package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Student;
import by.makedon.aistudenttester.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class StudentService {
    private StudentRepository studentRepository;

    public List<Student> getStudentListByStudentGroupNumber(long studentGroupNumber) {
        return studentRepository.findStudentsByActiveIsTrueAndStudentGroup_StudentGroupNumberAndStudentGroup_ActiveIsTrue(studentGroupNumber);
    }

//  Getters/Setters

    @Autowired
    public void setStudentRepository(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }
}