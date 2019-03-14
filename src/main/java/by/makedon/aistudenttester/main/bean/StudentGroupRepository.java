package by.makedon.aistudenttester.main.bean;

import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface StudentGroupRepository extends CrudRepository<StudentGroup, Long> {
    List<StudentGroup> findStudentGroupsByActiveIsTrue();
    Optional<StudentGroup> findStudentGroupByStudentGroupNumberAndActiveIsTrue(String studentGroupNumber);
}