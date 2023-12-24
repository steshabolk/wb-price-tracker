package com.project.wb.config;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.enums.SecuritySchemeIn;
import io.swagger.v3.oas.annotations.enums.SecuritySchemeType;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.security.SecurityScheme;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.context.annotation.Configuration;

@OpenAPIDefinition(
        info =
        @Info(
                title = "api-service",
                description = "API for Wildberries price tracker",
                version = "v1"
        ),
        tags = {
                @Tag(name = "Auth"),
                @Tag(name = "User"),
                @Tag(name = "Parser")
        }
)
@SecurityScheme(
        name = "Authorization",
        description = "Bearer Authentication with JWT",
        type = SecuritySchemeType.HTTP,
        bearerFormat = "JWT",
        scheme = "bearer",
        in = SecuritySchemeIn.HEADER
)
@Configuration
public class SwaggerConfig {
}
