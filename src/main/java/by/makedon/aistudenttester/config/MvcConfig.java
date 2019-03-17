package by.makedon.aistudenttester.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author Yahor Makedon
 */
@Configuration
public class MvcConfig implements WebMvcConfigurer {
	@Bean(name = "messageSource")
	public ReloadableResourceBundleMessageSource reloadableResourceBundleMessageSource() {
		ReloadableResourceBundleMessageSource rbMessageSource = new ReloadableResourceBundleMessageSource();
		rbMessageSource.addBasenames("classpath:/property/message", "classpath:/property/validation");
		rbMessageSource.setDefaultEncoding("UTF-8");
		return rbMessageSource;
	}

	@Bean
	public SessionListener sessionListener() {
		return new SessionListener();
	}

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}


}