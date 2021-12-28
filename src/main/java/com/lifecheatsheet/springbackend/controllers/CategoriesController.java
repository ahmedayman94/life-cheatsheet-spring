package com.lifecheatsheet.springbackend.controllers;

import com.lifecheatsheet.springbackend.config.UserDetails;
import com.lifecheatsheet.springbackend.dtos.CategoryCreateDto;
import com.lifecheatsheet.springbackend.dtos.CategoryReadDto;
import com.lifecheatsheet.springbackend.entities.Category;
import com.lifecheatsheet.springbackend.exception.NotFoundException;
import com.lifecheatsheet.springbackend.services.CategoryService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/categories")
public class CategoriesController {
    @Autowired
    CategoryService categoryService;

    @Autowired
    ModelMapper modelMapper;

    @GetMapping("{id}")
    @ResponseStatus(HttpStatus.OK)
    public CategoryReadDto getCategoryById(@PathVariable @Valid int id) throws NotFoundException {
        return modelMapper.map(
                categoryService.getCategoryById(id),
                CategoryReadDto.class
        );
    }

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<CategoryReadDto> getAllCategories(HttpSession session) {
        return categoryService.getAllCategories().stream()
                .map(category -> modelMapper.map(category, CategoryReadDto.class))
                .collect(Collectors.toList());
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public CategoryReadDto createCategory(
            @Valid @RequestBody CategoryCreateDto categoryCreateDto,
            Authentication authentication
    ) {
        UserDetails userDetails = (UserDetails) authentication.getDetails();
        return modelMapper.map(
                categoryService.createNewCategory(categoryCreateDto, userDetails.getEmail()),
                CategoryReadDto.class
        );
    }

    @DeleteMapping("{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteCategory(
            @PathVariable @Valid int id,
            Authentication authentication
    ) throws NotFoundException {
        UserDetails userDetails = (UserDetails) authentication.getDetails();
        categoryService.deleteCategory(id);
    }
}
