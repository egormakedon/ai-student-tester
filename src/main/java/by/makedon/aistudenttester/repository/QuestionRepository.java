package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface QuestionRepository extends JpaRepository<Question, Long> {
	@Query("SELECT q FROM Question q " +
		   "WHERE q.active = true " +
		   "ORDER BY q.questionName ASC")
	List<Question> findQuestions();
}