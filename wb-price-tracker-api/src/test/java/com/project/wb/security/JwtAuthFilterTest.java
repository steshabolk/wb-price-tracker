package com.project.wb.security;

import com.project.wb.config.ApplicationConfig;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import lombok.SneakyThrows;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.mockito.Captor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.mock.web.MockFilterChain;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.web.servlet.HandlerExceptionResolver;
import static com.project.wb.util.TestData.USER;
import static com.project.wb.util.TestData.USERNAME;
import static com.project.wb.util.TestUtils.expectApiError;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@SpringBootTest(classes = {JwtAuthFilter.class, JwtUtil.class})
class JwtAuthFilterTest {

    @MockBean
    private MockHttpServletRequest request;
    @MockBean
    private MockHttpServletResponse response;
    @MockBean
    private MockFilterChain filterChain;
    @MockBean
    private ApplicationConfig applicationConfig;
    @MockBean
    private ApplicationConfig.JwtConfig jwtConfig;
    @MockBean
    private UserDetailsServiceImpl userDetailsService;
    @Autowired
    private JwtAuthFilter jwtAuthFilter;
    @Autowired
    private JwtUtil jwtUtil;
    @MockBean
    private HandlerExceptionResolver handlerExceptionResolver;
    @Captor
    private ArgumentCaptor<Exception> exceptionCaptor;

    @Test
    @SneakyThrows
    void whenMissingAuthHeader_thenThrowException() {

        doReturn(jwtConfig).when(applicationConfig).jwt();
        doReturn(null).when(request).getHeader(any());

        jwtAuthFilter.doFilterInternal(request, response, filterChain);

        verify(handlerExceptionResolver, times(1)).resolveException(any(), any(), any(), exceptionCaptor.capture());

        expectApiError(ApiError.MISSING_TOKEN, exceptionCaptor.getValue());
    }

    @Test
    @SneakyThrows
    void whenInvalidToken_thenThrowException() {

        doReturn(jwtConfig).when(applicationConfig).jwt();
        doReturn("secret").when(jwtConfig).secret();
        doReturn("token").when(request).getHeader(any());

        jwtAuthFilter.doFilterInternal(request, response, filterChain);

        verify(handlerExceptionResolver, times(1)).resolveException(any(), any(), any(), exceptionCaptor.capture());

        expectApiError(ApiError.INVALID_TOKEN, exceptionCaptor.getValue());
    }

    @Test
    @SneakyThrows
    void whenExpiredToken_thenThrowException() {

        doReturn(jwtConfig).when(applicationConfig).jwt();
        doReturn("secret").when(jwtConfig).secret();
        doReturn(0).when(jwtConfig).ttlHours();
        doReturn(jwtUtil.generateJWT(1L, USERNAME)).when(request).getHeader(any());

        jwtAuthFilter.doFilterInternal(request, response, filterChain);

        verify(handlerExceptionResolver, times(1)).resolveException(any(), any(), any(), exceptionCaptor.capture());

        expectApiError(ApiError.TOKEN_EXPIRED, exceptionCaptor.getValue());
    }

    @Test
    @SneakyThrows
    void whenValidToken_thenSucceed() {

        doReturn(jwtConfig).when(applicationConfig).jwt();
        doReturn("secret").when(jwtConfig).secret();
        doReturn(1).when(jwtConfig).ttlHours();
        doReturn(jwtUtil.generateJWT(1L, USERNAME)).when(request).getHeader(any());
        doReturn(new UserDetailsImpl(USER)).when(userDetailsService).loadUserByUsername(any());

        jwtAuthFilter.doFilterInternal(request, response, filterChain);

        verify(userDetailsService, times(1)).loadUserByUsername(USERNAME);

        User user = AuthUtil.getUserFromAuthentication();

        assertEquals(user.getId(), 1L);
        assertEquals(user.getUsername(), USERNAME);
    }
}
