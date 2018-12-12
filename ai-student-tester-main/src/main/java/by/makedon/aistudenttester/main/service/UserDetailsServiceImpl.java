package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.ApplicationUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * @author Yahor Makedon
 */
@Service
public class UserDetailsServiceImpl extends AbstractService implements UserDetailsService {
    @Autowired
    private ApplicationUserService applicationUserService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<ApplicationUser> optionalApplicationUser = applicationUserService.findApplicationUserByUsername(username);

        if (optionalApplicationUser.isPresent()) {
            ApplicationUser user = optionalApplicationUser.get();

            return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
                    AuthorityUtils.createAuthorityList(user.getRoles().iterator().next().getRoleName()));
        } else {
            logger.error("User " + username + " doesn't exists");
            throw new IllegalArgumentException("validation.username.doesnt.exists");
        }
    }
}