package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.StudentGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface StudentGroupRepository extends JpaRepository<StudentGroup, Long> {
    @Query("SELECT sg FROM StudentGroup sg " +
           "WHERE sg.active = true " +
           "ORDER BY sg.studentGroupNumber ASC")
    List<StudentGroup> findStudentGroups();
}