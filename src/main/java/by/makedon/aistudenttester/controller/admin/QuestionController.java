package by.makedon.aistudenttester.controller.admin;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin/question")
@PreAuthorize("hasAuthority('ADMIN')")
public class QuestionController {
	@GetMapping
	public String getQuestion(Model model) {
		return "admin/question";
	}
}