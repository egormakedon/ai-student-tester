package by.makedon.aistudenttester.config;

import by.makedon.aistudenttester.config.filter.AdminFilter;
import by.makedon.aistudenttester.config.filter.TestFilter;
import by.makedon.aistudenttester.service.ApplicationUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.web.filter.CharacterEncodingFilter;

/**
 * @author Yahor Makedon
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	private ApplicationUserService userService;
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	private CharacterEncodingFilter characterEncodingFilter;
	private TestFilter testFilter;
	private AdminFilter adminFilter;

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder()
	{
		return new BCryptPasswordEncoder(8);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
				.authorizeRequests()
					.antMatchers("/**").permitAll()
					.anyRequest().authenticated()
				.and()
					.formLogin()
					.usernameParameter("username")
					.passwordParameter("password")
					.loginPage("/login")
					.defaultSuccessUrl("/admin")
					.failureUrl("/login?error")
					.permitAll()
				.and()
					.logout()
					.logoutUrl("/logout")
					.logoutSuccessUrl("/")
					.clearAuthentication(true)
					.permitAll()
				.and()
					.addFilterBefore(characterEncodingFilter, CsrfFilter.class)
					.addFilterAfter(testFilter, BasicAuthenticationFilter.class)
					.addFilterBefore(adminFilter, TestFilter.class);
	}

	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userService)
			.passwordEncoder(bCryptPasswordEncoder);
	}

//	Getters/Setters

	@Autowired
	public void setUserService(ApplicationUserService userService) {
		this.userService = userService;
	}

	@Autowired
	public void setbCryptPasswordEncoder(BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}

	@Autowired
	public void setCharacterEncodingFilter(CharacterEncodingFilter characterEncodingFilter) {
		this.characterEncodingFilter = characterEncodingFilter;
	}

	@Autowired
	public void setTestFilter(TestFilter testFilter) {
		this.testFilter = testFilter;
	}

	@Autowired
	public void setAdminFilter(AdminFilter adminFilter) {
		this.adminFilter = adminFilter;
	}
}