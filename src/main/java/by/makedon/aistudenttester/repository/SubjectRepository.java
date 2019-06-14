package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Subject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface SubjectRepository extends JpaRepository<Subject, Long> {
    @Query("SELECT s FROM Subject s " +
           "WHERE s.active = true " +
           "ORDER BY s.subjectName ASC")
    List<Subject> findSubjects();

    @Query("SELECT s FROM Subject s " +
            "WHERE s.subjectName = :subjectName AND s.active = true")
    Optional<Subject> findSubjectBySubjectName(@Param("subjectName") String subjectName);
}