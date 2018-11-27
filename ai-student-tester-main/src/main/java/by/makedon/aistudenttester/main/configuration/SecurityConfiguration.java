package by.makedon.aistudenttester.main.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.filter.CharacterEncodingFilter;

/**
 * @author Yahor Makedon
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	//	@Autowired
	//	private UserDetailsService userDetailsService;

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		encodingFilter.setEncoding("UTF-8");
		encodingFilter.setForceEncoding(true);
		http.addFilterBefore(encodingFilter, CsrfFilter.class);

		http.authorizeRequests()
		    .antMatchers("/**").permitAll()
		    .and()
		    .formLogin()
		    .loginPage("/login")
		    .failureUrl("/login?error")
		    .usernameParameter("login")
		    .passwordParameter("password")
		    .permitAll()
		    .and()
		    .logout()
		    .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		    .deleteCookies("remember-me")
		    .logoutSuccessUrl("/")
		    .permitAll()
		    .and()
		    .rememberMe();
	}

	//	@Override
	//	public void configure(AuthenticationManagerBuilder auth) throws Exception {
	//		auth.userDetailsService(userDetailsService)
	//		    .passwordEncoder(bCryptPasswordEncoder());
	//	}
}