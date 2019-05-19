package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.domain.bean.Question;
import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.dto.ChangeQuestionDto;
import by.makedon.aistudenttester.dto.QuestionReportDto;
import by.makedon.aistudenttester.service.QuestionService;
import by.makedon.aistudenttester.util.PageUtil;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
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

	@GetMapping
	public String getQuestion(Model model,
	                          RedirectAttributes redirectAttributes,
	                          @PageableDefault(value = 20, size = 20) Pageable pageable,
	                          @RequestParam(value = "subjectID", required = false) Subject subject,
	                          @RequestParam(value = "topicID", required = false) Topic topic,
	                          @RequestParam(required = false) String error) {
		if ((subject != null && !subject.isActive()) || (topic != null && !topic.isActive())) {
			redirectAttributes.addAttribute("error", "question.validation.id");
			return "redirect:/admin/question";
		}

		List<Question> questionList = questionService.getQuestionListOrderByName();
		List<QuestionReportDto> reportList = new ArrayList<>();

		questionList = questionList
				.stream()
				.filter(ql -> subject == null || ql.getTopics().iterator().next().getSubject().equals(subject))
				.filter(ql -> topic == null || ql.getTopics().iterator().next().equals(topic))
				.collect(Collectors.toList());

		Page<Question> page = PageUtil.getPage(questionList, pageable);

		page.forEach(question -> {
			QuestionReportDto report = new QuestionReportDto();

			report.setQuestionNumber(question.getID().toString());
			report.setQuestionName(question.getQuestionName());
			report.setTopic(question.getTopics().iterator().next().getTopicName());
			report.setSubject(question.getTopics().iterator().next().getSubject().getSubjectName());

			reportList.add(report);
		});

//		List<StudentGroup> studentGroupList = studentGroupService.getStudentGroupList();
//		model.addAttribute("studentGroupList", studentGroupList);
//
//		if (student != null) {
//			model.addAttribute("studentList", studentService.getStudentListByStudentGroupNumber(student.getStudentGroup().getStudentGroupNumber()));
//		} else if (studentGroup != null) {
//			model.addAttribute("studentList", studentService.getStudentListByStudentGroupNumber(studentGroup.getStudentGroupNumber()));
//		}

		String url = String.format("/admin/question?subjectID=%s&topicID=%s&page=",
				subject == null ? "" : subject.getID().toString(),
				topic == null ? "" : topic.getID().toString());

		model.addAttribute("url", url);
		model.addAttribute("page", page);

		model.addAttribute("subject", subject);
		model.addAttribute("topic", topic);
		model.addAttribute("reportList", reportList);

		return "admin/question";
	}

	@GetMapping("/change")
	public String getChangeQuestion(Model model,
	                                @RequestParam(value = "questionID") Question question,
	                                @RequestParam(required = false) String error,
	                                @RequestParam(required = false) String success) {
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
		question.setActive(false);
		questionService.save(question);
	}

//	Getters/Setters

	@Autowired
	public void setQuestionService(QuestionService questionService) {
		this.questionService = questionService;
	}
}