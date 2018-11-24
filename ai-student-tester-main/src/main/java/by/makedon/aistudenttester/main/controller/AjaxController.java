package by.makedon.aistudenttester.main.controller;

import by.makedon.aistudenttester.main.bean.StudentGroup;
import by.makedon.aistudenttester.main.bean.StudentGroupRepository;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@RestController
@RequestMapping(value = "/ajax")
public class AjaxController {
    @Autowired
    private StudentGroupRepository studentGroupRepository;

    @PreAuthorize("permitAll()")
    @GetMapping(value = "/studentGroupList")
    public List<StudentGroup> getStudentGroupList() {
        return Lists.newArrayList(studentGroupRepository.findAll());
    }
}
