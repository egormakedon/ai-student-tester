package by.makedon.aistudenttester.main.bean;

import org.springframework.data.repository.CrudRepository;

/**
 * @author Yahor Makedon
 */
public interface MarkRepository extends CrudRepository<Mark, Long> {
    Mark findMarkByNumberOfRightQuestionsAndActiveIsTrueAndStrategy_ActiveIsTrue(int numberOfRightQuestions);
}