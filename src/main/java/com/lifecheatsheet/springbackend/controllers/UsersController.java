package com.lifecheatsheet.springbackend.controllers;

import com.lifecheatsheet.springbackend.entities.User;
import com.lifecheatsheet.springbackend.models.SignupRequest;
import com.lifecheatsheet.springbackend.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/users")
public class UsersController {

    @Autowired
    private UserService userService;

    @PostMapping
    @RequestMapping("/login/google")
    @ResponseStatus(HttpStatus.CREATED)
    public User provisionUserFromGoogle(@Valid @RequestBody final SignupRequest signupRequest) throws Exception{
        return userService.provisionUser(signupRequest);
    }
}
