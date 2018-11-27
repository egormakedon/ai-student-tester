package by.makedon.aistudenttester.main;

import by.makedon.aistudenttester.main.bean.Topic;
import by.makedon.aistudenttester.main.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Component
public class TestGenerator {
    @Autowired
    private TopicService topicService;

    public void generateTest(String studentTicket, String subjectName) {
        List<Topic> topicList = topicService.getTopicListBySubjectName(subjectName);

        //
        topicList.forEach(topic -> System.out.println(topic.getQuestions().size()));
    }
}