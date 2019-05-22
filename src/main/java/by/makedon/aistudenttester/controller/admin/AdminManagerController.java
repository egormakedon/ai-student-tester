package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.ApplicationUser;
import by.makedon.aistudenttester.dto.ApplicationUserDto;
import by.makedon.aistudenttester.service.ApplicationUserService;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin/manage")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminManagerController {
	private ApplicationUserService applicationUserService;

	@GetMapping
	public String getAdminManager(Model model,
	                              @RequestParam(required = false) Boolean droppedSuccessfully,
	                              @RequestParam(required = false) Boolean validationError,
	                              @RequestParam(required = false) Boolean addedSuccessfully) {
		List<ApplicationUserDto> reportList = new ArrayList<>();

		applicationUserService.getAdmins()
				.forEach(u -> reportList.add(new ApplicationUserDto(u.getID().toString(), u.getDisplayName())));

		model.addAttribute("droppedSuccessfully", droppedSuccessfully);
		model.addAttribute("validationError", validationError);
		model.addAttribute("addedSuccessfully", addedSuccessfully);
		model.addAttribute("reportList", reportList);

		return "admin/adminManager";
	}

	@PostMapping("/dropPassword")
	public String dropPassword(Model model,
	                           RedirectAttributes redirectAttributes,
	                           @RequestParam("applicationUserID") ApplicationUser applicationUser) {
		applicationUserService.changePassword(applicationUser, BaseConstants.DEFAULT_ADMIN_PASSWORD);
		redirectAttributes.addAttribute("droppedSuccessfully", true);
		return "redirect:/admin/manage";
	}

	@PostMapping("/add")
	public String addAdmin(Model model,
	                       RedirectAttributes redirectAttributes,
	                       String username) {
		if (applicationUserService.getApplicationUserByUsername(username).isPresent()) {
			redirectAttributes.addAttribute("validationError", true);
			return "redirect:/admin/manage";
		}

		applicationUserService.addNewAdmin(username);

		redirectAttributes.addAttribute("addedSuccessfully", true);

		return "redirect:/admin/manage";
	}

//	Getters/Setters

	@Autowired
	public void setApplicationUserService(ApplicationUserService applicationUserService) {
		this.applicationUserService = applicationUserService;
	}
}