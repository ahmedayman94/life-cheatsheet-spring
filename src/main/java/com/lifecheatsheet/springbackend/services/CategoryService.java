package com.lifecheatsheet.springbackend.services;

import com.lifecheatsheet.springbackend.dtos.CategoryCreateDto;
import com.lifecheatsheet.springbackend.entities.Category;
import com.lifecheatsheet.springbackend.entities.User;
import com.lifecheatsheet.springbackend.exception.ForbiddenException;
import com.lifecheatsheet.springbackend.exception.NotFoundException;
import com.lifecheatsheet.springbackend.repositories.CategoryRepository;
import com.lifecheatsheet.springbackend.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {
    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    PermissionService permissionService;

    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }

    public Category getCategoryById(int id) throws NotFoundException {
        Optional<Category> categoryOptional = categoryRepository.findById(id);
        if (categoryOptional.isEmpty())
            throw new NotFoundException("This category cannot be found");

        return categoryOptional.get();
    }

    public Category createNewCategory(CategoryCreateDto newCategory, String userEmail) throws ForbiddenException {
        User author = userRepository.findByEmail(userEmail);

        permissionService.checkCreateAndDeleteCategoryPermission(author);

        Category category = new Category();
        category.setCreatedAt(new Date());
        category.setAuthor(author);
        category.setTitle(newCategory.getTitle());

        return categoryRepository.saveAndFlush(category);
    }

    public void deleteCategory(int id, String userEmail) throws NotFoundException, ForbiddenException {
        User author = userRepository.findByEmail(userEmail);

        permissionService.checkCreateAndDeleteCategoryPermission(author);

        Category category = getCategoryById(id);
        categoryRepository.delete(category);
    }
}
