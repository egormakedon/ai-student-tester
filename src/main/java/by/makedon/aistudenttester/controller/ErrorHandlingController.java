package by.makedon.aistudenttester.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * @author Yahor Makedon
 */
@ControllerAdvice
public class ErrorHandlingController {
    @ExceptionHandler(Exception.class)
    public String controllerException(Model model, Exception e) {
        model.addAttribute("exceptionMessage", e.getMessage());
        return "redirect:/error";
    }
}