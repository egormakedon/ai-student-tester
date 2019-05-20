package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Subject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface SubjectRepository extends JpaRepository<Subject, Long> {
    @Query("SELECT s FROM Subject s " +
           "WHERE s.active = true " +
           "ORDER BY s.subjectName ASC")
    List<Subject> findSubjects();
}