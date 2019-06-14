package by.makedon.aistudenttester.controller.admin;

import by.makedon.aistudenttester.docapi.FileValidator;
import by.makedon.aistudenttester.docapi.QuestionParser;
import by.makedon.aistudenttester.domain.bean.Question;
import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.dto.QuestionDto;
import by.makedon.aistudenttester.dto.QuestionReportDto;
import by.makedon.aistudenttester.dto.SubjectTopicDto;
import by.makedon.aistudenttester.dto.TopicDto;
import by.makedon.aistudenttester.service.QuestionService;
import by.makedon.aistudenttester.service.SubjectService;
import by.makedon.aistudenttester.service.TopicService;
import by.makedon.aistudenttester.util.PageUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.*;
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

	private FileValidator fileValidator;
	private QuestionParser questionParser;

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

		Set<Subject> validSubjectSet = new HashSet<>(subjectService.getValidSubjectList());

		if (subjectList.size() != validSubjectSet.size()) {
			model.addAttribute("notificationSubjectList", subjectList.stream()
					.filter(s -> !validSubjectSet.contains(s))
					.collect(Collectors.toList()));
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
	                                 QuestionDto changeQuestionDto,
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

	@GetMapping("/add")
	public String getAddQuestion(Model model) {
		return "redirect:/admin/question/add/1";
	}

	@GetMapping("/add/{addTypeID}")
	public String getAddQuestionByAddTypeID(Model model,
	                                        @PathVariable String addTypeID,
	                                        @RequestParam(required = false, value = "topicID") Topic topic,
	                                        @RequestParam(required = false) String questionName,
	                                        @RequestParam(required = false) String firstAnswer,
	                                        @RequestParam(required = false) String secondAnswer,
	                                        @RequestParam(required = false) String thirdAnswer,
	                                        @RequestParam(required = false) String fourthAnswer,
	                                        @RequestParam(required = false) String fifthAnswer,
	                                        @RequestParam(required = false) String rightAnswer,
	                                        @RequestParam(required = false) String addedSuccessfully,
	                                        @RequestParam(required = false) List<String> errors) {
		Optional<AddType> optionalAddType = Arrays.stream(AddType.values())
				.filter(at -> at.getAddTypeID().equals(addTypeID))
				.findFirst();

		if (!optionalAddType.isPresent() || (topic != null && !topic.isActive())) {
			return "redirect:/admin/question/add/1";
		}

		AddType addType = optionalAddType.get();
		switch (addType) {
			case ONE_QUESTION:
				List<SubjectTopicDto> reportList = new ArrayList<>();

				subjectService.getSubjectList().forEach(subject -> {
					topicService.getTopicListBySubjectID(subject.getID()).forEach(t -> {
						SubjectTopicDto report = new SubjectTopicDto();
						report.setSubjectTopicName(String.format("%s - %s", subject.getSubjectName(), t.getTopicName()));
						report.setTopicID(t.getID());
						reportList.add(report);
					});
				});

				model.addAttribute("topic", topic);

				model.addAttribute("questionName", questionName);
				model.addAttribute("firstAnswer", firstAnswer);
				model.addAttribute("secondAnswer", secondAnswer);
				model.addAttribute("thirdAnswer", thirdAnswer);
				model.addAttribute("fourthAnswer", fourthAnswer);
				model.addAttribute("fifthAnswer", fifthAnswer);
				model.addAttribute("rightAnswer", rightAnswer);

				model.addAttribute("reportList", reportList);
				break;
			case FEW_QUESTIONS:
				break;
		}

		model.addAttribute("addedSuccessfully", addedSuccessfully);
		model.addAttribute("errors", errors);
		model.addAttribute("addTypeID", addTypeID);
		return "admin/addQuestion";
	}

	@PostMapping("/add/save")
	public String saveQuestion(Model model,
	                           RedirectAttributes redirectAttributes,
	                           @RequestParam(value = "topicID") Topic topic,
	                           @RequestParam String questionName,
	                           @RequestParam String firstAnswer,
	                           @RequestParam String secondAnswer,
	                           @RequestParam String thirdAnswer,
	                           @RequestParam String fourthAnswer,
	                           @RequestParam String fifthAnswer,
	                           @RequestParam String rightAnswer) {
		Set<String> errors = new TreeSet<>();

		if (topic == null || StringUtils.isBlank(questionName.trim()) || StringUtils.isBlank(firstAnswer.trim()) ||
				StringUtils.isBlank(secondAnswer.trim()) || StringUtils.isBlank(thirdAnswer.trim()) || StringUtils.isBlank(fourthAnswer.trim()) ||
				StringUtils.isBlank(fifthAnswer.trim()) || StringUtils.isBlank(rightAnswer.trim())) {
			errors.add("add.question.validation.blank");
		}

		if (NumberUtils.isCreatable(rightAnswer.trim())) {
			int answer = Integer.valueOf(rightAnswer.trim());
			if (answer < 1 || answer > 5) {
				errors.add("add.question.validation.right.answer.incorrect.size");
			}
		} else {
			errors.add("add.question.validation.right.answer.not.number");
		}

		if (errors.isEmpty()) {
			Question question = new Question();
			question.setQuestionName(questionName.trim());
			question.setFirstAnswer(firstAnswer.trim());
			question.setSecondAnswer(secondAnswer.trim());
			question.setThirdAnswer(thirdAnswer.trim());
			question.setFourthAnswer(fourthAnswer.trim());
			question.setFifthAnswer(fifthAnswer.trim());
			question.setRightAnswer(Integer.valueOf(rightAnswer.trim()));
			question.setActive(true);

			questionService.addQuestion(question, topic);

			redirectAttributes.addAttribute("addedSuccessfully", "add.question.question.added.successfully");
		} else {
			if (topic != null) {
				redirectAttributes.addAttribute("topicID", topic.getID());
			}

			redirectAttributes.addAttribute("errors", errors);
			redirectAttributes.addAttribute("questionName", questionName);
			redirectAttributes.addAttribute("firstAnswer", firstAnswer);
			redirectAttributes.addAttribute("secondAnswer", secondAnswer);
			redirectAttributes.addAttribute("thirdAnswer", thirdAnswer);
			redirectAttributes.addAttribute("fourthAnswer", fourthAnswer);
			redirectAttributes.addAttribute("fifthAnswer", fifthAnswer);
			redirectAttributes.addAttribute("rightAnswer", rightAnswer);
		}

		return "redirect:/admin/question/add/1";
	}

	@PostMapping("/add/upload")
	public String uploadFile(Model model,
	                         RedirectAttributes redirectAttributes,
	                         @RequestParam MultipartFile file) {
		fileValidator.validate(file);

		List<String> errors = fileValidator.getErrors();
		if (errors.isEmpty()) {
			questionParser.parseText(fileValidator.getText());
			questionService.addQuestion(questionParser.getTopicQuestionListMap());

			redirectAttributes.addAttribute("addedSuccessfully", "add.question.question.list.added.successfully");
		} else {
			redirectAttributes.addAttribute("errors", errors);
		}

		return "redirect:/admin/question/add/2";
	}

	@GetMapping("/template/download")
	public ResponseEntity<Resource> downloadTemplate(Model model,
	                                                 HttpServletRequest request,
	                                                 CookieLocaleResolver localeResolver) {
		final String DIR_PATH = "static/files/";
		final String TEMPLATE_FILENAME = String.format("Question template (%s).pdf", localeResolver.resolveLocale(request));
		Resource resource = new ClassPathResource(String.format("%s%s", DIR_PATH, TEMPLATE_FILENAME));

		return ResponseEntity.ok()
				.contentType(MediaType.APPLICATION_PDF)
				.header(HttpHeaders.CONTENT_DISPOSITION, String.format("attachment;filename=\"%s\"", TEMPLATE_FILENAME))
				.body(resource);
	}

	enum AddType {
		ONE_QUESTION("1"),
		FEW_QUESTIONS("2");

		private String addTypeID;

		AddType(String addTypeID) {
			this.addTypeID = addTypeID;
		}

		public String getAddTypeID() {
			return addTypeID;
		}
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

	@Autowired
	public void setFileValidator(FileValidator fileValidator) {
		this.fileValidator = fileValidator;
	}

	@Autowired
	public void setQuestionParser(QuestionParser questionParser) {
		this.questionParser = questionParser;
	}
}