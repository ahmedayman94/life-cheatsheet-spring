package com.lifecheatsheet.springbackend.dtos;

public class CategoryReadDto extends CategoryCreateDto{
    private Integer id;
    private UserBasicReadDto author;

    public UserBasicReadDto getAuthor() {
        return author;
    }

    public void setAuthor(UserBasicReadDto author) {
        this.author = author;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
