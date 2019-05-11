package by.makedon.aistudenttester.config;

import by.makedon.aistudenttester.config.filter.AdminFilter;
import by.makedon.aistudenttester.config.filter.TestFilter;
import by.makedon.aistudenttester.config.listener.SessionListener;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author Yahor Makedon
 */
@Configuration
public class MvcConfig implements WebMvcConfigurer {
	@Bean(name = "messageSource")
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
		messageSource.addBasenames("classpath:/bundles/message");
		messageSource.setDefaultEncoding("UTF-8");

		return messageSource;
	}

	@Bean
	public SessionListener sessionListener() {
		return new SessionListener();
	}

	@Bean
	public CharacterEncodingFilter encodingFilter()
	{
		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		encodingFilter.setEncoding("UTF-8");
		encodingFilter.setForceEncoding(true);

		return encodingFilter;
	}

	@Bean
	public TestFilter testFilter()
	{
		return new TestFilter();
	}

	@Bean
	public AdminFilter adminFilter() {
		return new AdminFilter();
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**")
				.addResourceLocations("classpath:/static/");
	}
}