package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.domain.bean.Topic;
import by.makedon.aistudenttester.repository.TopicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

/**
 * @author Yahor Makedon
 */
@Service
public class TopicService {
    private TopicRepository repository;
    private QuestionService questionService;

    @Transactional
    public Topic remove(Topic topic) {
        questionService.remove(topic.getQuestions());
        topic.setActive(false);
        return repository.save(topic);
    }

    @Transactional
    public List<Topic> remove(Subject subject) {
        List<Topic> topicList = getTopicListBySubjectID(subject.getID());

        topicList.forEach(topic -> {
            questionService.remove(topic.getQuestions());
            topic.setActive(false);
        });

        return repository.saveAll(topicList);
    }

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

    @Autowired
    public void setQuestionService(QuestionService questionService) {
        this.questionService = questionService;
    }
}