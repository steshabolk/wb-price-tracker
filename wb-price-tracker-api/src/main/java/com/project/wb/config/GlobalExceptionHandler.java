package com.project.wb.config;

import com.project.wb.exception.ApiException;
import com.project.wb.exception.ExceptionResponse;
import com.project.wb.util.LocaleMessage;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;
import java.util.Set;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@Slf4j
@RequiredArgsConstructor
@RestControllerAdvice
public class GlobalExceptionHandler {

    private static final String INTERNAL_SERVER_ERROR_CODE = "INTERNAL_SERVER_ERROR";
    private static final String VALIDATION_FAILURE_CODE = "VALIDATION_FAILURE";
    private final LocaleMessage localeMessage;

    @ExceptionHandler(ApiException.class)
    public ResponseEntity<?> handleApiException(ApiException ex) {
        String message = localeMessage.getMessageFromProps(ex.getMessageProp(), ex.getMessageArgs());
        log.debug(message);
        ExceptionResponse response = new ExceptionResponse(
            ex.getCode(),
            getResponseDescription(ex.getStatus()),
            message
        );
        return ResponseEntity.status(ex.getStatus()).body(response);
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ExceptionResponse handleRuntimeException(Exception e) {
        log.warn(String.format("%s\n%s", e.getMessage(), e.getCause()));
        return new ExceptionResponse(
            INTERNAL_SERVER_ERROR_CODE,
            getResponseDescription(HttpStatus.INTERNAL_SERVER_ERROR),
            e.getMessage()
        );
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ExceptionResponse handleValidationException(MethodArgumentNotValidException ex) {
        String message = validationFieldsMessage(ex.getBindingResult());
        log.debug(message);
        return new ExceptionResponse(
            VALIDATION_FAILURE_CODE,
            getResponseDescription(HttpStatus.BAD_REQUEST),
            message
        );
    }

    @ExceptionHandler(ConstraintViolationException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public ExceptionResponse handleConstraintViolationException(ConstraintViolationException ex) {
        String message = constraintViolationMessage(ex.getConstraintViolations());
        log.debug(message);
        return new ExceptionResponse(
            VALIDATION_FAILURE_CODE,
            getResponseDescription(HttpStatus.BAD_REQUEST),
            message
        );
    }

    private String getResponseDescription(HttpStatus status) {
        return String.format("%s %s", status.value(), status.getReasonPhrase());
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
