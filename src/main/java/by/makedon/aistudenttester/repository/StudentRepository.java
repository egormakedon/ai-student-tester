package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface StudentRepository extends JpaRepository<Student, Long> {
    @Query("SELECT s FROM Student s " +
           "WHERE s.active = true AND s.studentGroup.studentGroupNumber = :studentGroupNumber AND s.studentGroup.active = true " +
           "ORDER BY s.lastName ASC, s.firstName ASC, s.middleName ASC")
    List<Student> findStudentsByStudentGroupNumber(@Param("studentGroupNumber") long studentGroupNumber);

    @Query("SELECT s FROM Student s " +
            "WHERE s.studentGroup.studentGroupID = :studentGroupID AND s.active = true " +
            "ORDER BY s.lastName ASC, s.firstName ASC, s.middleName ASC")
    List<Student> findStudentsByStudentGroupID(@Param("studentGroupID") Long studentGroupID);

    @Query("SELECT s FROM Student s " +
            "WHERE s.lastName = :lastName AND s.firstName = :firstName AND s.middleName = :middleName AND s.studentTicket = :studentTicket " +
                "AND s.active = true AND s.studentGroup.studentGroupID = :studentGroupID AND s.studentGroup.active = true")
    Optional<Student> findStudent(@Param("studentGroupID") Long studentGroupID, @Param("lastName") String lastName,
                                  @Param("firstName") String firstName, @Param("middleName") String middleName,
                                  @Param("studentTicket") long studentTicket);
}