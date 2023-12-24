package com.project.wb.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Builder
public class WbDetailsDto {

    private String brand;
    private String name;
    private Integer price;
}
