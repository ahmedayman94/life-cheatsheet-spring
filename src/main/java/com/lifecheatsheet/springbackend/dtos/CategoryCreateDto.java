package com.lifecheatsheet.springbackend.dtos;

import org.hibernate.validator.constraints.Length;

public class CategoryCreateDto {
    @Length(min = 3, max = 30)
    private String title;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
