package com.project.wb.controller;

import com.project.wb.config.GlobalExceptionHandler;
import com.project.wb.dto.request.LoginRequest;
import com.project.wb.dto.request.RegisterRequest;
import com.project.wb.repository.UserRepository;
import com.project.wb.security.JwtUtil;
import com.project.wb.service.UserService;
import com.project.wb.util.Messages;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import java.util.Map;
import java.util.stream.Stream;

import static com.project.wb.util.TestData.password;
import static com.project.wb.util.TestData.username;
import static com.project.wb.util.TestUtils.doPostRequest;
import static com.project.wb.util.TestUtils.expectOkStatus;
import static com.project.wb.util.TestUtils.expectValidationError;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@WebMvcTest
@AutoConfigureMockMvc(addFilters = false)
@Import(AuthController.class)
@ContextConfiguration(classes = {GlobalExceptionHandler.class, Messages.class})
class AuthControllerTest {

    @MockBean
    private UserService userService;

    @MockBean
    private JwtUtil jwtUtil;

    @MockBean
    private UserRepository userRepository;

    @Autowired
    private MockMvc mockMvc;

    @Nested
    class Register {

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.AuthControllerTest#validInput")
        void success(String username, String password) {
            RegisterRequest registerRequest = new RegisterRequest(username, password);

            doReturn(false).when(userRepository).existsByUsername(any());

            ResultActions result = doPostRequest(mockMvc, registerRequest, "/register", Map.of());

            expectOkStatus(result);
            verify(userRepository, times(1)).existsByUsername(username);
            verify(userService, times(1)).register(any());
        }

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.AuthControllerTest#invalidInput")
        void shouldThrowExceptionIfValidationFailed(String username, String password) {
            RegisterRequest registerRequest = new RegisterRequest(username, password);

            doReturn(false).when(userRepository).existsByUsername(any());

            ResultActions result = doPostRequest(mockMvc, registerRequest, "/register", Map.of());

            expectValidationError(result);
            verify(userRepository, times(1)).existsByUsername(username);
            verify(userService, times(0)).register(any());
        }

        @Test
        void shouldThrowExceptionIfUsernameNotUnique() {
            RegisterRequest registerRequest = new RegisterRequest(username, password);

            doReturn(true).when(userRepository).existsByUsername(any());

            ResultActions result = doPostRequest(mockMvc, registerRequest, "/register", Map.of());

            expectValidationError(result);
            verify(userRepository, times(1)).existsByUsername(username);
            verify(userService, times(0)).register(any());
        }
    }

    @Nested
    class Auth {

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.AuthControllerTest#validInput")
        void success(String username, String password) {
            LoginRequest loginRequest = new LoginRequest(username, password);

            ResultActions result = doPostRequest(mockMvc, loginRequest, "/login", Map.of());

            expectOkStatus(result);
            verify(userService, times(1)).login(any());
            verify(jwtUtil, times(1)).setAuthHeader(any(), any());
        }

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.AuthControllerTest#invalidInput")
        void shouldThrowExceptionIfValidationFailed(String username, String password) {
            LoginRequest loginRequest = new LoginRequest(username, password);

            ResultActions result = doPostRequest(mockMvc, loginRequest, "/login", Map.of());

            expectValidationError(result);
            verify(userService, times(0)).register(any());
            verify(jwtUtil, times(0)).setAuthHeader(any(), any());
        }
    }

    static Stream<Arguments> validInput() {
        return Stream.of(
                Arguments.of("username", password),
                Arguments.of("username1", password),
                Arguments.of("username-1", password),
                Arguments.of("username_1", password)
        );
    }

    static Stream<Arguments> invalidInput() {
        return Stream.of(
                Arguments.of(null, password),
                Arguments.of("a", password),
                Arguments.of("a".repeat(31), password),
                Arguments.of("username!", password),
                Arguments.of("user username", password),

                Arguments.of(username, null),
                Arguments.of(username, "Pass0"),
                Arguments.of(username, "P0" + "a".repeat(30)),
                Arguments.of(username, "password0"),
                Arguments.of(username, "Password"),
                Arguments.of(username, "P0")
        );
    }
}
