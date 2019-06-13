package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Student;
import by.makedon.aistudenttester.domain.bean.StudentGroup;
import by.makedon.aistudenttester.service.StudentGroupService;
import by.makedon.aistudenttester.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
	                              @RequestParam(required = false) String removedSuccessfully) {
		if (studentGroup != null && !studentGroup.isActive()) {
			return "redirect:/admin/groupstudent";
		}

		if (studentGroup != null) {
			model.addAttribute("studentList", studentService.getStudentListByStudentGroupNumber(studentGroup.getStudentGroupNumber()));
		}

		model.addAttribute("removedSuccessfully", removedSuccessfully);
		model.addAttribute("studentGroup", studentGroup);
		model.addAttribute("studentGroupList", studentGroupService.getStudentGroupList());

		return "admin/groupStudent";
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