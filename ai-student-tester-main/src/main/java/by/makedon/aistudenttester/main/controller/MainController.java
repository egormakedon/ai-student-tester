package by.makedon.aistudenttester.main.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Yahor Makedon
 */
@Controller
public class MainController {
	@PreAuthorize("permitAll()")
	@RequestMapping(value = "/ai-student-tester", method = RequestMethod.GET)
	public String main(Model model) {
		return "public/main";
	}
	
	@PreAuthorize("permitAll()")
	@RequestMapping(value = "/ai-student-tester/main", method = RequestMethod.GET)
	public String main2(Model model) {
		return "public/main";
	}
}