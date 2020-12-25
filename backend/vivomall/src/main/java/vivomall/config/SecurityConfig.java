package vivomall.config;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// 开启跨域请求
		http.csrf().disable();
		http.cors();
		// http.authorizeRequests()
		// 		.antMatchers("/*").permitAll()
		// 		.anyRequest().authenticated();
	}
}