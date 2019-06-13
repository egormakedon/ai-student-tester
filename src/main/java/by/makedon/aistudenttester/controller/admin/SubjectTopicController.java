package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.service.SubjectService;
import by.makedon.aistudenttester.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
	                              @RequestParam(required = false) String removedSuccessfully) {
		if (subject != null && !subject.isActive()) {
			return "redirect:/admin/subjecttopic";
		}

		if (subject != null) {
			model.addAttribute("topicList", topicService.getTopicListBySubjectID(subject.getID()));
		}

		model.addAttribute("removedSuccessfully", removedSuccessfully);
		model.addAttribute("subject", subject);
		model.addAttribute("subjectList", subjectService.getSubjectList());

		return "admin/subjectTopic";
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