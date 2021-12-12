package com.lifecheatsheet.springbackend.config;

import org.springframework.security.authentication.AbstractAuthenticationToken;

public class JwtAuthenticationToken extends AbstractAuthenticationToken {
    private final String idToken;
    private UserDetails userDetails;

    public JwtAuthenticationToken(String idToken) {
        super(null);
        this.idToken = idToken;
    }

    public JwtAuthenticationToken(String idToken, UserDetails userDetails) {
        super(null);
        this.idToken = idToken;
        this.setAuthenticated(true);
        this.userDetails = userDetails;
    }

    @Override
    public Object getCredentials() {
        return idToken;
    }

    @Override
    public Object getPrincipal() {
        return userDetails;
    }
}
