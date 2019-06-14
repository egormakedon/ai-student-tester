package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Student;
import by.makedon.aistudenttester.domain.bean.StudentGroup;
import by.makedon.aistudenttester.service.StudentGroupService;
import by.makedon.aistudenttester.service.StudentService;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Collections;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin/groupstudent")
@PreAuthorize("hasAuthority('ADMIN')")
public class StudentGroupStudentController {
	private StudentGroupService studentGroupService;
	private StudentService studentService;

	@GetMapping
	public String getGroupStudent(Model model,
	                              @RequestParam(required = false, value = "studentGroupID") StudentGroup studentGroup,
	                              @RequestParam(required = false) String success,
	                              @RequestParam(required = false) List<String> errors) {
		if (studentGroup != null && !studentGroup.isActive()) {
			return "redirect:/admin/groupstudent";
		}

		if (studentGroup != null) {
			model.addAttribute("studentList", studentService.getStudentListByStudentGroupNumber(studentGroup.getStudentGroupNumber()));
		}

		model.addAttribute("errors", errors);
		model.addAttribute("success", success);
		model.addAttribute("studentGroup", studentGroup);
		model.addAttribute("studentGroupList", studentGroupService.getStudentGroupList());

		return "admin/groupStudent";
	}

	@PostMapping("/group/add")
	public String addStudentGroup(Model model,
	                              RedirectAttributes redirectAttributes,
	                              @RequestParam String studentGroupNumber) {
		if (StringUtils.isBlank(studentGroupNumber)) {
			redirectAttributes.addAttribute("errors", Collections.singletonList("group.student.validation.group.number.blank"));
			return "redirect:/admin/groupstudent";
		}

		studentGroupNumber = studentGroupNumber.trim();

		if (NumberUtils.isCreatable(studentGroupNumber)) {
			if (studentGroupService.getStudentGroupByStudentGroupNumber(Long.valueOf(studentGroupNumber)).isPresent()) {
				redirectAttributes.addAttribute("errors", Collections.singletonList("group.student.validation.group.exists"));
				return "redirect:/admin/groupstudent";
			}
		} else {
			redirectAttributes.addAttribute("errors", Collections.singletonList("group.student.validation.group.number.not.number"));
			return "redirect:/admin/groupstudent";
		}

		StudentGroup studentGroup = new StudentGroup();
		studentGroup.setStudentGroupNumber(Long.valueOf(studentGroupNumber));
		studentGroup.setActive(true);
		studentGroupService.save(studentGroup);

		redirectAttributes.addAttribute("success", "group.student.group.added.successfully");
		return "redirect:/admin/groupstudent";
	}

	@PostMapping("/ajax/group/remove")
	@ResponseStatus(HttpStatus.OK)
	public void removeStudentGroup(Model model, @RequestParam(value = "studentGroupID") StudentGroup studentGroup) {
		studentGroupService.remove(studentGroup);
	}

	@PostMapping("/ajax/student/remove")
	@ResponseStatus(HttpStatus.OK)
	public void removeStudent(Model model, @RequestParam(value = "studentID") Student student) {
		studentService.remove(student);
	}

//	Getters/Setters

	@Autowired
	public void setStudentGroupService(StudentGroupService studentGroupService) {
		this.studentGroupService = studentGroupService;
	}

	@Autowired
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
}