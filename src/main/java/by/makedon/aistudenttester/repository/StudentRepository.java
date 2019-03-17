package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface StudentRepository extends JpaRepository<Student, Long> {
    List<Student> findStudentsByActiveIsTrueAndStudentGroup_StudentGroupNumberAndStudentGroup_ActiveIsTrue(long studentGroupNumber);
    Optional<Student> findStudentByStudentTicketAndActiveIsTrue(long studentTicket);
}