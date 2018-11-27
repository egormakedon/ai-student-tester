package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.StudentGroup;
import by.makedon.aistudenttester.main.bean.StudentGroupRepository;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class StudentGroupService {
    @Autowired
    private StudentGroupRepository studentGroupRepository;

    public List<StudentGroup> getStudentGroupList() {
        return Lists.newArrayList(studentGroupRepository.findAll());
    }

    public boolean isStudentGroupExists(String studentGroupNumber) {
        return studentGroupRepository.findStudentGroupByStudentGroupNumberAndActiveIsTrue(studentGroupNumber).isPresent();
    }
}