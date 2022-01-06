package com.lifecheatsheet.springbackend.services;


import com.auth0.jwk.Jwk;
import com.auth0.jwk.JwkException;
import com.auth0.jwk.JwkProvider;
import com.auth0.jwk.JwkProviderBuilder;
import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.lifecheatsheet.springbackend.entities.UserDetails;
import org.springframework.stereotype.Service;

import java.net.MalformedURLException;
import java.net.URL;
import java.security.interfaces.RSAPublicKey;

@Service
public class TokenService {
    static final String GOOGLE_JWKS_URI = "https://www.googleapis.com/oauth2/v3/certs";
    private final JwkProvider provider;

    public TokenService() throws MalformedURLException {
        provider = new JwkProviderBuilder(new URL(GOOGLE_JWKS_URI))
                .build();
    }

    public void verifyTokenByGoogle(String token) throws JwkException {
        try {
            if(token == null) throw new JwkException("no token");

            DecodedJWT jwt = JWT.decode(token);
            Jwk jwk = provider.get(jwt.getKeyId());
            Algorithm algorithm = Algorithm.RSA256((RSAPublicKey) jwk.getPublicKey(), null);
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("accounts.google.com")
                    .withAudience("637229961998-g5bvh8jj55q2ubgvuh7ej17k8no2vnus.apps.googleusercontent.com")
                    .build();
            verifier.verify(token);
        } catch (JWTVerificationException exception) {
            // @TODO: Log the error

            throw exception;
        }
    }

    public UserDetails extractUserFromToken(final String token) {
        DecodedJWT jwt = JWT.decode(token);

        String email = jwt.getClaim("email").asString();
        String firstName = jwt.getClaim("given_name").asString();
        String lastName = jwt.getClaim("family_name").asString();
        String picture = jwt.getClaim("picture").asString();

        return new UserDetails(firstName, lastName, email, picture);
    }
}
