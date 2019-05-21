package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.repository.SubjectRepository;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Yahor Makedon
 */
@Service
public class SubjectService {
    private SubjectRepository repository;
    private TopicService topicService;

    public List<Subject> getSubjectList() {
        return repository.findSubjects();
    }

    public List<Subject> getValidSubjectList() {
        return repository.findSubjects().stream()
                .filter(s -> topicService.getAllQuestionsCountBySubjectID(s.getID()) >= BaseConstants.QUESTION_COUNT)
                .collect(Collectors.toList());
    }

//  Getters/Setters

    @Autowired
    public void setRepository(SubjectRepository repository) {
        this.repository = repository;
    }

    @Autowired
    public void setTopicService(TopicService topicService) {
        this.topicService = topicService;
    }
}