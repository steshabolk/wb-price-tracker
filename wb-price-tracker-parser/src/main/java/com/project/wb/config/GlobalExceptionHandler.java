package com.project.wb.config;

import com.project.wb.exception.ApiException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    @ExceptionHandler(Exception.class)
    public void handleRuntimeException(Exception e) {
        log.error(String.format("error :%n%s%n%s", e.getMessage(), e.getCause()));
    }

    @ExceptionHandler(ApiException.class)
    public void handleApiException(ApiException e) {
        log.error(e.getMessage());
    }
}
