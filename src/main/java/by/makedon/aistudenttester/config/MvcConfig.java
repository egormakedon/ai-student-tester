package by.makedon.aistudenttester.config;

import by.makedon.aistudenttester.config.filter.AdminFilter;
import by.makedon.aistudenttester.config.filter.TestFilter;
import by.makedon.aistudenttester.config.listener.SessionListener;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

import java.util.Locale;

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

	@Bean(name = "localeResolver")
	public CookieLocaleResolver localeResolver() {
		CookieLocaleResolver localeResolver = new CookieLocaleResolver();
		localeResolver.setDefaultLocale(new Locale("ru", ""));
		return localeResolver;
	}

	@Bean
	public SessionListener sessionListener() {
		return new SessionListener();
	}

	@Bean
	public FilterRegistrationBean<CharacterEncodingFilter> encodingFilter() {
		FilterRegistrationBean<CharacterEncodingFilter> registrationBean = new FilterRegistrationBean<>();
		registrationBean.setFilter(new CharacterEncodingFilter("UTF-8", true));
		registrationBean.addUrlPatterns("/*");
		return registrationBean;
	}

	@Bean
	public FilterRegistrationBean<AdminFilter> adminFilter() {
		FilterRegistrationBean<AdminFilter> registrationBean = new FilterRegistrationBean<>();
		registrationBean.setFilter(new AdminFilter());
		registrationBean.addUrlPatterns("/*");
		return registrationBean;
	}

	@Bean
	public FilterRegistrationBean<TestFilter> testFilter() {
		FilterRegistrationBean<TestFilter> registrationBean = new FilterRegistrationBean<>();
		registrationBean.setFilter(new TestFilter());
		registrationBean.addUrlPatterns("/*");
		return registrationBean;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**")
				.addResourceLocations("classpath:/static/");
	}
}