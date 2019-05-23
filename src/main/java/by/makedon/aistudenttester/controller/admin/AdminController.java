package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Student;
import by.makedon.aistudenttester.domain.bean.StudentGroup;
import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.domain.bean.TestSession;
import by.makedon.aistudenttester.dto.StudentDto;
import by.makedon.aistudenttester.dto.TestSessionReportDto;
import by.makedon.aistudenttester.service.StudentGroupService;
import by.makedon.aistudenttester.service.StudentService;
import by.makedon.aistudenttester.service.SubjectService;
import by.makedon.aistudenttester.service.TestSessionService;
import by.makedon.aistudenttester.util.PageUtil;
import org.apache.commons.lang3.time.DurationFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.Duration;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminController {
	private static final String TIME_FORMAT = "HH:mm:ss";

	private static DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd, HH:mm:ss");

	private TestSessionService testSessionService;
	private StudentGroupService studentGroupService;
	private StudentService studentService;
	private SubjectService subjectService;

	@GetMapping
	public String getAdmin(Model model,
	                       RedirectAttributes redirectAttributes,
	                       @PageableDefault(value = 20, size = 20) Pageable pageable,
	                       @RequestParam(value = "studentGroupID", required = false) StudentGroup studentGroup,
	                       @RequestParam(value = "studentID", required = false) Student student,
	                       @RequestParam(value = "subjectID", required = false) Subject subject,
	                       @RequestParam(required = false) String error) {
		if ((studentGroup != null && !studentGroup.isActive()) ||
				(student != null && !student.isActive()) ||
				(subject != null && !subject.isActive())) {
			redirectAttributes.addAttribute("error", "admin.validation.id");
			return "redirect:/admin";
		}

		List<TestSession> testSessionList = testSessionService.getTestSessionList()
				.stream()
				.filter(ts -> studentGroup == null || ts.getStudent().getStudentGroup().equals(studentGroup))
				.filter(ts -> student == null || ts.getStudent().equals(student))
				.filter(ts -> subject == null || ts.getSubject().equals(subject))
				.collect(Collectors.toList());

		List<TestSessionReportDto> reportList = new ArrayList<>();
		Page<TestSession> page = PageUtil.getPage(testSessionList, pageable);
		page.forEach(testSession -> {
			TestSessionReportDto report = new TestSessionReportDto();

			report.setTestNumber(testSession.getID().toString());
			report.setSubject(testSession.getSubject().getSubjectName());
			report.setMark(testSession.getMark().toString());

			Student studentFromTestSession = testSession.getStudent();
			report.setGroup(String.valueOf(studentFromTestSession.getStudentGroup().getStudentGroupNumber()));
			report.setStudent(studentFromTestSession.getName());

			Duration duration = Duration.between(testSession.getCreatedDate(), testSession.getFinishedDate());
			report.setDuration(DurationFormatUtils.formatDuration(duration.toMillis(), TIME_FORMAT));

			report.setBegin(testSession.getCreatedDate().format(dateTimeFormatter));
			report.setEnd(testSession.getFinishedDate().format(dateTimeFormatter));

			reportList.add(report);
		});

		List<StudentGroup> studentGroupList = studentGroupService.getStudentGroupList();
		model.addAttribute("studentGroupList", studentGroupList);

		if (student != null) {
			model.addAttribute("studentList", studentService.getStudentListByStudentGroupNumber(student.getStudentGroup().getStudentGroupNumber()));
		} else if (studentGroup != null) {
			model.addAttribute("studentList", studentService.getStudentListByStudentGroupNumber(studentGroup.getStudentGroupNumber()));
		}

		List<Subject> subjectList = subjectService.getSubjectList();
		model.addAttribute("subjectList", subjectList);

		String url = String.format("/admin?studentGroupID=%s&studentID=%s&subjectID=%s&page=",
				studentGroup == null ? "" : studentGroup.getID().toString(),
				student == null ? "" : student.getID().toString(),
				subject == null ? "" : subject.getID().toString());

		model.addAttribute("url", url);
		model.addAttribute("page", page);
		model.addAttribute("error", error);

		model.addAttribute("studentGroup", studentGroup);
		model.addAttribute("student", student);
		model.addAttribute("subject", subject);
		model.addAttribute("reportList", reportList);

		return "admin/admin";
	}

	@GetMapping(path = "/ajax/studentList/{studentGroupNumber}", produces = MediaType.APPLICATION_JSON_VALUE)
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

//	Getters/Setters

	@Autowired
	public void setTestSessionService(TestSessionService testSessionService) {
		this.testSessionService = testSessionService;
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
}