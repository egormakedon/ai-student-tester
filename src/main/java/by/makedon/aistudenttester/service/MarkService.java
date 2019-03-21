package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.Mark;
import by.makedon.aistudenttester.repository.MarkRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Yahor Makedon
 */
@Service
public class MarkService {
    private MarkRepository markRepository;

    public Mark getMarkByNumberOfRightQuestions(int numberOfRightQuestions) {
        return markRepository.findMarkByNumberOfRightQuestionsAndActiveIsTrueAndStrategy_ActiveIsTrue(numberOfRightQuestions);
    }

    @Autowired
    public void setMarkRepository(MarkRepository markRepository) {
        this.markRepository = markRepository;
    }
}