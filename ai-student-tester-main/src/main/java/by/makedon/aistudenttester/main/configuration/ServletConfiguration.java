package by.makedon.aistudenttester.main.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

import java.util.Locale;

/**
 * @author Yahor Makedon
 */
@Configuration
@EnableWebMvc
@ComponentScan
public class ServletConfiguration extends WebMvcConfigurerAdapter {
	@Bean
	public FreeMarkerConfigurer freeMarkerConfigurer() {
		FreeMarkerConfigurer freeMarkerConfigurer = new FreeMarkerConfigurer();
		
		freeMarkerConfigurer.setTemplateLoaderPath("/WEB-INF/ftl/");
		freeMarkerConfigurer.setDefaultEncoding("UTF-8");
		
		return freeMarkerConfigurer;
	}
	
	@Bean(name = "viewResolver")
	public FreeMarkerViewResolver freeMarkerViewResolver() {
		FreeMarkerViewResolver freeMarkerViewResolver = new FreeMarkerViewResolver();
		
		freeMarkerViewResolver.setContentType("text/html; charset=utf-8");
		freeMarkerViewResolver.setCache(true);
		freeMarkerViewResolver.setPrefix("");
		freeMarkerViewResolver.setSuffix(".ftl");
		
		return freeMarkerViewResolver;
	}
	
	@Bean(name = "messageSource")
	public ReloadableResourceBundleMessageSource reloadableResourceBundleMessageSource() {
		ReloadableResourceBundleMessageSource rbMessageSource = new ReloadableResourceBundleMessageSource();
		
		rbMessageSource.addBasenames("classpath:/property/message", "classpath:/property/validation");
		rbMessageSource.setDefaultEncoding("UTF-8");
		
		return rbMessageSource;
	}
	
	@Bean(name = "localeResolver")
	public CookieLocaleResolver cookieLocaleResolver() {
		CookieLocaleResolver localeResolver = new CookieLocaleResolver();
		
		localeResolver.setDefaultLocale(new Locale("ru", ""));
		
		return localeResolver;
	}
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
		
		interceptor.setParamName("locale");
		registry.addInterceptor(interceptor);
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
}