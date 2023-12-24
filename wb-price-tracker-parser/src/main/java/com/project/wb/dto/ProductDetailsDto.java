package com.project.wb.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Builder
public class ProductDetailsDto {

    private Long code;

    private String brand;

    private String name;

    @Override
    public String toString() {
        return "ProductDetailsDto{" +
                "code=" + code +
                ", brand=" + brand +
                ", name=" + name +
                '}';
    }
}
