package by.makedon.aistudenttester.controller;

import by.makedon.aistudenttester.domain.bean.Student;
import by.makedon.aistudenttester.domain.bean.StudentGroup;
import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.domain.bean.TestSession;
import by.makedon.aistudenttester.dto.StudentDto;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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
		model.addAttribute("subjectList", subjectService.getValidSubjectList());
		model.addAttribute("studentGroupList", studentGroupService.getStudentGroupList());

		if (error != null && error) {
			model.addAttribute("mainError", "main.validation");
		}

		return "main";
	}

	@GetMapping(path = "ajax/studentList/{studentGroupNumber}", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<StudentDto> getStudentList(Model model, @PathVariable long studentGroupNumber) {
		List<StudentDto> reportList = new ArrayList<>();

		studentService.getStudentListByStudentGroupNumber(studentGroupNumber).forEach(student -> {
			StudentDto studentDto = new StudentDto();

			studentDto.setStudentID(String.valueOf(student.getID()));
			studentDto.setLastName(student.getLastName());
			studentDto.setFirstName(student.getFirstName());
			studentDto.setMiddleName(student.getMiddleName());

			reportList.add(studentDto);
		});

		return reportList;
	}

	@PostMapping
	public String startTest(
			Model model,
			RedirectAttributes redirectAttributes,
			HttpSession httpSession,
			@RequestParam(value = "subjectID") Subject subject,
			@RequestParam(value = "studentGroupID") StudentGroup studentGroup,
			@RequestParam(value = "studentID") Student student) {
		if (subject == null || studentGroup == null || student == null) {
			redirectAttributes.addAttribute("error", true);
			return "redirect:/";
		}

		TestSession testSession = testSessionService.generateTest(subject, student);

		httpSession.setAttribute(BaseConstants.TEST_SESSION_ID, testSession.getID());
		httpSession.setAttribute(BaseConstants.QUESTION_NUMBER, "1");
		httpSession.setAttribute(BaseConstants.IS_TEST_STARTED, "true");

		return "redirect:/test/1";
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