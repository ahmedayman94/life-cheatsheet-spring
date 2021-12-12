package com.lifecheatsheet.springbackend.controllers;

import com.lifecheatsheet.springbackend.config.JwtAuthenticationToken;
import com.lifecheatsheet.springbackend.config.UserDetails;
import com.lifecheatsheet.springbackend.entities.User;
import com.lifecheatsheet.springbackend.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/v1/auth")
public class AuthController {
    @Autowired
    private UserService userService;

    @PostMapping
    @RequestMapping("/login/google")
    @ResponseStatus(HttpStatus.CREATED)
    public ResponseEntity<User> provisionUserFromGoogle(
            Authentication authentication
    ) throws Exception {
        User user = userService.provisionUser((UserDetails) authentication.getDetails());
        return ResponseEntity.ok(user);
    }
}
