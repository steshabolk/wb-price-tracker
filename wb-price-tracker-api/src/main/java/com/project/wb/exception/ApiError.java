package com.project.wb.exception;

import java.util.Arrays;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;

@RequiredArgsConstructor
@Getter
public enum ApiError {

    USER_NOT_FOUND(HttpStatus.BAD_REQUEST, "ex.api.userNotFound"),
    WRONG_PASSWORD(HttpStatus.BAD_REQUEST, "ex.api.wrongPassword"),
    WB_INVALID_CODE(HttpStatus.BAD_REQUEST, "ex.api.wbInvalidCode"),
    WB_SERVICE_UNAVAILABLE(HttpStatus.BAD_REQUEST, "ex.api.wbServiceUnavailable"),
    PRODUCT_ALREADY_EXISTS(HttpStatus.CONFLICT, "ex.api.productAlreadyExists"),
    PRODUCT_NOT_FOUND(HttpStatus.BAD_REQUEST, "ex.api.productNotFound"),
    TOKEN_EXPIRED(HttpStatus.UNAUTHORIZED, "ex.api.tokenExpired"),
    MISSING_TOKEN(HttpStatus.UNAUTHORIZED, "ex.api.missingToken"),
    INVALID_TOKEN(HttpStatus.UNAUTHORIZED, "ex.api.invalidToken");

    private final HttpStatus httpStatus;
    private final String messageProp;

    public ApiException toException(Object... args) {
        return new ApiException(
            name(),
            messageProp,
            Arrays.stream(args)
                .map(Object::toString)
                .toArray(String[]::new),
            httpStatus
        );
    }
}
