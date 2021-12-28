package com.lifecheatsheet.springbackend.repositories;

import com.lifecheatsheet.springbackend.entities.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
}
