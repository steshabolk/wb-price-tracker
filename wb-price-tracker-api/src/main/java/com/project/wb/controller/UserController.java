package com.project.wb.controller;

import com.project.wb.dto.PriceListDto;
import com.project.wb.dto.PriceListFilter;
import com.project.wb.dto.ProductCodeDto;
import com.project.wb.dto.ProductDto;
import com.project.wb.exception.ExceptionResponse;
import com.project.wb.service.PriceService;
import com.project.wb.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.ArraySchema;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.List;

import static com.project.wb.util.SwaggerConst.INVALID_INPUT_CODE;
import static com.project.wb.util.SwaggerConst.INVALID_INPUT_DESCRIPTION;
import static com.project.wb.util.SwaggerConst.JSON;
import static com.project.wb.util.SwaggerConst.SUCCESSFUL_CODE;
import static com.project.wb.util.SwaggerConst.SUCCESSFUL_DESCRIPTION;
import static com.project.wb.util.SwaggerConst.UNAUTHORIZED_CODE;
import static com.project.wb.util.SwaggerConst.UNAUTHORIZED_DESCRIPTION;

@Tag(name = "User")
@SecurityRequirement(name = "Authorization")
@RestController
@RequestMapping("/api/v1/users")
public class UserController {

    private final PriceService priceService;
    private final UserService userService;

    @Autowired
    public UserController(PriceService priceService, UserService userService) {
        this.priceService = priceService;
        this.userService = userService;
    }

    @Operation(summary = "Get user products by authorized user")
    @ApiResponses(value = {
            @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                    content = @Content(mediaType = JSON, array = @ArraySchema(schema = @Schema(implementation = ProductDto.class)))),
            @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION,
                    content = @Content)
    })
    @GetMapping("/products")
    public ResponseEntity<?> getUserProducts() {
        List<ProductDto> products = userService.getUserProducts();
        return new ResponseEntity<>(products, HttpStatus.OK);
    }

    @Operation(summary = "Add the product to the user account")
    @ApiResponses(value = {
            @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                    content = @Content(mediaType = JSON, array = @ArraySchema(schema = @Schema(implementation = ProductDto.class)))),
            @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                    content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class))),
            @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION,
                    content = @Content)
    })
    @PostMapping("/products")
    public ResponseEntity<?> addProductToAccount(@RequestBody @Valid ProductCodeDto productCodeDto) {
        userService.addProductToAccount(productCodeDto.getCode());
        List<ProductDto> products = userService.getUserProducts();
        return new ResponseEntity<>(products, HttpStatus.OK);
    }

    @Operation(summary = "Remove the product from the user account")
    @ApiResponses(value = {
            @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                    content = @Content(mediaType = JSON, array = @ArraySchema(schema = @Schema(implementation = ProductDto.class)))),
            @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                    content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class))),
            @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION,
                    content = @Content)
    })
    @DeleteMapping("/products")
    public ResponseEntity<?> removeProductFromAccount(@RequestBody @Valid ProductCodeDto productCodeDto) {
        userService.removeProductFromAccount(productCodeDto.getCode());
        List<ProductDto> products = userService.getUserProducts();
        return new ResponseEntity<>(products, HttpStatus.OK);
    }

    @Operation(summary = "Get a list of prices for the specified code",
            description = "You can get price values for the whole tracking period " +
                    "or specify a time period in the parameters : \"date_from\" \\ \"date_to\" in the format \"yyyy-MM-dd HH:mm:ss\" " +
                    "or \"limit\" to get the required number of recent dates. " +
                    "The list is formed from the dates in the selected period and the minimum daily price for each date.")
    @ApiResponses(value = {
            @ApiResponse(responseCode = SUCCESSFUL_CODE, description = SUCCESSFUL_DESCRIPTION,
                    content = @Content(mediaType = JSON, array = @ArraySchema(schema = @Schema(implementation = PriceListDto.class)))),
            @ApiResponse(responseCode = INVALID_INPUT_CODE, description = INVALID_INPUT_DESCRIPTION,
                    content = @Content(mediaType = JSON, schema = @Schema(implementation = ExceptionResponse.class))),
            @ApiResponse(responseCode = UNAUTHORIZED_CODE, description = UNAUTHORIZED_DESCRIPTION,
                    content = @Content)
    })
    @GetMapping("/products/{code}")
    public ResponseEntity<?> getPriceList(@PathVariable("code") Long code,
                                          @RequestParam(value = "dateFrom", required = false)
                                          @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime dateFrom,
                                          @RequestParam(value = "dateTo", required = false)
                                          @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime dateTo,
                                          @RequestParam(value = "limit", required = false) Integer limit) {
        PriceListFilter priceListFilter = PriceListFilter.builder()
                .dateFrom(dateFrom)
                .dateTo(dateTo)
                .build();
        List<PriceListDto> pricesList = priceService.getPriceList(code, priceListFilter, limit);
        return new ResponseEntity<>(pricesList, HttpStatus.OK);
    }
}
