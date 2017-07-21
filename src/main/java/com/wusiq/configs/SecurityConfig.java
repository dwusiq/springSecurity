package com.wusiq.configs;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * spring的安全配置
 */

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
   @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
       auth.inMemoryAuthentication()
               .withUser("admin").password("123456").roles("USER").and()
               .withUser("wusiq").password("123456").roles("USER1");
    }
/*
    @Override
    public void configure(WebSecurity web) throws Exception {
        super.configure(web);
    }*/

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .formLogin()
                .loginPage("/login/loginPage")
                .loginProcessingUrl("/login/loginDo")
                .successForwardUrl("/login/indexPage")
                .failureUrl("/login/loginPage?error")
                .usernameParameter("userId")
                .passwordParameter("userPwd")
                .permitAll()
                .and()
                .csrf().disable()
                .authorizeRequests()
                .antMatchers("/userManage/toAddProducePage.do").hasRole("USER1")
                .anyRequest().authenticated();

    }
}
