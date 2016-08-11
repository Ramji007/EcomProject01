package com.niit.shoppingcart.config;

import java.util.Locale.Category;
import java.util.Properties;

import javax.sql.DataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.stereotype.Component;


@Configuration
@Component("com.niit.shoppingcart")
public class ApplicationContextConfig {

	@Bean (name="datasource")
	public DataSource getDataSource(){
		DriverManagerDataSource datasource = new DriverManagerDataSource();
		datasource.setDriverClassName("org.h2.Driver");
		datasource.setUrl("jdbc:h2:tcp://localhost/~/niitdb");
		datasource.setUsername("sa");
		datasource.setPassword("sa");
		return datasource ;		
	}
	
	private Properties getHibernateProperties(){
		Properties properties = new Properties();
		properties.put("hibernate.show.sql", "true");
		properties.put("hibernate.dialect", "org.hibernatedialect.H2dialect");
		properties.put("hibernate.hbm2ddl.auto","update");
		return properties ;
		
	}
	
	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
	 
	    LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);	 
	    sessionBuilder.addAnnotatedClasses(Category.class);
	    sessionBuilder.addProperties(getHibernateProperties());
	    sessionBuilder.setProperty("hibernate.show_sql", "true");
	    sessionBuilder.scanPackages("com.niit");
	    return sessionBuilder.buildSessionFactory();
	}
	
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
	HibernateTransactionManager transactionManager = new HibernateTransactionManager
			(sessionFactory);
	return transactionManager;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
