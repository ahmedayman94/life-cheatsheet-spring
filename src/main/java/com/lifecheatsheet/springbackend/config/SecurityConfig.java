package com.lifecheatsheet.springbackend.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    static String LOGIN_URL = "/api/v1/auth/login/google";

    @Bean
    public OidcFilter authFilter() throws Exception {
        return new OidcFilter(LOGIN_URL, authenticationManagerBean());
    }

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        httpSecurity
                .exceptionHandling()
                .authenticationEntryPoint(new UserAuthenticationEntryPoint())
                .and()

                .authorizeRequests()
                .antMatchers(LOGIN_URL).permitAll()
                .anyRequest().authenticated()
                .and()

                .cors()
                .and()
                .csrf().disable();
    }
}
