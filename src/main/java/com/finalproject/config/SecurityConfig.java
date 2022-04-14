package com.finalproject.config;



import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled=true, prePostEnabled=true) // secured 어노테이션 활성화, preAuthorize,postAuthorize 어노테이션 활성화
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
//	@Autowired(required=false)
//	private CustomUserDetailsService customUserDetailsService;
		
		
	  @Bean
	  public BCryptPasswordEncoder bCryptPasswordEncoder() {
	    return new BCryptPasswordEncoder();
	  }
//	
//	  @Override
//		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//			auth.userDetailsService(customUserDetailsService).passwordEncoder(bCryptPasswordEncoder());		
//		}
//		
//	 
	  

	  
	  
	  
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http
        .authorizeRequests() // 해당 메소드 아래는 각 경로에 따른 권한을 지정할 수 있다.
//       .antMatchers("/user/**").authenticated() //로그인 사용자만 이용 가능
//		.antMatchers("/manager/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_MANAGER')")
//		.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
		.anyRequest().permitAll()
        .and()
        .formLogin() // 하위에 내가 직접 구현한 로그인 폼, 로그인 성공시 이동 경로 설정 가능. , 로그인 폼의 아이디,패스워드는 username, password로 맞춰야 함
        .loginPage("/loginForm"); // customloginform
       
        
        
	}

}
