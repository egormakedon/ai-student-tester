package by.makedon.aistudenttester.generator;

import by.makedon.aistudenttester.domain.Question;
import by.makedon.aistudenttester.domain.Topic;
import by.makedon.aistudenttester.service.TopicService;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @author Yahor Makedon
 */
@Component
public class QuestionGenerator {
    private TopicService topicService;

    public List<Question> getQuetionList(String subjectName) {
        List<Topic> topicList = topicService.getTopicListBySubjectName(subjectName);
        List<Integer> questionCountList = getQuestionCountList(topicList);

        List<Question> questionList = new ArrayList<>(BaseConstants.QUESTION_COUNT);

        for (int i = 0; i < questionCountList.size(); i++) {
            generateQuestionList(questionList, new ArrayList<>(topicList.get(i).getQuestions()), questionCountList.get(i));
        }

        return questionList;
    }

    private List<Integer> getQuestionCountList(List<Topic> topicList) {
        int allQuestionsCount = 0;
        for (Topic topic : topicList) {
            allQuestionsCount += topic.getQuestions().size();
        }

        List<Integer> questionCountList = new ArrayList<>(topicList.size());

        int count = 0;
        for (int i = 0; i < topicList.size() - 1; i++) {
            int c = (int) Math.floor((double) BaseConstants.QUESTION_COUNT * ((double) topicList.get(i).getQuestions().size() / (double) allQuestionsCount));
            questionCountList.add(c);
            count += c;
        }

        questionCountList.add(BaseConstants.QUESTION_COUNT - count);

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

    @Autowired
    public void setTopicService(TopicService topicService) {
        this.topicService = topicService;
    }
}