package com.lifecheatsheet.springbackend.controllers;

import com.lifecheatsheet.springbackend.dtos.UserUpdateDto;
import com.lifecheatsheet.springbackend.entities.User;
import com.lifecheatsheet.springbackend.services.UserService;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@RestController
@RequestMapping("/api/v1/users")
public class UsersController {
    @Autowired
    private UserService userService;

    @GetMapping
    @RequestMapping("/me")
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<User> getUserInfo(Authentication authentication) {
        User user = userService.getUserByEmail((String) authentication.getPrincipal());
        return ResponseEntity.ok(user);
    }

    @PostMapping
    @RequestMapping("/edit")
    @ResponseStatus(HttpStatus.OK)
    public User updateInfo(@Valid @RequestBody final UserUpdateDto user) {
        return userService.updateUserInfo(4, user);
    }
}
