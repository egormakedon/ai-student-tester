package by.makedon.aistudenttester.docapi;

import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.service.SubjectService;
import by.makedon.aistudenttester.service.TopicService;
import by.makedon.aistudenttester.util.BaseException;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
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
	private static final String REGEX_DOC = ".+\\.doc";
	private static final String REGEX_DOCX = ".+\\.docx";

	private static final String REGEX_SUBJECT = "Subject";
	private static final String REGEX_TOPIC = "Topic";

	private static final String REGEX_QUESTION = "Question";
	private static final String REGEX_ONE = "1";
	private static final String REGEX_TWO = "2";
	private static final String REGEX_THREE = "3";
	private static final String REGEX_FOUR = "4";
	private static final String REGEX_FIVE = "5";
	private static final String REGEX_RIGHT = "Right";

	private static final String REGEX_DELIMETER = ":";

	private SubjectService subjectService;
	private TopicService topicService;

	public List<String> validate(MultipartFile file) {
		Set<String> errors = new TreeSet<>();

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
				validateText(text, getSubjectTopicsMap(), errors);
			}
		}

		return new ArrayList<>(errors);
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

	private void validateText(List<String> text, Map<String, Set<String>> subjectTopicsMap, Set<String> errors) {
		ReadingStep step = ReadingStep.SUBJECT;

		errors.add("add.question.validation.read.error:54;kekeke");

	}

	enum ReadingStep {
		SUBJECT, TOPIC, QUESTION, ONE, TWO, THREE, FOUR, FIVE, RIGHT
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