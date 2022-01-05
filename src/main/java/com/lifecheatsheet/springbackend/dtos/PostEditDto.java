package com.lifecheatsheet.springbackend.dtos;

public class PostEditDto extends PostCreateDto{
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
