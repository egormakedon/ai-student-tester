package by.makedon.aistudenttester.main.bean;

import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface StudentRepository extends CrudRepository<Student, Long> {
    List<Student> findStudentsByStudentGroup_StudentGroupNumber(String studentGroupNumber);
    Optional<Student> findStudentByStudentTicketAndActiveIsTrue(String studentTicket);
}