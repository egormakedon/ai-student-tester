package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Student;
import by.makedon.aistudenttester.domain.bean.TestSession;
import by.makedon.aistudenttester.dto.TestDetailsDto;
import org.apache.commons.lang3.time.DurationFormatUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.Duration;
import java.time.format.DateTimeFormatter;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin/test/details")
@PreAuthorize("hasAuthority('ADMIN')")
public class TestDetailsController {
	private static final String TIME_FORMAT = "HH:mm:ss";

	private static DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd, HH:mm:ss");

	@GetMapping("/{testSessionID}")
	public String getTestDetails(Model model, @PathVariable("testSessionID") TestSession testSession) {
		if (testSession == null || !testSession.isActive()) {
			return "redirect:/admin";
		}

		TestDetailsDto testDetailsDto = new TestDetailsDto();

		testDetailsDto.setTestNumber(testSession.getID().toString());
		testDetailsDto.setSubject(testSession.getSubject().getSubjectName());
		testDetailsDto.setMark(testSession.getMark().toString());

		Student student = testSession.getStudent();
		testDetailsDto.setStudent(String.format("%s %s %s", student.getLastName(), student.getFirstName(), student.getMiddleName()));
		testDetailsDto.setGroup(String.valueOf(student.getStudentGroup().getStudentGroupNumber()));
		testDetailsDto.setTicket(String.valueOf(student.getStudentTicket()));

		Duration duration = Duration.between(testSession.getCreatedDate(), testSession.getFinishedDate());
		testDetailsDto.setDuration(DurationFormatUtils.formatDuration(duration.toMillis(), TIME_FORMAT));

		testDetailsDto.setBegin(testSession.getCreatedDate().format(dateTimeFormatter));
		testDetailsDto.setEnd(testSession.getFinishedDate().format(dateTimeFormatter));

		model.addAttribute("testDetailsDto", testDetailsDto);
		return "admin/testDetails";
	}
}