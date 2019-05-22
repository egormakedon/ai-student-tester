package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Mark;
import by.makedon.aistudenttester.service.MarkService;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.*;
import java.util.stream.Collectors;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin/strategy")
@PreAuthorize("hasAuthority('ADMIN')")
public class StrategyController {
	private static final String MARK_PREFIX = "mark_";
	private static final String SEPARATOR = "_";

	private MarkService markService;

	@GetMapping
	public String getStrategy(Model model,
	                          @RequestParam(required = false) List<String> errors,
	                          @RequestParam(required = false) Boolean savedSuccessfully) {
		model.addAttribute("markList", markService.getMarkList());
		model.addAttribute("errors", errors);
		model.addAttribute("savedSuccessfully", savedSuccessfully);
		return "admin/strategy";
	}

	@PostMapping("/save")
	public String saveStrategy(Model model,
	                         RedirectAttributes redirectAttributes,
	                         @RequestParam Map<String, String> parameters) {
		List<Mark> updatingMarks = new ArrayList<>();
		Set<String> errors = new TreeSet<>();

		List<String> keyList = parameters.keySet()
				.stream()
				.filter(k -> k.trim().toLowerCase().startsWith(MARK_PREFIX))
				.collect(Collectors.toList());

		keyList.forEach(key -> {
			String value = parameters.get(key);

			if (StringUtils.isBlank(value)) {
				errors.add("strategy.validation.mark.blank");
			} else if (!NumberUtils.isCreatable(value)) {
				errors.add("strategy.validation.mark.not.number");
			} else if (Integer.valueOf(value) < 0) {
				errors.add("strategy.validation.mark.incorrect.size");
			} else {
				int markValue = Integer.valueOf(value);
				Mark mark = markService.getMark(Long.valueOf(key.trim().split(SEPARATOR)[1])).get();

				if (markValue != mark.getMark()) {
					mark.setMark(markValue);
					updatingMarks.add(mark);
				}
			}
		});

		if (errors.isEmpty()) {
			markService.save(updatingMarks);
			redirectAttributes.addAttribute("savedSuccessfully", true);
		} else {
			redirectAttributes.addAttribute("errors", errors);
		}

		return "redirect:/admin/strategy";
	}

//	Getters/Setters

	@Autowired
	public void setMarkService(MarkService markService) {
		this.markService = markService;
	}
}