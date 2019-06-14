package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.StudentGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface StudentGroupRepository extends JpaRepository<StudentGroup, Long> {
    @Query("SELECT sg FROM StudentGroup sg " +
           "WHERE sg.active = true " +
           "ORDER BY sg.studentGroupNumber ASC")
    List<StudentGroup> findStudentGroups();

    @Query("SELECT sg FROM StudentGroup sg " +
            "WHERE sg.studentGroupNumber = :studentGroupNumber AND sg.active = true")
    Optional<StudentGroup> findStudentGroupByStudentGroupNumber(@Param("studentGroupNumber") long studentGroupNumber);
}