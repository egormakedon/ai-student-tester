package by.makedon.aistudenttester.main.controller;

import by.makedon.aistudenttester.main.dto.ManagerDTO;
import by.makedon.aistudenttester.main.dto.StudentGroupNumberDTO;
import by.makedon.aistudenttester.main.dto.StudentTicketAndFioDTO;
import by.makedon.aistudenttester.main.dto.SubjectNameDTO;
import by.makedon.aistudenttester.main.service.StudentGroupService;
import by.makedon.aistudenttester.main.service.StudentService;
import by.makedon.aistudenttester.main.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@RestController
@RequestMapping(value = "/ajax")
public class AjaxController {
    @Autowired
    private ManagerDTO managerDTO;
    @Autowired
    private StudentGroupService studentGroupService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private SubjectService subjectService;

    @PreAuthorize("permitAll()")
    @GetMapping(value = "/studentGroupNumberList")
    public List<StudentGroupNumberDTO> getStudentGroupNumberList() {
        return managerDTO.getStudentGroupNumberList(studentGroupService.getStudentGroupList());
    }

    @PreAuthorize("permitAll()")
    @GetMapping(value = "/studentTicketAndFioList")
    public List<StudentTicketAndFioDTO> getStudentTicketAndFioList(@RequestParam String studentGroupNumber) {
        return managerDTO.getStudentTicketAndFioList(studentService.getStudentListByStudentGroupNumber(studentGroupNumber));
    }

    @PreAuthorize("permitAll()")
    @GetMapping(value = "/subjectNameList")
    public List<SubjectNameDTO> getSubjectNameList() {
        return managerDTO.getSubjectNameList(subjectService.getSubjectList());
    }
}