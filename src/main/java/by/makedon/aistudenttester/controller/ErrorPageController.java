package by.makedon.aistudenttester.main.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Yahor Makedon
 */
@Controller
public class ErrorPageController {
    @PreAuthorize("permitAll()")
    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String getErrorPage() {
        return "public/error";
    }
}