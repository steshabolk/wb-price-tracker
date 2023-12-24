package com.project.wb.config;

import com.project.wb.exception.ApiException;
import com.project.wb.exception.ExceptionResponse;
import com.project.wb.util.Messages;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.time.LocalDateTime;
import java.util.Set;
import java.util.stream.Collectors;

@ControllerAdvice
public class GlobalExceptionHandler {

    Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    private final Messages messages;

    public GlobalExceptionHandler(Messages messages) {
        this.messages = messages;
    }

    @ExceptionHandler(ApiException.class)
    public ResponseEntity<?> handleApiException(ApiException ex) {
        String message = messages.getMessageFromProps(ex.getMessageProp(), ex.getMessageArgs());
        log.debug(message);
        ExceptionResponse response = new ExceptionResponse(ex.getCode(), message, LocalDateTime.now());
        return ResponseEntity.status(ex.getStatus()).body(response);
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<?> handleRuntimeException(Exception e) {
        log.debug(String.format("%s%n%s", e.getMessage(), e.getCause()));
        ExceptionResponse response = new ExceptionResponse("INTERNAL_API_ERROR", e.getMessage(), LocalDateTime.now());
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<?> handleValidationException(MethodArgumentNotValidException ex) {
        String message = validationFieldsMessage(ex.getBindingResult());
        log.debug(message);
        ExceptionResponse response = new ExceptionResponse("VALIDATION_ERROR", message, LocalDateTime.now());
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
    }

    @ExceptionHandler(ConstraintViolationException.class)
    public ResponseEntity<?> handleConstraintViolationException(ConstraintViolationException ex) {
        String message = constraintViolationMessage(ex.getConstraintViolations());
        log.debug(message);
        ExceptionResponse response = new ExceptionResponse("VALIDATION_ERROR", message, LocalDateTime.now());
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
    }

    private String validationFieldsMessage(Errors errors) {
        return errors.getFieldErrors()
                .stream()
                .map(error -> error.getField() + ": " + error.getDefaultMessage())
                .collect(Collectors.joining("; "));
    }

    private String constraintViolationMessage(Set<ConstraintViolation<?>> errors) {
        return errors.stream()
                .map(error -> error.getPropertyPath() + ": " + error.getMessage())
                .collect(Collectors.joining("; "));
    }
}
