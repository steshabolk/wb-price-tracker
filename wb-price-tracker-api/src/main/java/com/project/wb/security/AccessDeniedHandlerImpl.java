package com.project.wb.security;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;


@Component
public class AccessDeniedHandlerImpl implements AccessDeniedHandler {

    Logger log = LoggerFactory.getLogger(AuthenticationEntryPointImpl.class);

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws ServletException, IOException {
        log.debug("access denied: {}, url: {}", accessDeniedException.getMessage(), request.getRequestURI());
        response.sendError(HttpServletResponse.SC_FORBIDDEN, "forbidden");
    }
}
