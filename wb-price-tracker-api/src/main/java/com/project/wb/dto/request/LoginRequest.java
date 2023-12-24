package com.project.wb.dto.request;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

public record LoginRequest(

    @NotNull
    @Size(min = 2, max = 64)
    @Pattern(regexp = "^[a-zA-Z\\d_-]*$", message = "{api.validation.username.message}")
    String username,

    @NotNull
    @Size(min = 6, max = 30)
    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).*$", message = "{api.validation.password.message}")
    String password
) {
}
