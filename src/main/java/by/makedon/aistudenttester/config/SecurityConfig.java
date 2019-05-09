package by.makedon.aistudenttester.config;

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
	private CharacterEncodingFilter characterEncodingFilter;
	private TestFilter testFilter;

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder()
	{
		return new BCryptPasswordEncoder(8);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.addFilterBefore(characterEncodingFilter, CsrfFilter.class);
		http.addFilterAfter(testFilter, BasicAuthenticationFilter.class);

		//TODO
		http
				.authorizeRequests()
				.antMatchers("/**").permitAll()
				.anyRequest().authenticated()
				.and()
				.formLogin()
				.loginPage("/login")
				.permitAll()
				.and()
				.logout()
				.permitAll();
	}

	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userService)
			.passwordEncoder(bCryptPasswordEncoder());
	}

//	Getters/Setters

	@Autowired
	public void setUserService(ApplicationUserService userService) {
		this.userService = userService;
	}

	@Autowired
	public void setCharacterEncodingFilter(CharacterEncodingFilter characterEncodingFilter) {
		this.characterEncodingFilter = characterEncodingFilter;
	}

	@Autowired
	public void setTestFilter(TestFilter testFilter) {
		this.testFilter = testFilter;
	}
}