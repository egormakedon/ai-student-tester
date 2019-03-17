package by.makedon.aistudenttester.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * @author Yahor Makedon
 */
@ControllerAdvice
public class CurrentUserAdviceController {
    @ModelAttribute("currentUser")
    public User getUser(Authentication authentication) {
        return (authentication != null) ? (User) authentication.getPrincipal() : null;
    }
}