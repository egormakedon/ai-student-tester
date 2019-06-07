package by.makedon.aistudenttester.docapi;

import by.makedon.aistudenttester.domain.bean.Question;
import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.service.TopicService;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Yahor Makedon
 */
@Component
public class QuestionParser {
	private static final String DELIMITER = ":";

	private static final String KEY_SUBJECT = "Subject";
	private static final String KEY_TOPIC = "Topic";
	private static final String KEY_QUESTION = "Question";
	private static final String KEY_ONE = "1";
	private static final String KEY_TWO = "2";
	private static final String KEY_THREE = "3";
	private static final String KEY_FOUR = "4";
	private static final String KEY_FIVE = "5";
	private static final String KEY_RIGHT = "Right";

	private TopicService topicService;

	@Getter
	private Map<Topic, List<Question>> topicQuestionListMap;

	public void parseText(List<String> text) {
		topicQuestionListMap = new HashMap<>();

		String subject = null;
		Topic topic = null;

		String questionName = null;
		String firstAnswer = null;
		String secondAnswer = null;
		String thirdAnswer = null;
		String fourthAnswer = null;
		String fifthAnswer = null;

		for (String line : text) {
			String key = getKey(line);
			String value = getValue(line);

			switch (key) {
				case KEY_SUBJECT:
					subject = value;
					break;
				case KEY_TOPIC:
					topic = topicService.getTopicByTopicNameAndSubjectName(value, subject);
					break;
				case KEY_QUESTION:
					questionName = value;
					break;
				case KEY_ONE:
					firstAnswer = value;
					break;
				case KEY_TWO:
					secondAnswer = value;
					break;
				case KEY_THREE:
					thirdAnswer = value;
					break;
				case KEY_FOUR:
					fourthAnswer = value;
					break;
				case KEY_FIVE:
					fifthAnswer = value;
					break;
				case KEY_RIGHT:
					addQuestion(topic, questionName, firstAnswer, secondAnswer, thirdAnswer, fourthAnswer,
							fifthAnswer, Integer.valueOf(value));
					break;
			}
		}
	}

	private String getKey(String line) {
		return line.substring(0, line.indexOf(DELIMITER.toCharArray()[0])).trim();
	}

	private String getValue(String line) {
		return line.substring(line.indexOf(DELIMITER.toCharArray()[0]) + 1).trim();
	}

	private void addQuestion(Topic topic, String questionName, String firstAnswer, String secondAnswer,
	                         String thirdAnswer, String fourthAnswer, String fifthAnswer, int rightAnswer) {
		if (!topicQuestionListMap.containsKey(topic)) {
			topicQuestionListMap.put(topic, new ArrayList<>());
		}

		Question question = new Question();
		question.setQuestionName(questionName);
		question.setFirstAnswer(firstAnswer);
		question.setSecondAnswer(secondAnswer);
		question.setThirdAnswer(thirdAnswer);
		question.setFourthAnswer(fourthAnswer);
		question.setFifthAnswer(fifthAnswer);
		question.setRightAnswer(rightAnswer);
		question.setActive(true);

		topicQuestionListMap.get(topic).add(question);
	}

//	Getters/Setters

	@Autowired
	public void setTopicService(TopicService topicService) {
		this.topicService = topicService;
	}
}