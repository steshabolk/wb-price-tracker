package com.project.wb.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class ProductCodeDto {

    @NotNull
    @Min(value = 2_000_000L, message = "{api.validation.invalidCode.message}")
    private Long code;
}
