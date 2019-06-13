package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Student;
import by.makedon.aistudenttester.domain.bean.StudentGroup;
import by.makedon.aistudenttester.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class StudentService {
    private StudentRepository repository;
    private TestSessionService testSessionService;

    @Transactional
    public Student remove(Student student) {
        testSessionService.remove(student);
        student.setActive(false);
        return repository.save(student);
    }

    @Transactional
    public List<Student> remove(StudentGroup studentGroup) {
        List<Student> studentList = repository.findStudentsByStudentGroupID(studentGroup.getID());
        studentList.forEach(student -> student.setActive(false));
        return repository.saveAll(studentList);
    }

    public List<Student> getStudentListByStudentGroupNumber(long studentGroupNumber) {
        return repository.findStudentsByStudentGroupNumber(studentGroupNumber);
    }

//  Getters/Setters

    @Autowired
    public void setRepository(StudentRepository repository) {
        this.repository = repository;
    }

    @Autowired
    public void setTestSessionService(TestSessionService testSessionService) {
        this.testSessionService = testSessionService;
    }
}