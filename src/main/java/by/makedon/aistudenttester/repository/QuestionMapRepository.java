package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.QuestionMap;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface QuestionMapRepository extends JpaRepository<QuestionMap, Long> {
	Optional<QuestionMap> findQuestionMapByQuestion_QuestionID(Long questionID);
}