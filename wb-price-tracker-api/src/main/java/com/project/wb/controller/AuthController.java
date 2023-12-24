package com.project.wb.controller;

import com.project.wb.dto.request.LoginRequest;
import com.project.wb.dto.request.RegisterRequest;
import com.project.wb.entity.User;
import com.project.wb.exception.ExceptionResponse;
import com.project.wb.security.JwtUtil;
import com.project.wb.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

@Tag(name = "Auth")
@RestController
public class AuthController {

    private final UserService userService;
    private final JwtUtil jwtUtil;

    @Autowired
    public AuthController(UserService userService, JwtUtil jwtUtil) {
        this.userService = userService;
        this.jwtUtil = jwtUtil;
    }

    @Operation(summary = "Register new user")
    @ApiResponses(value = {
            @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                    content = @Content),
            @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                    content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class)))
    })
    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody @Valid RegisterRequest registerRequest) {
        userService.register(registerRequest);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @Operation(summary = "User authentication",
            description = "You get JWT token in Authentication HTTP header with \"Bearer \" prefix in response")
    @ApiResponses(value = {
            @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION, content = @Content),
            @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                    content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class))),
            @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION, content = @Content)
    })
    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody @Valid LoginRequest loginRequest, HttpServletResponse response) {
        User user = userService.login(loginRequest);
        jwtUtil.setAuthHeader(response, user);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
