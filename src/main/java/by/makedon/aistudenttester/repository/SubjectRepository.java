package by.makedon.aistudenttester.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface SubjectRepository extends CrudRepository<Subject, Long> {
    List<Subject> findSubjectsByActiveIsTrue();
    Optional<Subject> findSubjectBySubjectNameAndActiveIsTrue(String subjectName);
}