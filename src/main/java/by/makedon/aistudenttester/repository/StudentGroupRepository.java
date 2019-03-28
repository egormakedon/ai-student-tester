package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.StudentGroup;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface StudentGroupRepository extends JpaRepository<StudentGroup, Long> {
    List<StudentGroup> findStudentGroupsByActiveIsTrue();
    Optional<StudentGroup> findStudentGroupByStudentGroupNumberAndActiveIsTrue(long studentGroupNumber);
}