package com.lifecheatsheet.springbackend.dtos;

public class PostReadDto extends PostCreateDto {
    private int id;
    private UserBasicReadDto author;
    private int categoryId;

    public UserBasicReadDto getAuthor() {
        return author;
    }

    public void setAuthor(UserBasicReadDto author) {
        this.author = author;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
