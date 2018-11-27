package by.makedon.aistudenttester.main.bean;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface StudentGroupRepository extends CrudRepository<StudentGroup, Long> {
    Optional<StudentGroup> findStudentGroupByStudentGroupNumberAndActiveIsTrue(String studentGroupNumber);
}