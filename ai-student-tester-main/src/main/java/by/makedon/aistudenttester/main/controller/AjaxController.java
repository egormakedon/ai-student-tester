package by.makedon.aistudenttester.main.controller;

import by.makedon.aistudenttester.main.BaseConstants;
import by.makedon.aistudenttester.main.bean.TestSession;
import by.makedon.aistudenttester.main.dto.ManagerDTO;
import by.makedon.aistudenttester.main.dto.StudentGroupNumberDTO;
import by.makedon.aistudenttester.main.dto.StudentTicketAndFioDTO;
import by.makedon.aistudenttester.main.dto.SubjectNameDTO;
import by.makedon.aistudenttester.main.service.StudentGroupService;
import by.makedon.aistudenttester.main.service.StudentService;
import by.makedon.aistudenttester.main.service.SubjectService;
import by.makedon.aistudenttester.main.service.TestSessionService;
import by.makedon.aistudenttester.main.validator.AnswerValidator;
import by.makedon.aistudenttester.main.validator.StudentGroupNumberValidator;
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
    @Autowired
    private ManagerDTO managerDTO;

    @Autowired
    private StudentGroupService studentGroupService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private SubjectService subjectService;
    @Autowired
    private TestSessionService testSessionService;

    @Autowired
    private StudentGroupNumberValidator studentGroupNumberValidator;
    @Autowired
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

        return managerDTO.getStudentTicketAndFioList(studentService.getStudentListByStudentGroupNumber(studentGroupNumber));
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

        TestSession testSession = testSessionService.getTestSessionById((Long) httpSession.getAttribute(BaseConstants.TEST_SESSION_ID));
        int questionNumber = Integer.valueOf((String) httpSession.getAttribute(BaseConstants.QUESTION_NUMBER));

        testSessionService.updateAnswer(testSession, questionNumber, answer.charAt(0));
    }
}