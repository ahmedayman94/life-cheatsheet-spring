package com.lifecheatsheet.springbackend.config;

import com.lifecheatsheet.springbackend.exception.UnAuthorizedException;
import com.lifecheatsheet.springbackend.services.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

@Component
public class OidcAuthenticationProvider implements AuthenticationProvider {
    @Autowired
    private TokenService tokenService;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String idToken = (String) authentication.getCredentials();
        try {
            tokenService.verifyTokenByGoogle(idToken);
        } catch (Exception e) {
            throw new UnAuthorizedException("Invalid token");
        }

        return new JwtAuthenticationToken(idToken, tokenService.extractUserFromToken(idToken));
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return JwtAuthenticationToken.class.isAssignableFrom(authentication);
    }
}
