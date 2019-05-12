package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.StudentGroup;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface StudentGroupRepository extends JpaRepository<StudentGroup, Long> {
    List<StudentGroup> findStudentGroupsByActiveIsTrue();
}