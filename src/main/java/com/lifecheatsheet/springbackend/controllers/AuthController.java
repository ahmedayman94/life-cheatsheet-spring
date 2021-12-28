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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@RestController
@RequestMapping("/api/v1/auth")
public class AuthController {
    @Autowired
    private UserService userService;

    @PostMapping("/login/google")
    @ResponseStatus(HttpStatus.CREATED)
    public ResponseEntity<User> provisionUserFromGoogle(
            HttpServletRequest request,
            Authentication authentication
    ) throws Exception {
        User user = userService.provisionUser((UserDetails) authentication.getDetails());
        invalidateOldSessionAndCreateNew(request);

        return ResponseEntity.ok(user);
    }

    @PostMapping("/logout")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void logout(
            HttpServletRequest request,
            Authentication authentication
    ) throws Exception {
        request.getSession(false).invalidate();
    }

    private HttpSession invalidateOldSessionAndCreateNew(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null)
            session.invalidate();

        // Create new session
        return request.getSession();
    }
}
