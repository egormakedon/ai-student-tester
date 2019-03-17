package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.Mark;
import by.makedon.aistudenttester.repository.MarkRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Yahor Makedon
 */
@Service
public class MarkService extends AbstractService {
    @Autowired
    private MarkRepository markRepository;

    public Mark getMarkByNumberOfRightQuestions(int numberOfRightQuestions) {
        return markRepository.findMarkByNumberOfRightQuestionsAndActiveIsTrueAndStrategy_ActiveIsTrue(numberOfRightQuestions);
    }
}