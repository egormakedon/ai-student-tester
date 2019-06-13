package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.StudentGroup;
import by.makedon.aistudenttester.repository.StudentGroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class StudentGroupService {
    private StudentGroupRepository repository;
    private StudentService studentService;

    @Transactional
    public StudentGroup remove(StudentGroup studentGroup) {
        studentService.remove(studentGroup);
        studentGroup.setActive(false);
        return repository.save(studentGroup);
    }

    public List<StudentGroup> getStudentGroupList() {
        return repository.findStudentGroups();
    }

//  Getters/Setters

    @Autowired
    public void setRepository(StudentGroupRepository repository) {
        this.repository = repository;
    }

    @Autowired
    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }
}