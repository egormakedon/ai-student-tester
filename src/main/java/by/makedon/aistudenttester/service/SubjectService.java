package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.Subject;
import by.makedon.aistudenttester.repository.SubjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class SubjectService {
    private SubjectRepository subjectRepository;

    public List<Subject> getSubjectList() {
        return subjectRepository.findSubjectsByActiveIsTrue();
    }

    public boolean isSubjectExists(String subjectName) {
        return subjectRepository.findSubjectBySubjectNameAndActiveIsTrue(subjectName).isPresent();
    }

    @Autowired
    public void setSubjectRepository(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }
}