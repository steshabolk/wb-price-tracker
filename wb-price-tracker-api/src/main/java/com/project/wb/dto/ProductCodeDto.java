package com.project.wb.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;

public record ProductCodeDto(
    @NotNull
    @Min(value = 2_000_000L, message = "{api.validation.invalidCode.message}")
    Long code
) {
}
