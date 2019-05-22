package by.makedon.aistudenttester.service;

import by.makedon.aistudenttester.domain.bean.ApplicationUser;
import by.makedon.aistudenttester.domain.bean.Role;
import by.makedon.aistudenttester.domain.bean.RoleMap;
import by.makedon.aistudenttester.repository.ApplicationUserRepository;
import by.makedon.aistudenttester.util.BaseConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

/**
 * @author Yahor Makedon
 */
@Service
public class ApplicationUserService implements UserDetailsService {
    private ApplicationUserRepository repository;
    private RoleMapService roleMapService;
    private BCryptPasswordEncoder passwordEncoder;

    public Optional<ApplicationUser> getApplicationUserByUsername(String username) {
        return repository.findApplicationUserByUsername(username);
    }

    public List<ApplicationUser> getAdmins() {
        return repository.findAdmins();
    }

    @Transactional
    public ApplicationUser changePassword(ApplicationUser applicationUser, String password) {
        applicationUser.setPassword(passwordEncoder.encode(password));
        return save(applicationUser);
    }

    @Transactional
    public ApplicationUser save(ApplicationUser applicationUser) {
        return repository.save(applicationUser);
    }

    @Transactional
    public ApplicationUser remove(ApplicationUser applicationUser) {
        roleMapService.removeByApplicationUserID(applicationUser.getID());
        applicationUser.setActive(false);
        return save(applicationUser);
    }

    @Transactional
    public ApplicationUser addNewAdmin(String username) {
        ApplicationUser applicationUser = new ApplicationUser();

        applicationUser.setUsername(username);
        applicationUser.setPassword(passwordEncoder.encode(BaseConstants.DEFAULT_ADMIN_PASSWORD));
        applicationUser.setDisplayName(BaseConstants.DEFAULT_ADMIN_DISPLAY_NAME);
        applicationUser.setActive(true);
        applicationUser = save(applicationUser);

        RoleMap roleMap = new RoleMap();

        roleMap.setApplicationUser(applicationUser);
        roleMap.setRoles(Role.ADMIN.name());
        roleMap.setActive(true);
        roleMapService.save(roleMap);

        return applicationUser;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<ApplicationUser> optionalApplicationUser = getApplicationUserByUsername(username);

        if (!optionalApplicationUser.isPresent()) {
            throw new UsernameNotFoundException(String.format("Application user with %s username doesn't exist", username));
        }

        return optionalApplicationUser.get();
    }

//  Getters/Setters

    @Autowired
    public void setRepository(ApplicationUserRepository repository) {
        this.repository = repository;
    }

    @Autowired
    public void setRoleMapService(RoleMapService roleMapService) {
        this.roleMapService = roleMapService;
    }

    @Autowired
    public void setPasswordEncoder(BCryptPasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }
}