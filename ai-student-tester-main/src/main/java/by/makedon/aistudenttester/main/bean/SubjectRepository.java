package by.makedon.aistudenttester.main.bean;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface SubjectRepository extends CrudRepository<Subject, Long> {
    Optional<Subject> findSubjectBySubjectNameAndActiveIsTrue(String subjectName);
}