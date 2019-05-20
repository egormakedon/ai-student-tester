package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.repository.TopicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class TopicService {
    private TopicRepository repository;

    public List<Topic> getTopicListBySubjectID(Long subjectID) {
        return repository.findTopicsBySubjectID(subjectID);
    }

//  Getters/Setters

    @Autowired
    public void setRepository(TopicRepository repository) {
        this.repository = repository;
    }
}