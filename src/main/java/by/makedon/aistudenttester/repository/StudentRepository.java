package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author Yahor Makedon
 */
public interface StudentRepository extends JpaRepository<Student, Long> {
    List<Student> findStudentsByActiveIsTrueAndStudentGroup_StudentGroupNumberAndStudentGroup_ActiveIsTrue(long studentGroupNumber);
}