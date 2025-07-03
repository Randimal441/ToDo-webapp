package com.example.webApp.security;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
public class SpringSecurityConfiguration {
	//InMemoryUserDetailsManager
	//inMemoryUserDetailsManager(UserDetails... users)
	
	@Bean
	public InMemoryUserDetailsManager createUserDetailsManager() {
		UserDetails userDetails = User.withDefaultPasswordEncoder()
		.username("in28min")
		.password("dummy")
		.roles("USER","ADMIN")
		.build();
		
		return new InMemoryUserDetailsManager(userDetails);
	}

}
