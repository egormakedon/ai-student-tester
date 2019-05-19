package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.ApplicationUser;
import by.makedon.aistudenttester.repository.ApplicationUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

/**
 * @author Yahor Makedon
 */
@Service
public class ApplicationUserService implements UserDetailsService {
    private ApplicationUserRepository userRepository;

    @Transactional
    public ApplicationUser save(ApplicationUser applicationUser) {
        return userRepository.save(applicationUser);
    }

    @Transactional
    public ApplicationUser remove(ApplicationUser applicationUser) {
        //TODO
        applicationUser.setActive(false);
        return save(applicationUser);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<ApplicationUser> optionalApplicationUser = userRepository.findApplicationUserByUsernameAndActiveIsTrue(username);

        if (!optionalApplicationUser.isPresent()) {
            throw new UsernameNotFoundException(String.format("Application user with %s username doesn't exist", username));
        }

        return optionalApplicationUser.get();
    }

//  Getters/Setters

    @Autowired
    public void setUserRepository(ApplicationUserRepository userRepository) {
        this.userRepository = userRepository;
    }
}