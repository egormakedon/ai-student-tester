package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Subject;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface SubjectRepository extends JpaRepository<Subject, Long> {
    List<Subject> findSubjectsByActiveIsTrue();
}