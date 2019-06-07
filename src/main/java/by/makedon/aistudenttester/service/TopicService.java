package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.repository.TopicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

/**
 * @author Yahor Makedon
 */
@Service
public class TopicService {
    private TopicRepository repository;

    public Topic getTopicByTopicNameAndSubjectName(String topicName, String subjectName) {
        return repository.findTopic(topicName, subjectName);
    }

    public List<Topic> getTopicListBySubjectID(Long subjectID) {
        return repository.findTopicsBySubjectID(subjectID);
    }

    public int getAllQuestionsCountBySubjectID(Long subjectID) {
        return repository.findTopicsBySubjectID(subjectID).stream().map(Topic::getQuestions)
                .mapToInt(Set::size)
                .sum();
    }

//  Getters/Setters

    @Autowired
    public void setRepository(TopicRepository repository) {
        this.repository = repository;
    }
}