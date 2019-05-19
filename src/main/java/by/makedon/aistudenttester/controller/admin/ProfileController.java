package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.ApplicationUser;
import by.makedon.aistudenttester.domain.bean.Role;
import by.makedon.aistudenttester.dto.ProfileDto;
import by.makedon.aistudenttester.dto.validator.ProfileDtoValidator;
import by.makedon.aistudenttester.service.ApplicationUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin/profile")
@PreAuthorize("hasAuthority('ADMIN')")
public class ProfileController {
	private ProfileDtoValidator validator;
	private ApplicationUserService userService;
	private BCryptPasswordEncoder passwordEncoder;

	@GetMapping
	public String getProfile(Model model,
	                         Authentication authentication,
	                         @RequestParam(required = false) List<String> errors) {
		ApplicationUser applicationUser = (ApplicationUser) authentication.getPrincipal();

		model.addAttribute("username", applicationUser.getUsername());
		model.addAttribute("roles", applicationUser.getRoles().stream().sorted(Comparator.comparing(Role::getAuthority)).collect(Collectors.toList()));
		model.addAttribute("displayName", applicationUser.getDisplayName());

		if (errors != null) {
			model.addAttribute("errors", errors);
		}

		return "admin/profile";
	}

	@PostMapping("/save")
	public String saveProfile(Model model,
	                          RedirectAttributes redirectAttributes,
	                          Authentication authentication,
	                          ProfileDto profileDto) {
		List<String> errors = validator.validate(profileDto, authentication);

		if (errors.isEmpty()) {
			ApplicationUser applicationUser = (ApplicationUser) authentication.getPrincipal();
			String newDisplayName = profileDto.getDisplayName().trim();
			String newPassword = profileDto.getNewPassword().trim();

			if (!newDisplayName.equals(applicationUser.getDisplayName())) {
				applicationUser.setDisplayName(newDisplayName);
			}

			if (!StringUtils.isBlank(newPassword)) {
				applicationUser.setPassword(passwordEncoder.encode(newPassword));
			}

			applicationUser = userService.save(applicationUser);
			SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken(applicationUser, applicationUser.getPassword(), applicationUser.getAuthorities()));
		}

		redirectAttributes.addAttribute("errors", errors);
		return "redirect:/admin/profile";
	}

	@PostMapping("/ajax/remove")
	@ResponseStatus(HttpStatus.OK)
	public void removeProfile(Model model,
	                          Authentication authentication,
	                          SecurityContextLogoutHandler logoutHandler,
	                          HttpServletRequest request,
	                          HttpServletResponse response) {
		ApplicationUser applicationUser = userService.remove((ApplicationUser) authentication.getPrincipal());
		SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken(applicationUser, applicationUser.getPassword(), applicationUser.getAuthorities()));

		logoutHandler.logout(request, response, SecurityContextHolder.getContext().getAuthentication());
	}

//	Getters/Setters

	@Autowired
	public void setValidator(ProfileDtoValidator validator) {
		this.validator = validator;
	}

	@Autowired
	public void setApplicationUserService(ApplicationUserService userService) {
		this.userService = userService;
	}

	@Autowired
	public void setPasswordEncoder(BCryptPasswordEncoder passwordEncoder) {
		this.passwordEncoder = passwordEncoder;
	}
}