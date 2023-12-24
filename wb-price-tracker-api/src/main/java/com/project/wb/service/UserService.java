package com.project.wb.service;

import com.project.wb.dto.request.LoginRequest;
import com.project.wb.dto.request.RegisterRequest;
import com.project.wb.dto.response.TokenResponse;
import com.project.wb.entity.Role;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import com.project.wb.repository.UserRepository;
import com.project.wb.security.JwtUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@RequiredArgsConstructor
@Service
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtUtil jwtUtil;

    public User getByUsernameWithProducts(String username) {
        return userRepository.findWithProductsByUsername(username)
            .orElseThrow(() -> ApiError.USER_NOT_FOUND.toException(username));
    }

    @Transactional
    public void register(RegisterRequest registerRequest) {
        User user = User.builder()
            .username(registerRequest.username())
            .password(passwordEncoder.encode(registerRequest.password()))
            .role(Role.ROLE_USER)
            .build();
        User saved = userRepository.save(user);
        log.debug("register new user: id={}", saved.getId());
    }

    public TokenResponse login(LoginRequest loginRequest) {
        User user = getByUsername(loginRequest.username());
        if (!passwordEncoder.matches(loginRequest.password(), user.getPassword())) {
            throw ApiError.WRONG_PASSWORD.toException();
        }
        log.debug("successful authentication of the user: id={}", user.getId());
        return new TokenResponse(jwtUtil.generateJWT(user.getId(), user.getUsername()));
    }

    private User getByUsername(String username) {
        return userRepository.findByUsername(username)
            .orElseThrow(() -> ApiError.USER_NOT_FOUND.toException(username));
    }
}
