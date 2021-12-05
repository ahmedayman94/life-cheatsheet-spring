package com.lifecheatsheet.springbackend.repositories;

import com.lifecheatsheet.springbackend.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findByEmail(String email);
}
