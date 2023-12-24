package com.project.wb.controller;

import com.project.wb.config.GlobalExceptionHandler;
import com.project.wb.dto.request.LoginRequest;
import com.project.wb.dto.request.RegisterRequest;
import com.project.wb.repository.UserRepository;
import com.project.wb.service.UserService;
import com.project.wb.util.LocaleMessage;
import java.util.Map;
import java.util.stream.Stream;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import static com.project.wb.util.TestData.PASSWORD;
import static com.project.wb.util.TestData.USERNAME;
import static com.project.wb.util.TestUtils.doPostRequest;
import static com.project.wb.util.TestUtils.expectOkStatus;
import static com.project.wb.util.TestUtils.expectValidationError;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@WebMvcTest
@AutoConfigureMockMvc(addFilters = false)
@ContextConfiguration(classes = {AuthController.class, GlobalExceptionHandler.class, LocaleMessage.class})
class AuthControllerTest {

    @MockBean
    private UserService userService;
    @MockBean
    private UserRepository userRepository;
    @Autowired
    private MockMvc mockMvc;

    @Nested
    class Register {

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.AuthControllerTest#validRequest")
        void whenValidRequest_thenSucceed(String username, String password) {
            RegisterRequest registerRequest = new RegisterRequest(username, password);

            doReturn(false).when(userRepository).existsByUsername(any());

            ResultActions result = doPostRequest(mockMvc, registerRequest, "/register", Map.of());

            expectOkStatus(result);
            verify(userRepository, times(1)).existsByUsername(username);
            verify(userService, times(1)).register(any());
        }

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.AuthControllerTest#invalidRequest")
        void whenInvalidRequest_thenThrowException(String username, String password) {
            RegisterRequest registerRequest = new RegisterRequest(username, password);

            doReturn(false).when(userRepository).existsByUsername(any());

            ResultActions result = doPostRequest(mockMvc, registerRequest, "/register", Map.of());

            expectValidationError(result);
            verify(userRepository, times(1)).existsByUsername(username);
            verify(userService, times(0)).register(any());
        }

        @Test
        void whenUsernameNotUnique_thenThrowException() {
            RegisterRequest registerRequest = new RegisterRequest(USERNAME, PASSWORD);

            doReturn(true).when(userRepository).existsByUsername(any());

            ResultActions result = doPostRequest(mockMvc, registerRequest, "/register", Map.of());

            expectValidationError(result);
            verify(userRepository, times(1)).existsByUsername(USERNAME);
            verify(userService, times(0)).register(any());
        }
    }

    @Nested
    class Login {

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.AuthControllerTest#validRequest")
        void whenValidRequest_thenSucceed(String username, String password) {
            LoginRequest loginRequest = new LoginRequest(username, password);

            ResultActions result = doPostRequest(mockMvc, loginRequest, "/login", Map.of());

            expectOkStatus(result);
            verify(userService, times(1)).login(any());
        }

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.AuthControllerTest#invalidRequest")
        void whenInvalidRequest_thenThrowException(String username, String password) {
            LoginRequest loginRequest = new LoginRequest(username, password);

            ResultActions result = doPostRequest(mockMvc, loginRequest, "/login", Map.of());

            expectValidationError(result);
            verify(userService, times(0)).register(any());
        }
    }

    private static Stream<Arguments> validRequest() {
        return Stream.of(
            Arguments.of("username", PASSWORD),
            Arguments.of("username1", PASSWORD),
            Arguments.of("username-1", PASSWORD),
            Arguments.of("username_1", PASSWORD)
        );
    }

    private static Stream<Arguments> invalidRequest() {
        return Stream.of(
            Arguments.of(null, PASSWORD),
            Arguments.of("a", PASSWORD),
            Arguments.of("a".repeat(65), PASSWORD),
            Arguments.of("username!", PASSWORD),
            Arguments.of("user username", PASSWORD),

            Arguments.of(USERNAME, null),
            Arguments.of(USERNAME, "Pass0"),
            Arguments.of(USERNAME, "P0" + "a".repeat(30)),
            Arguments.of(USERNAME, "password0"),
            Arguments.of(USERNAME, "Password"),
            Arguments.of(USERNAME, "P0")
        );
    }
}
