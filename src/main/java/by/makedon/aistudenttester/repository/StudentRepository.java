package by.makedon.aistudenttester.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface StudentRepository extends CrudRepository<Student, Long> {
    List<Student> findStudentsByActiveIsTrueAndStudentGroup_StudentGroupNumberAndStudentGroup_ActiveIsTrue(String studentGroupNumber);
    Optional<Student> findStudentByStudentTicketAndActiveIsTrue(String studentTicket);
}