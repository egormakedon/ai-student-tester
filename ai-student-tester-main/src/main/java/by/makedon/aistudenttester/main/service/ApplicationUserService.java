package by.makedon.aistudenttester.main.service;

import by.makedon.aistudenttester.main.bean.ApplicationUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Yahor Makedon
 */
@Service
public class ApplicationUserService {
    @Autowired
    private ApplicationUserRepository applicationUserRepository;
}