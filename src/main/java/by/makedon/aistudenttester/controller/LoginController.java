package by.makedon.aistudenttester.main.controller;

import org.springframework.stereotype.Controller;

/**
 * @author Yahor Makedon
 */
@Controller
public class LoginController {
    private static final String USERNAME_OR_PASSWORD = "usernameOrPassword";

    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error) {
        if (error != null) {
            model.addAttribute(Constant.RESULT, USERNAME_OR_PASSWORD);
        }

        model.addAttribute(Constant.URL, Page.LOGIN.getUrl());
        return Page.LOGIN.getPage();
    }
}