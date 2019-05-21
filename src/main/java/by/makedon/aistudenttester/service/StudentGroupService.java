package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.StudentGroup;
import by.makedon.aistudenttester.repository.StudentGroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class StudentGroupService {
    private StudentGroupRepository repository;

    public List<StudentGroup> getStudentGroupList() {
        return repository.findStudentGroups();
    }

//  Getters/Setters

    @Autowired
    public void setRepository(StudentGroupRepository repository) {
        this.repository = repository;
    }
}