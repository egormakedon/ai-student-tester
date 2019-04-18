package by.makedon.aistudenttester.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	@GetMapping
	public String getLogin(Model model) {
		return "login";
	}
}