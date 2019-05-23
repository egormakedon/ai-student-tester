package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Question;
import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.dto.ChangeQuestionDto;
import by.makedon.aistudenttester.dto.QuestionReportDto;
import by.makedon.aistudenttester.dto.TopicDto;
import by.makedon.aistudenttester.service.QuestionService;
import by.makedon.aistudenttester.service.SubjectService;
import by.makedon.aistudenttester.service.TopicService;
import by.makedon.aistudenttester.util.PageUtil;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Yahor Makedon
 */
@Controller
@RequestMapping("/admin/question")
@PreAuthorize("hasAuthority('ADMIN')")
public class QuestionController {
	private QuestionService questionService;
	private SubjectService subjectService;
	private TopicService topicService;

	@GetMapping
	public String getQuestion(Model model,
	                          RedirectAttributes redirectAttributes,
	                          @PageableDefault(value = 20, size = 20) Pageable pageable,
	                          @RequestParam(value = "subjectID", required = false) Subject subject,
	                          @RequestParam(value = "topicID", required = false) Topic topic,
	                          @RequestParam(required = false) String error,
	                          @RequestParam(required = false) Boolean removedSuccessfully) {
		if ((subject != null && !subject.isActive()) || (topic != null && !topic.isActive())) {
			redirectAttributes.addAttribute("error", "question.validation.id");
			return "redirect:/admin/question";
		}

		List<Question> questionList = questionService.getQuestionList()
				.stream()
				.filter(ql -> subject == null || ql.getTopics().iterator().next().getSubject().equals(subject))
				.filter(ql -> topic == null || ql.getTopics().iterator().next().equals(topic))
				.collect(Collectors.toList());

		List<QuestionReportDto> reportList = new ArrayList<>();
		Page<Question> page = PageUtil.getPage(questionList, pageable);
		page.forEach(question -> {
			QuestionReportDto report = new QuestionReportDto();

			report.setQuestionNumber(question.getID().toString());
			report.setQuestionName(question.getQuestionName());
			report.setTopic(question.getTopics().iterator().next().getTopicName());
			report.setSubject(question.getTopics().iterator().next().getSubject().getSubjectName());

			reportList.add(report);
		});

		List<Subject> subjectList = subjectService.getSubjectList();
		model.addAttribute("subjectList", subjectList);

		List<Subject> validSubjectList = subjectService.getValidSubjectList();
		if (subjectList.size() != validSubjectList.size()) {
			subjectList.removeAll(validSubjectList);
			model.addAttribute("notificationSubjectList", subjectList);
		}

		if (topic != null) {
			model.addAttribute("topicList", topicService.getTopicListBySubjectID(topic.getSubject().getID()));
		} else if (subject != null) {
			model.addAttribute("topicList", topicService.getTopicListBySubjectID(subject.getID()));
		}

		String url = String.format("/admin/question?subjectID=%s&topicID=%s&page=",
				subject == null ? "" : subject.getID().toString(),
				topic == null ? "" : topic.getID().toString());

		model.addAttribute("url", url);
		model.addAttribute("page", page);
		model.addAttribute("error", error);
		model.addAttribute("removedSuccessfully", removedSuccessfully);

		model.addAttribute("subject", subject);
		model.addAttribute("topic", topic);
		model.addAttribute("reportList", reportList);

		return "admin/question";
	}

	@GetMapping("/change")
	public String getChangeQuestion(Model model,
	                                @RequestParam(value = "questionID") Question question,
	                                @RequestParam(required = false) String error,
	                                @RequestParam(required = false) Boolean success) {
		if (question == null) {
			model.addAttribute("questionError", "change.question.validation.id");
			return "admin/changeQuestion";
		}

		model.addAttribute("success", success);
		model.addAttribute("error", error);

		model.addAttribute("questionID", question.getID());
		model.addAttribute("questionName", question.getQuestionName());
		model.addAttribute("firstAnswer", question.getFirstAnswer());
		model.addAttribute("secondAnswer", question.getSecondAnswer());
		model.addAttribute("thirdAnswer", question.getThirdAnswer());
		model.addAttribute("fourthAnswer", question.getFourthAnswer());
		model.addAttribute("fifthAnswer", question.getFifthAnswer());
		model.addAttribute("rightAnswer", question.getRightAnswer());

		return "admin/changeQuestion";
	}

	@PostMapping("/change/save")
	public String changeQuestionSave(Model model,
	                                 RedirectAttributes redirectAttributes,
	                                 ChangeQuestionDto changeQuestionDto,
	                                 @RequestParam(value = "questionID") Question question) {
		String rightAnswer = changeQuestionDto.getRightAnswer().trim();
		if (NumberUtils.isCreatable(rightAnswer)) {
			int answer = Integer.valueOf(rightAnswer);
			if (answer < 1 || answer > 5) {
				redirectAttributes.addAttribute("questionID", question.getID());
				redirectAttributes.addAttribute("error", "change.question.validation.right.answer.incorrect.size");
				return "redirect:/admin/question/change";
			}
		} else {
			redirectAttributes.addAttribute("questionID", question.getID());
			redirectAttributes.addAttribute("error", "change.question.validation.right.answer.not.number");
			return "redirect:/admin/question/change";
		}

		question.setQuestionName(changeQuestionDto.getQuestionName());
		question.setFirstAnswer(changeQuestionDto.getFirstAnswer());
		question.setSecondAnswer(changeQuestionDto.getSecondAnswer());
		question.setThirdAnswer(changeQuestionDto.getThirdAnswer());
		question.setFourthAnswer(changeQuestionDto.getFourthAnswer());
		question.setFifthAnswer(changeQuestionDto.getFifthAnswer());
		question.setRightAnswer(Integer.valueOf(rightAnswer));

		questionService.save(question);

		redirectAttributes.addAttribute("questionID", question.getID());
		redirectAttributes.addAttribute("success", true);

		return "redirect:/admin/question/change";
	}

	@PostMapping("/ajax/remove")
	@ResponseStatus(HttpStatus.OK)
	public void removeQuestion(Model model, @RequestParam(value = "questionID") Question question) {
		questionService.remove(question);
	}

	@GetMapping(path = "/ajax/topicList/{subjectID}", produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<TopicDto> getTopicList(Model model, @PathVariable long subjectID) {
		List<TopicDto> reportList = new ArrayList<>();

		topicService.getTopicListBySubjectID(subjectID).forEach(topic -> {
			TopicDto topicDto = new TopicDto();

			topicDto.setTopicID(String.valueOf(topic.getID()));
			topicDto.setTopicName(topic.getTopicName());

			reportList.add(topicDto);
		});

		return reportList;
	}

//	Getters/Setters

	@Autowired
	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}

	@Autowired
	public void setSubjectService(SubjectService subjectService) {
		this.subjectService = subjectService;
	}

	@Autowired
	public void setTopicService(TopicService topicService) {
		this.topicService = topicService;
	}
}