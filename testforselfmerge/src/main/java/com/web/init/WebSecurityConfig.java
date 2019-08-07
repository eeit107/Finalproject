package com.web.init;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
//@ComponentScan("com.web.init")
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	//@Autowired
	//SecurityUserDetailsService securityUserDetailsService;
	
	//@Autowired
	//@Qualifier("SecurityUserDetailsService")
	//SecurityUserDetailsService securityUserDetailsService;


	   /*@Autowired
	    public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
	        auth.inMemoryAuthentication().withUser("allen0818").password("123456").roles("USER");
	        auth.inMemoryAuthentication().withUser("admin").password("root123").roles("ADMIN");
	        auth.inMemoryAuthentication().withUser("dba").password("root123").roles("ADMIN","DBA");//dba have two roles.
	    }*/
	     
	   
	    @Override
	    protected void configure(HttpSecurity http) throws Exception {
	   //.antMatchers("/","/views/**" ,"/plugins/**", "/js/**","/images/**", "/css/**", "/jquery/**", "/bootstrap/**,/sig")
	        http.csrf().disable()
            .authorizeRequests()

            .antMatchers("/","/getPicture/**","/signin/**", "/index2", "/vendor","/scss","/extensions","/types","/plugins/**", "/js/**","/images/**", "/css/**", "/jquery/**", "/bootstrap/**").permitAll()

//            .antMatchers("/","/index", "/index2", "/vendor","/scss","/extensions","/types","/plugins/**", "/js/**","/images/**", "/css/**", "/jquery/**", "/bootstrap/**","/signin").permitAll()

                .anyRequest().authenticated()
                //.antMatchers("/admin/**").hasAuthority("ADMIN")
                //.antMatchers("/user/**").hasAuthority("USER")
                .and()
            .formLogin()
                .loginPage("/login")
              .defaultSuccessUrl("/index2")
                .permitAll()
                .and()
            .logout()
            .logoutSuccessUrl("/index2")
                .permitAll();
        //只能同時1個登入
        http.sessionManagement().maximumSessions(1).expiredUrl("/login");
        
	        http.csrf().disable();
	        
//	      http.authorizeRequests()
//	        .antMatchers("/").permitAll() 
//	        //.antMatchers("/admin/**").access("hasRole('ADMIN')")
//	        //.antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")
//	        .and().formLogin()
//	        .and().exceptionHandling().accessDeniedPage("/Access_Denied");
	    }
	    
	    @Override
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	      auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
	    }

	    @Bean
	    public UserDetailsService userDetailsService() {
	      return new SecurityUserDetailsService();
	    };
	    
	    @Bean
	    public BCryptPasswordEncoder passwordEncoder() {
	      return new BCryptPasswordEncoder();
	    };

}