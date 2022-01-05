package com.lifecheatsheet.springbackend.repositories;

import com.lifecheatsheet.springbackend.entities.Category;
import com.lifecheatsheet.springbackend.entities.Post;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PostRepository extends JpaRepository<Post,Integer> {
    List<Post> findByCategory(Category category);
}
