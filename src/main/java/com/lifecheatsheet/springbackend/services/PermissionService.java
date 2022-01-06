package com.lifecheatsheet.springbackend.services;

import com.lifecheatsheet.springbackend.entities.User;
import com.lifecheatsheet.springbackend.entities.UserAccessRights;
import com.lifecheatsheet.springbackend.exception.ForbiddenException;
import org.springframework.stereotype.Service;

@Service
public class PermissionService {
    public void checkCreateAndDeleteCategoryPermission(User user) throws ForbiddenException {
        if (user.getIsActive() && isAdmin(user.getAccess()))
            return;

        throw new ForbiddenException();
    }

    private boolean isPublisherOrAdmin(String access) {
        return access.equalsIgnoreCase(UserAccessRights.PUBLISHER)
                || isAdmin(access);
    }

    private boolean isAdmin(String access){
        return access.equalsIgnoreCase(UserAccessRights.ADMIN);
    }
}
