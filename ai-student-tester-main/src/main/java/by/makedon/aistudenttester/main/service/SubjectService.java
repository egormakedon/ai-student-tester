package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.Subject;
import by.makedon.aistudenttester.main.bean.SubjectRepository;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Yahor Makedon
 */
@Service
public class SubjectService {
    @Autowired
    private SubjectRepository subjectRepository;

    public List<Subject> getSubjectList() {
        return Lists.newArrayList(subjectRepository.findAll());
    }
}