package com.project.wb.security;

import com.project.wb.entity.User;
import lombok.experimental.UtilityClass;
import org.springframework.security.core.context.SecurityContextHolder;

@UtilityClass
public class AuthUtil {

    public static User getUserFromAuthentication() {
        UserDetailsImpl authentication =
            (UserDetailsImpl) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return authentication.user();
    }
}
