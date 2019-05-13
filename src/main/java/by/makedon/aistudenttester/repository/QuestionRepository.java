package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Question;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface QuestionRepository extends JpaRepository<Question, Long> {
	List<Question> findQuestionsByActiveIsTrueOrderByQuestionNameAsc();
}