package com.lifecheatsheet.springbackend.services;

import com.lifecheatsheet.springbackend.entities.User;
import com.lifecheatsheet.springbackend.exception.UnAuthorizedException;
import com.lifecheatsheet.springbackend.models.SignupRequest;
import com.lifecheatsheet.springbackend.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private TokenService tokenService;

    public UserService(UserRepository userRepository, TokenService tokenVerifier) {
        this.userRepository = userRepository;
        this.tokenService = tokenVerifier;
    }

    public User provisionUser(final SignupRequest signupRequest) throws Exception {
        try {
            tokenService.verifyTokenByGoogle(signupRequest.getIdToken());
        } catch (Exception exception) {
            throw new UnAuthorizedException();
        }

        User userDecodedFromToken = tokenService.extractUserFromToken(signupRequest.getIdToken());
        User userFromDb = userRepository.findByEmail(userDecodedFromToken.getEmail());
        if (userFromDb == null)
            userFromDb = registerUser(userDecodedFromToken);

        authenticateUser(userFromDb);

        return userFromDb;
    }

    private User registerUser(final User newUser) {
//        if (username == null) throw new InvalidParameterException("Username must be defined");
        return userRepository.saveAndFlush(newUser);
    }

    private void authenticateUser(User user) {

    }
}
