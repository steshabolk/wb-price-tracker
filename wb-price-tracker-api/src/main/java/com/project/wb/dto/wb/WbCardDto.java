package com.project.wb.dto.wb;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import java.util.List;

public record WbCardDto(@NotNull WbDataDto data) {

    public record WbDataDto(@NotEmpty List<WbProductDto> products) {

        public record WbProductDto(@NotNull @JsonProperty("id") Long code, @NotNull String brand, @NotNull String name,
                                   @NotNull @JsonProperty("salePriceU") Integer price) {
        }
    }
}
