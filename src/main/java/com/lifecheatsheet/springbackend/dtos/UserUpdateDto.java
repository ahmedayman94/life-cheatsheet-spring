package com.lifecheatsheet.springbackend.dtos;

import org.hibernate.validator.constraints.Length;

public class UserUpdateDto {
    @Length(min = 0, max = 30)
    private String firstName;

    @Length(min = 0, max = 30)
    private String lastName;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
