package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.service.SubjectService;
import by.makedon.aistudenttester.service.TopicService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Collections;
import java.util.List;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin/subjecttopic")
@PreAuthorize("hasAuthority('ADMIN')")
public class SubjectTopicController {
	private SubjectService subjectService;
	private TopicService topicService;

	@GetMapping
	public String getSubjectTopic(Model model,
	                              @RequestParam(required = false, value = "subjectID") Subject subject,
	                              @RequestParam(required = false) String success,
	                              @RequestParam(required = false) List<String> errors) {
		if (subject != null && !subject.isActive()) {
			return "redirect:/admin/subjecttopic";
		}

		if (subject != null) {
			model.addAttribute("topicList", topicService.getTopicListBySubjectID(subject.getID()));
		}

		model.addAttribute("errors", errors);
		model.addAttribute("success", success);
		model.addAttribute("subject", subject);
		model.addAttribute("subjectList", subjectService.getSubjectList());

		return "admin/subjectTopic";
	}

	@PostMapping("/topic/add")
	public String addTopic(Model model,
	                       RedirectAttributes redirectAttributes,
	                       @RequestParam(value = "subjectID") Subject subject,
	                       @RequestParam String topicName) {
		if (subject == null || !subject.isActive()) {
			redirectAttributes.addAttribute("errors", Collections.singletonList("subject.topic.validation.subject.not.selected"));
			return "redirect:/admin/subjecttopic";
		}

		if (StringUtils.isBlank(topicName)) {
			redirectAttributes.addAttribute("errors", Collections.singletonList("subject.topic.validation.topic.name.blank"));
			return "redirect:/admin/subjecttopic";
		}

		topicName = topicName.trim();

		if (topicService.getTopicBySubjectIDAndTopicName(subject.getID(), topicName).isPresent()) {
			redirectAttributes.addAttribute("errors", Collections.singletonList("subject.topic.validation.topic.exists"));
			return "redirect:/admin/subjecttopic";
		}

		Topic topic = new Topic();
		topic.setSubject(subject);
		topic.setTopicName(topicName);
		topic.setActive(true);
		topicService.save(topic);

		redirectAttributes.addAttribute("success", "subject.topic.topic.added.successfully");
		redirectAttributes.addAttribute("subjectID", subject.getID());
		return "redirect:/admin/subjecttopic";
	}

	@PostMapping("/subject/add")
	public String addSubject(Model model,
	                         RedirectAttributes redirectAttributes,
	                         @RequestParam String subjectName) {
		if (StringUtils.isBlank(subjectName)) {
			redirectAttributes.addAttribute("errors", Collections.singletonList("subject.topic.validation.subject.name"));
			return "redirect:/admin/subjecttopic";
		}

		subjectName = subjectName.trim();

		if (subjectService.getSubjectBySubjectName(subjectName).isPresent()) {
			redirectAttributes.addAttribute("errors", Collections.singletonList("subject.topic.validation.subject.exists"));
			return "redirect:/admin/subjecttopic";
		}

		Subject subject = new Subject();
		subject.setSubjectName(subjectName);
		subject.setActive(true);
		subjectService.save(subject);

		redirectAttributes.addAttribute("success", "subject.topic.subject.added.successfully");
		redirectAttributes.addAttribute("subjectID", subject.getID());
		return "redirect:/admin/subjecttopic";
	}

	@PostMapping("/ajax/subject/remove")
	@ResponseStatus(HttpStatus.OK)
	public void removeSubject(Model model, @RequestParam(value = "subjectID") Subject subject) {
		subjectService.remove(subject);
	}

	@PostMapping("/ajax/topic/remove")
	@ResponseStatus(HttpStatus.OK)
	public void removeTopic(Model model, @RequestParam(value = "topicID") Topic topic) {
		topicService.remove(topic);
	}

//	Getters/Setters

	@Autowired
	public void setSubjectService(SubjectService subjectService) {
		this.subjectService = subjectService;
	}

	@Autowired
	public void setTopicService(TopicService topicService) {
		this.topicService = topicService;
	}
}