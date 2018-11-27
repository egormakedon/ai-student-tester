package by.makedon.aistudenttester.main.validator;

import by.makedon.aistudenttester.main.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author Yahor Makedon
 */
@Component
public class SubjectNameValidator {
    @Autowired
    private SubjectService subjectService;

    public void validate(String subjectName) {
        if (subjectName == null) {
            throw new IllegalArgumentException("validation.subject.name.null");
        }

        if (subjectName.isEmpty()) {
            throw new IllegalArgumentException("validation.subject.name.empty");
        }

        if (!subjectService.isSubjectExists(subjectName.trim())) {
            throw new IllegalArgumentException("validation.subject.name.not.exists");
        }
    }
}