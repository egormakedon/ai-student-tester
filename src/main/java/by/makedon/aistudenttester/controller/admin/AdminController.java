package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Student;
import by.makedon.aistudenttester.domain.bean.StudentGroup;
import by.makedon.aistudenttester.domain.bean.TestSession;
import by.makedon.aistudenttester.dto.TestSessionReportDto;
import by.makedon.aistudenttester.service.StudentGroupService;
import by.makedon.aistudenttester.service.StudentService;
import by.makedon.aistudenttester.service.TestSessionService;
import org.apache.commons.lang3.time.DurationFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.Duration;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminController {
	private static final String TIME_FORMAT = "HH:mm:ss";
	private static final String DATE_TIME_FORMAT = "yyyy-MM-dd, HH:mm:ss";

	private TestSessionService testSessionService;
	private StudentGroupService studentGroupService;
	private StudentService studentService;

	@GetMapping
	public String getAdmin(Model model,
	                       @RequestParam(value = "studentGroupID", required = false) StudentGroup studentGroup,
	                       @RequestParam(value = "studentID", required = false) Student student) {
		List<TestSession> testSessionList = testSessionService.getTestSessionList();
		List<TestSessionReportDto> reportList = new ArrayList<>();
		DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern(DATE_TIME_FORMAT);

		testSessionList
				.stream()
				.filter(ts -> studentGroup == null || ts.getStudent().getStudentGroup().equals(studentGroup))
				.filter(ts -> student == null || ts.getStudent().equals(student))
				.sorted(Comparator.comparing(TestSession::getFinishedDate).reversed())
				.forEach(testSession -> {
					TestSessionReportDto report = new TestSessionReportDto();

					report.setTestNumber(testSession.getID().toString());
					report.setMark(testSession.getMark().toString());

					Student studentFromTestSession = testSession.getStudent();
					report.setGroup(String.valueOf(studentFromTestSession.getStudentGroup().getStudentGroupNumber()));
					report.setStudent(studentFromTestSession.getName());

					Duration duration = Duration.between(testSession.getCreatedDate(), testSession.getFinishedDate());
					report.setDuration(DurationFormatUtils.formatDuration(duration.toMillis(), TIME_FORMAT));

					report.setStart(testSession.getCreatedDate().format(dateTimeFormatter));
					report.setFinish(testSession.getFinishedDate().format(dateTimeFormatter));

					reportList.add(report);
				});

		model.addAttribute("studentGroup", studentGroup);
		model.addAttribute("student", student);
		model.addAttribute("reportList", reportList);

		List<StudentGroup> studentGroupList = studentGroupService.getStudentGroupList();
		model.addAttribute("studentGroupList", studentGroupList);

		if (student != null) {
			model.addAttribute("studentList", studentService.getStudentListByStudentGroupNumber(student.getStudentGroup().getStudentGroupNumber()));
		} else if (studentGroup != null) {
			model.addAttribute("studentList", studentService.getStudentListByStudentGroupNumber(studentGroup.getStudentGroupNumber()));
		}

		return "admin/admin";
	}

	@GetMapping(path = "/ajax/studentList/{studentGroupNumber}", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Student> getStudentList(Model model, @PathVariable long studentGroupNumber) {
		return studentService.getStudentListByStudentGroupNumber(studentGroupNumber);
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
}