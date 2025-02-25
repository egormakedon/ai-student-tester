package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.repository.SubjectRepository;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author Yahor Makedon
 */
@Service
public class SubjectService {
    private SubjectRepository repository;
    private TopicService topicService;
    private TestSessionService testSessionService;

    @Transactional
    public Subject save(Subject subject) {
        return repository.save(subject);
    }

    @Transactional
    public Subject remove(Subject subject) {
        topicService.remove(subject);

        testSessionService.remove(subject);

        subject.setActive(false);
        return repository.save(subject);
    }

    public Optional<Subject> getSubjectBySubjectName(String subjectName) {
        return repository.findSubjectBySubjectName(subjectName);
    }

    public List<Subject> getSubjectList() {
        return repository.findSubjects();
    }

    public List<Subject> getValidSubjectList() {
        return getSubjectList().stream()
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

    @Autowired
    public void setTestSessionService(TestSessionService testSessionService) {
        this.testSessionService = testSessionService;
    }
}