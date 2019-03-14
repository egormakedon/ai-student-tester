package by.makedon.aistudenttester.main.bean;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

/**
 * @author Yahor Makedon
 */
public interface ApplicationUserRepository extends CrudRepository<ApplicationUser, Long> {
    Optional<ApplicationUser> findApplicationUserByUsernameAndActiveIsTrue(String username);
}