package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.Student;
import by.makedon.aistudenttester.domain.StudentGroup;
import by.makedon.aistudenttester.domain.Subject;
import by.makedon.aistudenttester.domain.TestSession;
import by.makedon.aistudenttester.service.StudentGroupService;
import by.makedon.aistudenttester.service.StudentService;
import by.makedon.aistudenttester.service.SubjectService;
import by.makedon.aistudenttester.service.TestSessionService;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/")
public class MainController {
	private SubjectService subjectService;
	private StudentGroupService studentGroupService;
	private StudentService studentService;
	private TestSessionService testSessionService;

	@GetMapping
	public String getMain(Model model, @RequestParam(required = false) Boolean error) {
		List<Subject> subjectList = subjectService.getSubjectList();
		List<StudentGroup> studentGroupList = studentGroupService.getStudentGroupList();

		model.addAttribute("subjectList", subjectList);
		model.addAttribute("studentGroupList", studentGroupList);

		if (error != null && error) {
			model.addAttribute("mainError", "main.validation");
		}

		return "main";
	}

	@GetMapping(path = "ajax/studentList/{studentGroupNumber}", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Student> getStudentList(Model model, @PathVariable long studentGroupNumber) {
		return studentService.getStudentListByStudentGroupNumber(studentGroupNumber);
	}

	@PostMapping
	public String startTest(
			Model model,
			HttpSession httpSession,
			@RequestParam(value = "subjectID") Subject subject,
			@RequestParam(value = "studentGroupID") StudentGroup studentGroup,
			@RequestParam(value = "studentID") Student student) {
		if (subject == null || studentGroup == null || student == null) {
			return "redirect:/?error=true";
		}

		TestSession testSession = testSessionService.generateTest(subject, student);

		httpSession.setAttribute(BaseConstants.TEST_SESSION_ID, testSession.getID());
		httpSession.setAttribute(BaseConstants.QUESTION_NUMBER, 1);
		httpSession.setAttribute(BaseConstants.IS_TEST_STARTED, "true");

		return "redirect:/test";
	}

//	Getters/Setters

	@Autowired
	public void setSubjectService(SubjectService subjectService) {
		this.subjectService = subjectService;
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
	public void setTestSessionService(TestSessionService testSessionService) {
		this.testSessionService = testSessionService;
	}
}