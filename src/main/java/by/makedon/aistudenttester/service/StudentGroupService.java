package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.StudentGroup;
import by.makedon.aistudenttester.repository.StudentGroupRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class StudentGroupService {
    private StudentGroupRepository studentGroupRepository;

    public List<StudentGroup> getStudentGroupList() {
        return studentGroupRepository.findStudentGroupsByActiveIsTrue();
    }

    public boolean isStudentGroupExists(long studentGroupNumber) {
        return studentGroupRepository.findStudentGroupByStudentGroupNumberAndActiveIsTrue(studentGroupNumber).isPresent();
    }

    @Autowired
    public void setStudentGroupRepository(StudentGroupRepository studentGroupRepository) {
        this.studentGroupRepository = studentGroupRepository;
    }
}