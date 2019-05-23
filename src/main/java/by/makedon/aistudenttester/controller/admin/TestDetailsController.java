package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.TestSession;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin/test/details")
@PreAuthorize("hasAuthority('ADMIN')")
public class TestDetailsController {
	@GetMapping("/{testSessionID}")
	public String getTestDetails(Model model, @PathVariable("testSessionID") TestSession testSession) {
		if (testSession == null || !testSession.isActive()) {
			return "redirect:/admin";
		}

		System.out.println(testSession.getQ1());
		System.out.println(testSession.getQ2());

		return "admin/testDetails";
	}
}