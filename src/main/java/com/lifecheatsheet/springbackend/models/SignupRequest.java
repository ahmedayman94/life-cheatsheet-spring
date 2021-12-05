package com.lifecheatsheet.springbackend.models;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.validation.constraints.NotEmpty;

public class SignupRequest {
    @NotEmpty
    private String idToken;
    private String firstName;
    private String lastName;
    private String username;

    public String getIdToken() {
        return idToken;
    }

    public void setIdToken(String id_token) {
        this.idToken = id_token;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String first_name) {
        this.firstName = first_name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String last_name) {
        this.lastName = last_name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
