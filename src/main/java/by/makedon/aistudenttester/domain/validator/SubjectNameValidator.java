package by.makedon.aistudenttester.domain.validator;

import by.makedon.aistudenttester.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author Yahor Makedon
 */
@Component
public class SubjectNameValidator extends AbstractValidator {
    private SubjectService subjectService;

    public void validate(String subjectName) {
        if (subjectName == null) {
            logger.error("Subject name can't be null");
            throw new IllegalArgumentException("validation.subject.name.null");
        }

        if (subjectName.isEmpty()) {
            logger.error("Subject name can't be empty");
            throw new IllegalArgumentException("validation.subject.name.empty");
        }

        if (!subjectService.isSubjectExists(subjectName.trim())) {
            logger.error("Subject name doesn't exist");
            throw new IllegalArgumentException("validation.subject.name.not.exists");
        }
    }

    @Autowired
    public void setSubjectService(SubjectService subjectService) {
        this.subjectService = subjectService;
    }
}