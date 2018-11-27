package by.makedon.aistudenttester.main.validator;

import by.makedon.aistudenttester.main.service.SubjectService;
import org.apache.commons.lang3.StringUtils;
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

        subjectName = subjectName.trim();
        if (!StringUtils.isNumeric(subjectName)) {
            throw new IllegalArgumentException("validation.subject.name.not.number");
        }

        if (!subjectService.isSubjectExists(subjectName)) {
            throw new IllegalArgumentException("validation.subject.name.not.exists");
        }
    }
}