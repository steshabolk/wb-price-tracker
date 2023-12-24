package com.project.wb.security;


import com.project.wb.config.GlobalExceptionHandler;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import com.project.wb.exception.ApiException;
import com.project.wb.repository.UserRepository;
import com.project.wb.service.UserService;
import lombok.SneakyThrows;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.mockito.Captor;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.SpyBean;
import org.springframework.http.HttpStatus;
import org.springframework.mock.web.MockFilterChain;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

import static com.project.wb.util.TestData.username;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@SpringBootTest
class JwtAuthFilterTest {

    @SpyBean
    private MockHttpServletRequest request;

    @SpyBean
    private MockHttpServletResponse response;

    @SpyBean
    private MockFilterChain filterChain;

    @SpyBean
    private JwtUtil jwtUtil;

    @SpyBean
    private UserDetailsServiceImpl userDetailsServiceImpl;

    @SpyBean
    private GlobalExceptionHandler exceptionHandler;

    @SpyBean
    private UserRepository userRepository;

    @SpyBean
    private UserService userService;

    @SpyBean
    private JwtAuthFilter jwtAuthFilter;

    @Captor
    private ArgumentCaptor<ApiException> apiExceptionCaptor;

    @Test
    @SneakyThrows
    void shouldThrowExceptionIfMissingAuthHeader() {

        doReturn(null).when(request).getHeader(any());

        jwtAuthFilter.doFilterInternal(request, response, filterChain);

        verify(exceptionHandler).handleApiException(apiExceptionCaptor.capture());

        assertEquals(HttpStatus.BAD_REQUEST.value(), response.getStatus());
        assertEquals(ApiError.MISSING_TOKEN.name(), apiExceptionCaptor.getValue().getCode());
    }

    @Test
    @SneakyThrows
    void shouldThrowExceptionIfInvalidAuthHeader() {

        doReturn("token").when(request).getHeader(any());

        jwtAuthFilter.doFilterInternal(request, response, filterChain);

        verify(exceptionHandler).handleApiException(apiExceptionCaptor.capture());

        assertEquals(HttpStatus.BAD_REQUEST.value(), response.getStatus());
        assertEquals(ApiError.INVALID_TOKEN.name(), apiExceptionCaptor.getValue().getCode());
    }

    @Test
    @SneakyThrows
    void success() {

        User user = userRepository.findByUsername(username).get();
        String token = jwtUtil.generateToken(user.getId(), user.getUsername(), user.getRole().name());

        doReturn(jwtUtil.getTokenPrefix() + token).when(request).getHeader(any());

        jwtAuthFilter.doFilterInternal(request, response, filterChain);

        User authUser = userService.getUserFromAuthentication();

        assertEquals(user.getId(), authUser.getId());
        assertEquals(user.getUsername(), authUser.getUsername());

        verify(userDetailsServiceImpl, times(1)).loadUserByUsername(user.getUsername());
    }

}
