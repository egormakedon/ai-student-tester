package by.makedon.aistudenttester.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Yahor Makedon
 */
@Controller
public class MainPageController {
	@PreAuthorize("permitAll()")
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getMainPage1() {
		return "m";
	}
	
	@PreAuthorize("permitAll()")
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String getMainPage2() {
		return "main";
	}
}