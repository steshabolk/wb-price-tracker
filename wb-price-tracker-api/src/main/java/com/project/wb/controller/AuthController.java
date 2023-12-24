package com.project.wb.controller;

import com.project.wb.dto.request.LoginRequest;
import com.project.wb.dto.request.RegisterRequest;
import com.project.wb.dto.response.TokenResponse;
import com.project.wb.exception.ExceptionResponse;
import com.project.wb.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import static com.project.wb.util.SwaggerConst.INVALID_INPUT_CODE;
import static com.project.wb.util.SwaggerConst.INVALID_INPUT_DESCRIPTION;
import static com.project.wb.util.SwaggerConst.JSON;
import static com.project.wb.util.SwaggerConst.SUCCESSFUL_CODE;
import static com.project.wb.util.SwaggerConst.SUCCESSFUL_DESCRIPTION;
import static com.project.wb.util.SwaggerConst.UNAUTHORIZED_CODE;
import static com.project.wb.util.SwaggerConst.UNAUTHORIZED_DESCRIPTION;

@Tag(name = "auth")
@RequiredArgsConstructor
@RestController
public class AuthController {

    private final UserService userService;

    @Operation(summary = "register new user")
    @ApiResponses(value = {
        @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION, content = @Content),
        @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                     content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class)))
    })
    @PostMapping("/register")
    public void register(@RequestBody @Valid RegisterRequest registerRequest) {
        userService.register(registerRequest);
    }

    @Operation(summary = "user jwt authentication")
    @ApiResponses(value = {
        @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION, content = @Content),
        @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                     content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class))),
        @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION, content = @Content)
    })
    @PostMapping("/login")
    public TokenResponse login(@RequestBody @Valid LoginRequest loginRequest) {
        return userService.login(loginRequest);
    }
}
