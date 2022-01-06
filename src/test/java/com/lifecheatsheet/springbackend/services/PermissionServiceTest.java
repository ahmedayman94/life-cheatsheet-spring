package com.lifecheatsheet.springbackend.services;

import com.lifecheatsheet.springbackend.entities.User;
import com.lifecheatsheet.springbackend.entities.UserAccessRights;
import com.lifecheatsheet.springbackend.exception.ForbiddenException;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.function.Executable;

public class PermissionServiceTest {
    private User getNewlyCreatedUser() {
        User user = new User();
        user.setFirstName("User1");
        user.setLastName("User1");
        user.setIsActive(false);
        user.setAccess(UserAccessRights.READ_ONLY);

        return user;
    }

    private PermissionService permissionService;

    @BeforeEach
    public void setup(){
        permissionService = new PermissionService();
    }

    @Test
    public void inactiveUser_checkCreateCategory_shouldThrowForbiddenException() {
        // ARRANGE
        User user = getNewlyCreatedUser();
        user.setIsActive(false);

        // ACT
        Executable executable = () -> permissionService.checkCreateAndDeleteCategoryPermission(user);

        // ASSERT
        Assertions.assertThrows(ForbiddenException.class,executable);
    }

    @Test
    public void publisherAndActiveUser_checkCreateCategory_shouldThrowException() {
        // ARRANGE
        User user = getNewlyCreatedUser();
        user.setIsActive(true);
        user.setAccess(UserAccessRights.PUBLISHER);

        // ACT
        Executable executable = () -> permissionService.checkCreateAndDeleteCategoryPermission(user);

        // ASSERT
        Assertions.assertThrows(ForbiddenException.class,executable);
    }

    @Test
    public void adminAndActiveUser_checkCreateCategory_shouldNotThrowException() {
        // ARRANGE
        User user = getNewlyCreatedUser();
        user.setIsActive(true);
        user.setAccess(UserAccessRights.ADMIN);

        // ACT
        Executable executable = () -> permissionService.checkCreateAndDeleteCategoryPermission(user);

        // ASSERT
        Assertions.assertDoesNotThrow(executable);
    }
}