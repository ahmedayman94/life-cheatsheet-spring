package com.lifecheatsheet.springbackend.config;

import org.springframework.security.authentication.AbstractAuthenticationToken;

public class JwtAuthenticationToken extends AbstractAuthenticationToken {
    private final String idToken;

    public JwtAuthenticationToken(String idToken) {
        super(null);
        this.idToken = idToken;
    }

    public JwtAuthenticationToken(String idToken, UserDetails userDetails) {
        super(null);
        this.idToken = idToken;
        setAuthenticated(true);
        setDetails(userDetails);
    }

    @Override
    public String getCredentials() {
        return idToken;
    }

    @Override
    public String getPrincipal() {
        return ((UserDetails) getDetails()).getEmail();
    }
}
