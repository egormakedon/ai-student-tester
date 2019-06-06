package by.makedon.aistudenttester.docapi;

import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.service.SubjectService;
import by.makedon.aistudenttester.service.TopicService;
import by.makedon.aistudenttester.util.BaseException;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;
import java.util.stream.Collectors;

/**
 * @author Yahor Makedon
 */
@Component
public class FileValidator {
	private static final Logger LOGGER = LoggerFactory.getLogger(FileValidator.class);

	private static final int MAX_ERROR_SIZE = 15;

	private static final String REGEX_DOC = ".+\\.doc";
	private static final String REGEX_DOCX = ".+\\.docx";

	private static final String REGEX_LINE_VALIDATION = "\\s*(Subject|Topic|Question|1|2|3|4|5|Right)\\s*:\\s*\\S.*";
	private static final String DELIMITER = ":";

	private static final String ADD_QUESTION_VALIDATION_READ_ERROR = "add.question.validation.read.error;;;%d;;%s";

	private static String subject;

	private SubjectService subjectService;
	private TopicService topicService;

	public List<String> validate(MultipartFile file) {
		List<String> errors = new ArrayList<>();

		if (file == null) {
			errors.add("add.question.validation.no.file.selected");
		} else if (file.isEmpty()) {
			errors.add("add.question.validation.file.empty");
		} else if (file.getOriginalFilename() == null) {
			errors.add("add.question.validation.wrong.filename");
		} else if (!file.getOriginalFilename().matches(REGEX_DOC) && !file.getOriginalFilename().matches(REGEX_DOCX)) {
			errors.add("add.question.validation.not.document");
		} else {
			List<String> text;

			if (file.getOriginalFilename().matches(REGEX_DOC)) {
				try (HWPFDocument document = new HWPFDocument(file.getInputStream())) {
					WordExtractor extractor = new WordExtractor(document);

					text = Arrays.stream(extractor.getParagraphText())
							.map(String::trim)
							.filter(s -> !StringUtils.isBlank(s))
							.collect(Collectors.toList());
				} catch (Exception e) {
					throw new BaseException("Error on validating upload document", e);
				}
			} else {
				try (XWPFDocument document = new XWPFDocument(file.getInputStream())) {
					text = document.getParagraphs()
							.stream()
							.map(XWPFParagraph::getText)
							.map(String::trim)
							.filter(s -> !StringUtils.isBlank(s))
							.collect(Collectors.toList());
				} catch (Exception e) {
					throw new BaseException("Error on validating upload document", e);
				}
			}

			if (text.isEmpty()) {
				errors.add("add.question.validation.file.empty");
			} else {
				LOGGER.info(String.format("Parsed text from document %s", file.getOriginalFilename()));
				for (int i = 0; i < text.size(); i++) {
					LOGGER.info(String.format("(line: %d) %s", i + 1, text.get(i)));
				}

				validateText(text, errors);
			}
		}

		return errors;
	}

	private Map<String, Set<String>> getSubjectTopicsMap()
	{
		Map<String, Set<String>> result = new HashMap<>();

		subjectService.getSubjectList().forEach(subject ->
			result.put(
					subject.getSubjectName(),
					topicService.getTopicListBySubjectID(subject.getID())
							.stream()
							.map(Topic::getTopicName)
							.collect(Collectors.toSet()))
		);

		return result;
	}

	private void validateText(List<String> text, List<String> errors) {
		Map<String, Set<String>> subjectTopicsMap = getSubjectTopicsMap();
		Step step = Step.SUBJECT;
		subject = null;
		int lineNumber = 1;

		for (String line : text) {
			if (errors.size() == MAX_ERROR_SIZE) {
				break;
			}

			if (line.matches(REGEX_LINE_VALIDATION)) {
				String key = getKey(line);

				if (validateKey(key, step)) {
					if (step == null) {
						step = Step.valueOf(key.toUpperCase());
					}

					step = nextStep(step);
				} else {
					String message;

					if (step == null) {
						message = String.format("Missing line with key \"%s\" or \"%s\"",
								Step.SUBJECT.getKey(), Step.QUESTION.getKey());
					} else {
						message = String.format("Missing line with key \"%s\"", step.getKey());
					}

					errors.add(String.format(ADD_QUESTION_VALIDATION_READ_ERROR, lineNumber,
							String.format("\"%s\". %s", line, message)));
				}

				String message = validateValue(getValue(line), key, subjectTopicsMap);
				if (message != null) {
					errors.add(String.format(ADD_QUESTION_VALIDATION_READ_ERROR, lineNumber,
							String.format("\"%s\". %s", line, message)));
				}
			} else {
				errors.add(String.format(ADD_QUESTION_VALIDATION_READ_ERROR, lineNumber,
						String.format("\"%s\"", line)));
			}

			++lineNumber;
		}

		if (errors.size() != MAX_ERROR_SIZE && step != null) {
			errors.add(String.format(ADD_QUESTION_VALIDATION_READ_ERROR, lineNumber,
					String.format("Missing line with key \"%s\"", step.getKey())));
		}
	}

	private String getKey(String line) {
		return line.substring(0, line.indexOf(DELIMITER.toCharArray()[0])).trim();
	}

	private String getValue(String line) {
		return line.substring(line.indexOf(DELIMITER.toCharArray()[0]) + 1).trim();
	}

	private boolean validateKey(String key, Step step) {
		if (step == null) {
			return key.equals(Step.SUBJECT.getKey()) || key.equals(Step.QUESTION.getKey());
		} else {
			return key.equals(step.getKey());
		}
	}

	private Step nextStep(Step currentStep) {
		switch (currentStep) {
			case SUBJECT:
				return Step.TOPIC;
			case TOPIC:
				return Step.QUESTION;
			case QUESTION:
				return Step.ONE;
			case ONE:
				return Step.TWO;
			case TWO:
				return Step.THREE;
			case THREE:
				return Step.FOUR;
			case FOUR:
				return Step.FIVE;
			case FIVE:
				return Step.RIGHT;
			case RIGHT:
				return null;
			default:
				throw new BaseException(String.format("Incorrect step - %s", currentStep));
		}
	}

	private String validateValue(String value, String key, Map<String, Set<String>> subjectTopicsMap) {
		String message = null;

		if (key.equals(Step.SUBJECT.getKey())) {
			if (subjectTopicsMap.containsKey(value)) {
				subject = value;
			} else {
				message = String.format("Subject \"%s\" doesn't exist", value);
			}
		} else if (key.equals(Step.TOPIC.getKey())) {
			if (!(subject != null && subjectTopicsMap.containsKey(subject) &&
					subjectTopicsMap.get(subject).contains(value))) {
				message = String.format("Topic \"%s\" doesn't exist or incorrect subject", value);
			}
		} else if (key.equals(Step.RIGHT.getKey())) {
			if (NumberUtils.isCreatable(value)) {
				int rightAnswer = Integer.valueOf(value);

				if (rightAnswer < 1 || rightAnswer > 5) {
					message = "Right answer should be from 1 to 5";
				}
			} else {
				message = "Right answer should be a number";
			}
		}

		return message;
	}

	enum Step {
		SUBJECT("Subject"),
		TOPIC("Topic"),
		QUESTION("Question"),
		ONE("1"),
		TWO("2"),
		THREE("3"),
		FOUR("4"),
		FIVE("5"),
		RIGHT("Right");

		private String key;

		Step(String key) {
			this.key = key;
		}

		public String getKey() {
			return key;
		}
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