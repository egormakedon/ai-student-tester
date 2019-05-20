package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.Subject;
import by.makedon.aistudenttester.repository.SubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class SubjectService {
    private SubjectRepository repository;

    public List<Subject> getSubjectList() {
        return repository.findSubjects();
    }

//  Getters/Setters

    @Autowired
    public void setRepository(SubjectRepository repository) {
        this.repository = repository;
    }
}