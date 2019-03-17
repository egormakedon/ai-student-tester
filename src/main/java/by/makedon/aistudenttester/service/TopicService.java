package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.Topic;
import by.makedon.aistudenttester.repository.TopicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class TopicService {
    private TopicRepository topicRepository;

    public List<Topic> getTopicListBySubjectName(String subjectName) {
        return topicRepository.findTopicsByActiveIsTrueAndSubject_SubjectNameAndSubject_ActiveIsTrue(subjectName);
    }

    @Autowired
    public void setTopicRepository(TopicRepository topicRepository) {
        this.topicRepository = topicRepository;
    }
}