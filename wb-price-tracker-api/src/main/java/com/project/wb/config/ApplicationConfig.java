package com.project.wb.config;

import jakarta.validation.constraints.NotNull;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.validation.annotation.Validated;

@Validated
@EnableScheduling
@ConfigurationProperties(prefix = "app", ignoreUnknownFields = false)
public record ApplicationConfig(
    @NotNull
    Schedulers schedulers,
    @NotNull
    FrontendConfig frontend,
    @NotNull
    WbClientConfig wbClient,
    @NotNull
    JwtConfig jwt
) {
    public record Schedulers(boolean enable, @NotNull Integer threadPoolSize, @NotNull Integer productUpdateTimeHours,
                             @NotNull Integer productUpdateBatch, @NotNull Integer productRemoveBatch) {
    }

    public record FrontendConfig(@NotNull String url) {
    }

    public record WbClientConfig(@NotNull String api) {
    }

    public record JwtConfig(@NotNull String header, @NotNull String secret, @NotNull Integer ttlHours) {
    }
}
