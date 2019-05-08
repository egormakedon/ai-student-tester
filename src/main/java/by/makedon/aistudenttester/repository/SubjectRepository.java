package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Subject;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface SubjectRepository extends JpaRepository<Subject, Long> {
    List<Subject> findSubjectsByActiveIsTrue();
    Optional<Subject> findSubjectBySubjectNameAndActiveIsTrue(String subjectName);
}