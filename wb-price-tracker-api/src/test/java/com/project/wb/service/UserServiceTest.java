package com.project.wb.service;

import com.project.wb.dto.request.LoginRequest;
import com.project.wb.dto.request.RegisterRequest;
import com.project.wb.dto.response.TokenResponse;
import com.project.wb.entity.Role;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import com.project.wb.repository.UserRepository;
import com.project.wb.security.JwtUtil;
import java.util.Optional;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Captor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.crypto.password.PasswordEncoder;
import static com.project.wb.util.TestData.USER;
import static com.project.wb.util.TestData.USERNAME;
import static com.project.wb.util.TestUtils.expectApiError;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@ExtendWith(MockitoExtension.class)
class UserServiceTest {

    @InjectMocks
    private UserService userService;
    @Mock
    private UserRepository userRepository;
    @Mock
    private PasswordEncoder passwordEncoder;
    @Mock
    private JwtUtil jwtUtil;
    @Captor
    private ArgumentCaptor<User> userCaptor;

    @Nested
    class GetByUsernameWithProducts {

        @Test
        void whenUserExists_thenSucceed() {

            doReturn(Optional.of(USER)).when(userRepository).findWithProductsByUsername(any());

            userService.getByUsernameWithProducts(USERNAME);

            verify(userRepository, times(1)).findWithProductsByUsername(any());
        }

        @Test
        void whenUserNotFound_thenThrowException() {

            expectApiError(
                ApiError.USER_NOT_FOUND,
                () -> userService.getByUsernameWithProducts(USERNAME)
            );

            verify(userRepository, times(1)).findWithProductsByUsername(any());
        }
    }

    @Nested
    class Register {

        @Test
        void succeed() {

            doReturn("encodedPassword").when(passwordEncoder).encode(any());
            doReturn(User.builder().id(1L).build()).when(userRepository).save(any());

            userService.register(new RegisterRequest("username", "password"));

            verify(userRepository).save(userCaptor.capture());

            User user = userCaptor.getValue();

            assertEquals("username", user.getUsername());
            assertEquals("encodedPassword", user.getPassword());
            assertEquals(Role.ROLE_USER, user.getRole());
        }
    }

    @Nested
    class Login {

        @Test
        void succeed() {

            doReturn(Optional.of(USER)).when(userRepository).findByUsername(any());
            doReturn(true).when(passwordEncoder).matches(any(), any());
            doReturn("token").when(jwtUtil).generateJWT(any(), any());

            TokenResponse token = userService.login(new LoginRequest("username", "password"));

            assertEquals("token", token.accessToken());

            verify(userRepository, times(1)).findByUsername(any());
            verify(jwtUtil, times(1)).generateJWT(any(), any());
        }

        @Test
        void whenUserNotFound_thenThrowException() {

            doReturn(Optional.empty()).when(userRepository).findByUsername(any());

            expectApiError(
                ApiError.USER_NOT_FOUND,
                () -> userService.login(new LoginRequest("username", "password"))
            );

            verify(userRepository, times(1)).findByUsername(any());
            verify(jwtUtil, times(0)).generateJWT(any(), any());
        }

        @Test
        void whenPasswordDoesNotMatch_thenThrowException() {

            doReturn(Optional.of(USER)).when(userRepository).findByUsername(any());
            doReturn(false).when(passwordEncoder).matches(any(), any());

            expectApiError(
                ApiError.WRONG_PASSWORD,
                () -> userService.login(new LoginRequest("username", "password"))
            );

            verify(userRepository, times(1)).findByUsername(any());
            verify(jwtUtil, times(0)).generateJWT(any(), any());
        }
    }
}
