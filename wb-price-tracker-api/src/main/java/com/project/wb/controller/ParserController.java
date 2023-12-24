package com.project.wb.controller;

import com.project.wb.entity.Product;
import com.project.wb.service.ProductService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.stream.Collectors;

import static com.project.wb.util.SwaggerConst.JSON;
import static com.project.wb.util.SwaggerConst.SUCCESSFUL_CODE;
import static com.project.wb.util.SwaggerConst.SUCCESSFUL_DESCRIPTION;

@Tag(name = "Parser")
@RestController
@RequestMapping("/api/v1/parser")
public class ParserController {

    private final ProductService productService;

    @Autowired
    public ParserController(ProductService productService) {
        this.productService = productService;
    }

    @Operation(summary = "Get a list of product codes")
    @ApiResponses(value = {
            @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                    content = @Content(mediaType = JSON, array = @ArraySchema(schema = @Schema(implementation = Long.class))))
    })
    @GetMapping
    public ResponseEntity<?> getProductCodes() {
        return new ResponseEntity<>(
                productService.findAll()
                        .stream()
                        .map(Product::getCode)
                        .collect(Collectors.toSet()), HttpStatus.OK);
    }
}
