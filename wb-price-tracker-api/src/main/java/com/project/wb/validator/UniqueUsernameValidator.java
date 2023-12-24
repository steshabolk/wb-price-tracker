package com.project.wb.validator;

import com.project.wb.dto.request.RegisterRequest;
import com.project.wb.repository.UserRepository;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.springframework.beans.factory.annotation.Autowired;

class UniqueUsernameValidator implements ConstraintValidator<UniqueUsername, RegisterRequest> {

    private final UserRepository userRepository;

    @Autowired UniqueUsernameValidator(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public boolean isValid(RegisterRequest value, ConstraintValidatorContext context) {
        if (value == null) {
            return true;
        }
        Boolean isExists = userRepository.existsByUsername(value.username());
        if (isExists) {
            context.disableDefaultConstraintViolation();
            context
                .buildConstraintViolationWithTemplate(context.getDefaultConstraintMessageTemplate())
                .addPropertyNode("username")
                .addConstraintViolation();
            return false;
        }
        return true;
    }
}
