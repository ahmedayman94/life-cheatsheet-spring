package com.lifecheatsheet.springbackend.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class PersistenceConfiguration {
    @Bean
    @ConfigurationProperties("app.datasource.main")
    public DataSource datasource(){
        return DataSourceBuilder
                .create()
                .url("jdbc:postgresql://localhost:5432/postgres")
                .username("")
                .password("")
                .build();
    }
}
