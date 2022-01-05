package com.lifecheatsheet.springbackend.config;

import com.lifecheatsheet.springbackend.dtos.PostReadDto;
import com.lifecheatsheet.springbackend.entities.Post;
import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.ModelMap;

@Configuration
public class ModelMapperConfig {
    @Bean
    public ModelMapper modelMapper() {
        ModelMapper modelMapper = new ModelMapper();
        modelMapper.getConfiguration()
                .setFieldMatchingEnabled(true)
                .setFieldAccessLevel(org.modelmapper.config.Configuration.AccessLevel.PRIVATE);

        modelMapper
                .createTypeMap(Post.class, PostReadDto.class)
                .addMappings(mapper ->
                        mapper.map(src ->
                                src.getCategory().getId(), PostReadDto::setCategoryId
                        ));

        return modelMapper;
    }
}
