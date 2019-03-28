package by.makedon.aistudenttester.repository;

import by.makedon.aistudenttester.domain.ApplicationUser;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface ApplicationUserRepository extends JpaRepository<ApplicationUser, Long> {
    Optional<ApplicationUser> findApplicationUserByUsernameAndActiveIsTrue(String username);
}