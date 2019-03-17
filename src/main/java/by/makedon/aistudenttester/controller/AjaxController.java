package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.domain.dto.ManagerDTO;
import by.makedon.aistudenttester.domain.dto.StudentGroupNumberDTO;
import by.makedon.aistudenttester.domain.dto.StudentTicketAndFioDTO;
import by.makedon.aistudenttester.domain.dto.SubjectNameDTO;
import by.makedon.aistudenttester.domain.validator.AnswerValidator;
import by.makedon.aistudenttester.domain.validator.StudentGroupNumberValidator;
import by.makedon.aistudenttester.service.*;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@RestController
@RequestMapping(value = "/ajax")
public class AjaxController {
    private ManagerDTO managerDTO;
    private StudentGroupService studentGroupService;
    private StudentService studentService;
    private SubjectService subjectService;
    private TestSessionService testSessionService;
    private AnswerService answerService;
    private StudentGroupNumberValidator studentGroupNumberValidator;
    private AnswerValidator answerValidator;

    @PreAuthorize("permitAll()")
    @GetMapping(value = "/studentGroupNumberList")
    public List<StudentGroupNumberDTO> getStudentGroupNumberList() {
        return managerDTO.getStudentGroupNumberList(studentGroupService.getStudentGroupList());
    }

    @PreAuthorize("permitAll()")
    @GetMapping(value = "/studentTicketAndFioList")
    public List<StudentTicketAndFioDTO> getStudentTicketAndFioList(@RequestParam String studentGroupNumber) {
        studentGroupNumberValidator.validate(studentGroupNumber);

        return managerDTO.getStudentTicketAndFioList(studentService.getStudentListByStudentGroupNumber(Long.valueOf(studentGroupNumber)));
    }

    @PreAuthorize("permitAll()")
    @GetMapping(value = "/subjectNameList")
    public List<SubjectNameDTO> getSubjectNameList() {
        return managerDTO.getSubjectNameList(subjectService.getSubjectList());
    }

    @PreAuthorize("permitAll()")
    @PostMapping(value = "/updateAnswer")
    public void updateAnswer(@RequestParam String answer, HttpSession httpSession) {
        answerValidator.validate(answer);

        TestSession testSession = testSessionService.getTestSessionByID((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        answerService.updateAnswer(testSession, questionNumber, answer.charAt(0));
    }

    @Autowired
    public void setManagerDTO(ManagerDTO managerDTO) {
        this.managerDTO = managerDTO;
    }

    @Autowired
    public void setStudentGroupService(StudentGroupService studentGroupService) {
        this.studentGroupService = studentGroupService;
    }

    @Autowired
    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }

    @Autowired
    public void setSubjectService(SubjectService subjectService) {
        this.subjectService = subjectService;
    }

    @Autowired
    public void setTestSessionService(TestSessionService testSessionService) {
        this.testSessionService = testSessionService;
    }

    @Autowired
    public void setAnswerService(AnswerService answerService) {
        this.answerService = answerService;
    }

    @Autowired
    public void setStudentGroupNumberValidator(StudentGroupNumberValidator studentGroupNumberValidator) {
        this.studentGroupNumberValidator = studentGroupNumberValidator;
    }

    @Autowired
    public void setAnswerValidator(AnswerValidator answerValidator) {
        this.answerValidator = answerValidator;
    }
}