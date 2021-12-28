package com.lifecheatsheet.springbackend.services;

import com.lifecheatsheet.springbackend.config.UserDetails;
import com.lifecheatsheet.springbackend.dtos.UserUpdateDto;
import com.lifecheatsheet.springbackend.entities.User;
import com.lifecheatsheet.springbackend.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public User provisionUser(final UserDetails userDetails) {
        User userFromDb = userRepository.findByEmail(userDetails.getEmail());
        if (userFromDb == null)
            userFromDb = registerUser(userDetails);

        return userFromDb;
    }

    public User updateUserInfo(String userEmail, UserUpdateDto user) {
        final User userFromDb = userRepository.findByEmail(userEmail);

        userFromDb.setFirstName(user.getFirstName());
        userFromDb.setLastName(user.getLastName());

        return userRepository.saveAndFlush(userFromDb);
    }

    private User registerUser(final UserDetails userDetails) {
        return userRepository.saveAndFlush(
                new User(
                        userDetails.getFirstName(),
                        userDetails.getLastName(),
                        userDetails.getEmail(),
                        userDetails.getPicture()
                )
        );
    }
}
