package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.bean.ApplicationUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface ApplicationUserRepository extends JpaRepository<ApplicationUser, Long> {
    @Query("SELECT au FROM ApplicationUser au " +
           "WHERE au.username = :username AND au.active = true")
    Optional<ApplicationUser> findApplicationUserByUsername(@Param("username") String username);

    @Query(value = "SELECT * " +
                   "FROM ApplicationUser au " +
                        "JOIN RoleMap rm ON rm.ApplicationUserID = au.ApplicationUserID " +
                   "WHERE au.ActiveFlag = 'Y' AND rm.ActiveFlag = 'Y' AND rm.Roles LIKE 'ADMIN' " +
                   "ORDER BY au.DisplayName ASC",
           nativeQuery = true)
    List<ApplicationUser> findAdmins();
}