package com.lifecheatsheet.springbackend.services;

import com.lifecheatsheet.springbackend.dtos.CategoryCreateDto;
import com.lifecheatsheet.springbackend.entities.*;
import com.lifecheatsheet.springbackend.exception.ForbiddenException;
import com.lifecheatsheet.springbackend.exception.NotFoundException;
import com.lifecheatsheet.springbackend.repositories.CategoryRepository;
import com.lifecheatsheet.springbackend.repositories.UserRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.api.function.Executable;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.Spy;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class CategoryServiceTest {
    private final List<Category> categoriesList = new ArrayList<>();

    @Mock
    private PermissionService permissionService;

    @Mock
    private CategoryRepository categoryRepository;

    @Mock
    private UserRepository userRepository;

    @Spy
    @InjectMocks
    private CategoryService categoryService = new CategoryService();

    @Test
    public void getAllCategories_shouldReturnAllCategories() {
        // ARRANGE
        Mockito.when(categoryRepository.findAll()).thenReturn(categoriesList);

        // ACT
        List<Category> categories = categoryService.getAllCategories();

        // ASSERT
        Assertions.assertEquals(categories, categoriesList);
    }

    @Test
    void getCategoryById_categoryDoesNotExist_shouldThrowNotFoundException() {
        // ARRANGE
        Mockito.when(categoryRepository.findById(1)).thenReturn(Optional.empty());

        // ACT
        Executable executable = () -> categoryService.getCategoryById(1);

        // ASSERT
        Assertions.assertThrowsExactly(NotFoundException.class, executable);
    }

    @Test
    void getCategoryById_categoryExists_shouldReturnCorrectCategory() throws NotFoundException {
        // ARRANGE
        Category expectedCategory = new Category();
        Mockito
                .when(categoryRepository.findById(Mockito.anyInt()))
                .thenReturn(Optional.of(expectedCategory));

        // ACT
        Category actualCategory = categoryService.getCategoryById(1);

        // ASSERT
        Assertions.assertEquals(expectedCategory, actualCategory);
    }

    @Test
    void createNewCategory_userDoesntHavePermission_shouldNotSaveCategoryAndThrowException()
            throws ForbiddenException {
        // ARRANGE
        CategoryCreateDto newCategory = new CategoryCreateDto();
        User author = new User();
        newCategory.setTitle("A new title");
        Mockito
                .doThrow(new ForbiddenException())
                .when(permissionService).checkCreateAndDeleteCategoryPermission(author);
        Mockito
                .when(userRepository.findByEmail(author.getEmail()))
                .thenReturn(author);

        // ACT
        Executable executable = () -> categoryService.createNewCategory(newCategory, author.getEmail());

        // ASSERT
        Assertions.assertThrows(ForbiddenException.class, executable);
        verify(categoryRepository, times(0)).save(any());
    }

    @Test
    void createNewCategory_userHasPermission_shouldSaveCategory()
            throws ForbiddenException {
        // ARRANGE
        CategoryCreateDto newCategory = new CategoryCreateDto();
        newCategory.setTitle("A new title");
        User author = new User();
        Mockito
                .doNothing()
                .when(permissionService).checkCreateAndDeleteCategoryPermission(author);
        Mockito
                .when(userRepository.findByEmail(author.getEmail()))
                .thenReturn(author);

        // ACT
        categoryService.createNewCategory(newCategory, author.getEmail());

        // ASSERT
        verify(categoryRepository, times(1)).saveAndFlush(any());
    }

    @Test
    void deleteCategory_userDoesntHavePermission_shouldNotDeleteCategoryAndThrowException()
            throws ForbiddenException {
        // ARRANGE
        User author = new User();
        Mockito
                .doThrow(new ForbiddenException())
                .when(permissionService).checkCreateAndDeleteCategoryPermission(author);
        Mockito
                .when(userRepository.findByEmail(author.getEmail()))
                .thenReturn(author);

        // ACT
        Executable executable = () -> categoryService.deleteCategory(1, author.getEmail());

        // ASSERT
        Assertions.assertThrows(ForbiddenException.class, executable);
        verify(categoryRepository, times(0)).delete(any());
    }

    @Test
    void deleteCategory_userHasPermission_shouldDeleteCategory()
            throws ForbiddenException {
        // ARRANGE
        User author = new User();
        Mockito
                .doNothing()
                .when(permissionService).checkCreateAndDeleteCategoryPermission(author);
        Mockito
                .when(userRepository.findByEmail(author.getEmail()))
                .thenReturn(author);
        Mockito
                .when(categoryRepository.findById(any()))
                .thenReturn(Optional.of(new Category()));

        // ACT
        Executable executable = () -> categoryService.deleteCategory(1, author.getEmail());

        // ASSERT
        Assertions.assertDoesNotThrow(executable);
        verify(categoryRepository, times(1)).delete(any());
    }
}