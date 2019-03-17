package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.Mark;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @author Yahor Makedon
 */
public interface MarkRepository extends JpaRepository<Mark, Long> {
    Mark findMarkByNumberOfRightQuestionsAndActiveIsTrueAndStrategy_ActiveIsTrue(int numberOfRightQuestions);
}