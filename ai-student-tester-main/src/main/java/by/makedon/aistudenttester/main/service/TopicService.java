package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.Topic;
import by.makedon.aistudenttester.main.bean.TopicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class TopicService {
    @Autowired
    private TopicRepository topicRepository;

    public List<Topic> getTopicListBySubjectName(String subjectName) {
        return topicRepository.findTopicsByActiveIsTrueAndSubject_SubjectNameAndSubject_ActiveIsTrue(subjectName);
    }
}