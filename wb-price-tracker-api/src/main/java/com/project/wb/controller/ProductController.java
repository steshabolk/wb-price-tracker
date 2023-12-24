package com.project.wb.controller;

import com.project.wb.dto.PriceListDto;
import com.project.wb.dto.ProductCodeDto;
import com.project.wb.dto.ProductDto;
import com.project.wb.exception.ExceptionResponse;
import com.project.wb.service.PriceService;
import com.project.wb.service.ProductService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import java.time.OffsetDateTime;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import static com.project.wb.util.SwaggerConst.INVALID_INPUT_CODE;
import static com.project.wb.util.SwaggerConst.INVALID_INPUT_DESCRIPTION;
import static com.project.wb.util.SwaggerConst.JSON;
import static com.project.wb.util.SwaggerConst.SUCCESSFUL_CODE;
import static com.project.wb.util.SwaggerConst.SUCCESSFUL_DESCRIPTION;
import static com.project.wb.util.SwaggerConst.UNAUTHORIZED_CODE;
import static com.project.wb.util.SwaggerConst.UNAUTHORIZED_DESCRIPTION;

@Tag(name = "product")
@RequiredArgsConstructor
@RestController
@RequestMapping("/products")
public class ProductController {

    private final PriceService priceService;
    private final ProductService productService;

    @Operation(summary = "get user products")
    @ApiResponses(value = {
        @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                     content = @Content(mediaType = JSON,
                                        array = @ArraySchema(schema = @Schema(implementation = ProductDto.class)))),
        @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION, content = @Content)
    })
    @GetMapping
    public List<ProductDto> getUserProducts() {
        return productService.getUserProducts();
    }

    @Operation(summary = "add the product to the user account")
    @ApiResponses(value = {
        @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                     content = @Content(mediaType = JSON,
                                        array = @ArraySchema(schema = @Schema(implementation = ProductDto.class)))),
        @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                     content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class))),
        @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION,
                     content = @Content)
    })
    @PostMapping
    public List<ProductDto> addProductToAccount(@RequestBody @Valid ProductCodeDto request) {
        productService.addProductToAccount(request.code());
        return productService.getUserProducts();
    }

    @Operation(summary = "remove the product from the user account")
    @ApiResponses(value = {
        @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                     content = @Content(mediaType = JSON,
                                        array = @ArraySchema(schema = @Schema(implementation = ProductDto.class)))),
        @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                     content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class))),
        @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION,
                     content = @Content)
    })
    @DeleteMapping
    public List<ProductDto> removeProductFromAccount(@RequestBody @Valid ProductCodeDto request) {
        productService.removeProductFromAccount(request.code());
        return productService.getUserProducts();
    }

    @Operation(summary = "get a list of prices for the specified code",
               description = """
                   get the minimum daily price values for the whole tracking period
                   or specify a time period in the parameters: \"date_from\" \\ \"date_to\"
                   in the format \"yyyy-MM-dd HH:mm:ss\"
                   "or \"limit\" to get the required number of recent dates
                   """)
    @ApiResponses(value = {
        @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                     content = @Content(mediaType = JSON,
                                        array = @ArraySchema(schema = @Schema(implementation = PriceListDto.class)))),
        @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                     content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class))),
        @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION,
                     content = @Content)
    })
    @GetMapping("/{code}")
    public List<PriceListDto> getPriceList(
        @PathVariable("code") Long code,
        @RequestParam(value = "dateFrom", required = false) OffsetDateTime dateFrom,
        @RequestParam(value = "dateTo", required = false) OffsetDateTime dateTo,
        @RequestParam(value = "limit", required = false) Integer limit
    ) {
        return priceService.getPriceList(code, dateFrom, dateTo, limit);
    }
}
