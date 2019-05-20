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
    private StudentRepository repository;

    public List<Student> getStudentListByStudentGroupNumber(long studentGroupNumber) {
        return repository.findStudentsByStudentGroupNumber(studentGroupNumber);
    }

//  Getters/Setters

    @Autowired
    public void setRepository(StudentRepository repository) {
        this.repository = repository;
    }
}