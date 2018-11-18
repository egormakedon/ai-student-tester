package by.makedon.aistudenttester.main.configuration;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.hibernate.jpa.HibernatePersistenceProvider;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import java.util.Properties;

/**
 * Spring hibernate java configuration
 *
 * @author Yahor Makedon
 */
@Configuration
@ComponentScan
@EnableJpaRepositories
@EnableTransactionManagement
@PropertySource("classpath:application.properties")
public class HibernateConfiguration {
	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	@Bean(name = "dataSource", destroyMethod = "close")
	public HikariDataSource hikariDataSource() {
		return new HikariDataSource(getHikariConfig());
	}
	
	@Bean(name = "entityManagerFactory")
	public LocalContainerEntityManagerFactoryBean localContainerEntityManagerFactoryBean() {
		LocalContainerEntityManagerFactoryBean emFactory = new LocalContainerEntityManagerFactoryBean();
		
		emFactory.setDataSource(hikariDataSource());
		emFactory.setPersistenceProviderClass(HibernatePersistenceProvider.class);
		emFactory.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
		emFactory.setJpaProperties(getJpaProperties());
		emFactory.setPackagesToScan("by.makedon.aistudenttester.main.bean");
		
		return emFactory;
	}
	
	@Bean(name = "transactionManager")
	public JpaTransactionManager jpaTransactionManager() {
		JpaTransactionManager jpaTransactionManager = new JpaTransactionManager();
		jpaTransactionManager.setEntityManagerFactory(localContainerEntityManagerFactoryBean().getObject());
		return jpaTransactionManager;
	}
	
	@Value(value = "datasource.url")
	private String dataSourceUrl;
	@Value(value = "datasource.username")
	private String dataSourceUsername;
	@Value(value = "datasource.password")
	private String dataSourcePassword;
	@Value(value = "datasource.driver-class-name")
	private String driverClassName;
	@Value(value = "datasource.hikari.maximum-pool-size")
	private int maximumPoolSize;
	
	private HikariConfig getHikariConfig() {
		HikariConfig hikariConfig = new HikariConfig();
		
		hikariConfig.setJdbcUrl(dataSourceUrl);
		hikariConfig.setUsername(dataSourceUsername);
		hikariConfig.setPassword(dataSourcePassword);
		hikariConfig.setDriverClassName(driverClassName);
		hikariConfig.setMaximumPoolSize(maximumPoolSize);
		
		return hikariConfig;
	}
	
	@Value(value = "jpa.properties.hibernate.dialect")
	private String hibernateDialect;
	@Value(value = "jpa.properties.hibernate.enable-lazy-load-no-trans")
	private String enableLazyLoadNoTrans;
	@Value(value = "jpa.properties.hibernate.current-session-context-class")
	private String currentSessionContextClass;
	@Value(value = "jpa.properties.hibernate.cache-region-factory-class")
	private String regionFactoryClass;
	@Value(value = "jpa.properties.hibernate.cache-use-second-level-cache")
	private String useSecondLevelCache;
	@Value(value = "jpa.properties.hibernate.cache-use-query-cache")
	private String useQueryCache;
	
	private Properties getJpaProperties() {
		Properties jpaProperties = new Properties();
		
		jpaProperties.setProperty("hibernate.dialect", hibernateDialect);
		jpaProperties.setProperty("hibernate.enable_lazy_load_no_trans", enableLazyLoadNoTrans);
		jpaProperties.setProperty("hibernate.current_session_context_class", currentSessionContextClass);
		jpaProperties.setProperty("hibernate.cache.region.factory_class", regionFactoryClass);
		jpaProperties.setProperty("hibernate.cache.use_second_level_cache", useSecondLevelCache);
		jpaProperties.setProperty("hibernate.cache.use_query_cache", useQueryCache);
		
		return jpaProperties;
	}
}