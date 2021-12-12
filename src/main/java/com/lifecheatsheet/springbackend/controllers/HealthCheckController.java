package com.lifecheatsheet.springbackend.controllers;

import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@RestController
public class HealthCheckController {

    @GetMapping
    @RequestMapping("/api/v1/healthcheck")
    public void getStatus(HttpSession session) {

    }
}
