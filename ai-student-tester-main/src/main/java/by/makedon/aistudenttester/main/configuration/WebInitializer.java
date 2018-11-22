package by.makedon.aistudenttester.main.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * @author Yahor Makedon
 */
@Configuration
public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[]{HibernateConfiguration.class, SecurityConfiguration.class};
	}
	
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{ServletConfiguration.class};
	}
	
	@Override
	protected String[] getServletMappings() {
		return new String[]{"/"};
	}
}
