package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Mark;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface MarkRepository extends JpaRepository<Mark, Long> {
    @Query("SELECT m FROM Mark m " +
           "WHERE m.numberOfRightQuestions = :numberOfRightQuestions AND m.active = true AND m.strategy.active = true")
    Mark findMarkByNumberOfRightQuestions(@Param("numberOfRightQuestions") int numberOfRightQuestions);

    @Query("SELECT m FROM Mark m " +
           "WHERE m.active = true AND m.strategy.active = true " +
           "ORDER BY m.numberOfRightQuestions ASC")
    List<Mark> findMarks();
}