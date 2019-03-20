package by.makedon.aistudenttester.util;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.Subject;
import by.makedon.aistudenttester.domain.Topic;
import by.makedon.aistudenttester.service.TopicService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

/**
 * @author Yahor Makedon
 */
@Component
public class QuestionListGenerator {
    private static final Logger logger = LoggerFactory.getLogger(QuestionListGenerator.class);
    private TopicService topicService;

    public List<Question> generate(Subject subject) {
        List<Topic> topicList = topicService.getTopicListBySubjectID(subject.getID());
        List<Integer> questionCountList = calculateQuestionCountList(topicList);
        List<Question> questionList = new ArrayList<>(BaseConstants.QUESTION_COUNT);

        IntStream.range(0, questionCountList.size()).forEach(i ->
                generateQuestionList(questionList, new ArrayList<>(topicList.get(i).getQuestions()), questionCountList.get(i)));

        return questionList;
    }

    private List<Integer> calculateQuestionCountList(List<Topic> topicList) {
        int allQuestionsCount = topicList.stream().map(Topic::getQuestions)
                                                  .mapToInt(Set::size)
                                                  .sum();

        if (allQuestionsCount < BaseConstants.QUESTION_COUNT) {
            logger.error("Number of questions: " + allQuestionsCount + ".\nNumber of questions for the subject must be equal or more than 20!!!");
            throw new IllegalArgumentException("Number of questions: " + allQuestionsCount + ".\nNumber of questions for the subject must be equal or more than 20!!!");
        }

        List<Integer> questionCountList = IntStream.range(0, topicList.size() - 1).map(index ->
                (int) Math.floor((double) BaseConstants.QUESTION_COUNT *
                        ((double) topicList.get(index).getQuestions().size() / (double) allQuestionsCount))
        ).boxed().collect(Collectors.toList());

        questionCountList.add(BaseConstants.QUESTION_COUNT - questionCountList.stream().mapToInt(Integer::intValue).sum());

        return questionCountList;
    }

    private void generateQuestionList(List<Question> resultQuestionList, List<Question> questionList, int questionCount) {
        Set<Question> chooseQuestionSet = new HashSet<>(questionCount);
        int allQuestionCount = questionList.size() - 1;

        for (int i = 0; i < questionCount; i++) {
            while (true) {
                int index = (int) (Math.random() * (allQuestionCount + 1));
                Question question = questionList.get(index);

                if (!chooseQuestionSet.contains(question)) {
                    chooseQuestionSet.add(question);
                    resultQuestionList.add(question);
                    break;
                }
            }
        }
    }

//  Getters/Setters

    @Autowired
    public void setTopicService(TopicService topicService) {
        this.topicService = topicService;
    }
}