package com.project.wb.controller;

import com.project.wb.config.GlobalExceptionHandler;
import com.project.wb.dto.ProductCodeDto;
import com.project.wb.service.PriceService;
import com.project.wb.service.ProductService;
import com.project.wb.util.LocaleMessage;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Stream;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import static com.project.wb.util.TestData.CODE;
import static com.project.wb.util.TestData.PRODUCT_CODE_DTO;
import static com.project.wb.util.TestData.PRODUCT_MAPPING;
import static com.project.wb.util.TestUtils.doDeleteRequest;
import static com.project.wb.util.TestUtils.doGetRequest;
import static com.project.wb.util.TestUtils.doPostRequest;
import static com.project.wb.util.TestUtils.expectOkStatus;
import static com.project.wb.util.TestUtils.expectValidationError;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@WebMvcTest
@AutoConfigureMockMvc(addFilters = false)
@ContextConfiguration(classes = {ProductController.class, GlobalExceptionHandler.class, LocaleMessage.class})
class ProductControllerTest {

    @MockBean
    private PriceService priceService;
    @MockBean
    private ProductService productService;
    @Autowired
    private MockMvc mockMvc;

    @Nested
    class GetUserProducts {

        @Test
        void whenValidRequest_thenSucceed() {

            ResultActions result = doGetRequest(mockMvc, PRODUCT_MAPPING, Map.of());

            expectOkStatus(result);
            verify(productService, times(1)).getUserProducts();
        }
    }

    @Nested
    class AddProductToAccount {

        @Test
        void whenValidRequest_thenSucceed() {

            ResultActions result = doPostRequest(mockMvc, PRODUCT_CODE_DTO, PRODUCT_MAPPING, Map.of());

            expectOkStatus(result);
            verify(productService, times(1)).addProductToAccount(any());
            verify(productService, times(1)).getUserProducts();
        }

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.ProductControllerTest#invalidCode")
        void whenInvalidRequest_thenThrowException(Long code) {

            ProductCodeDto codeDto = new ProductCodeDto(code);

            ResultActions result = doPostRequest(mockMvc, codeDto, PRODUCT_MAPPING, Map.of());

            expectValidationError(result);
            verify(productService, times(0)).addProductToAccount(any());
            verify(productService, times(0)).getUserProducts();
        }
    }

    @Nested
    class RemoveProductFromAccount {

        @Test
        void whenValidRequest_thenSucceed() {

            ResultActions result = doDeleteRequest(mockMvc, PRODUCT_CODE_DTO, PRODUCT_MAPPING, Map.of());

            expectOkStatus(result);
            verify(productService, times(1)).removeProductFromAccount(any());
            verify(productService, times(1)).getUserProducts();
        }

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.ProductControllerTest#invalidCode")
        void whenInvalidRequest_thenThrowException(Long code) {

            ProductCodeDto codeDto = new ProductCodeDto(code);

            ResultActions result = doDeleteRequest(mockMvc, codeDto, PRODUCT_MAPPING, Map.of());

            expectValidationError(result);
            verify(productService, times(0)).removeProductFromAccount(any());
            verify(productService, times(0)).getUserProducts();
        }
    }

    @Nested
    class GetPriceList {

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.ProductControllerTest#validPriceListParams")
        void whenValidRequest_thenSucceed(String dateFrom, String dateTo, Integer limit) {

            Map<String, String> params = new HashMap<>();
            if (dateFrom != null) {
                params.put("dateFrom", dateFrom);
            }
            if (dateTo != null) {
                params.put("dateTo", dateTo);
            }
            if (limit != null) {
                params.put("limit", limit.toString());
            }

            ResultActions result = doGetRequest(mockMvc, PRODUCT_MAPPING + "/" + CODE, params);

            expectOkStatus(result);
            verify(priceService, times(1)).getPriceList(any(), any(), any(), any());
        }
    }

    private static Stream<Arguments> invalidCode() {
        return Stream.of(
            Arguments.of((Object) null),
            Arguments.of(0L),
            Arguments.of(10L),
            Arguments.of(100L),
            Arguments.of(1000L),
            Arguments.of(10_000L),
            Arguments.of(100_000L),
            Arguments.of(1_000_000L),
            Arguments.of(1_999_999L)
        );
    }

    private static Stream<Arguments> validPriceListParams() {
        return Stream.of(
            Arguments.of(null, null, null),
            Arguments.of("2023-01-01T00:00:00Z", null, null),
            Arguments.of(null, "2023-01-01T00:00:00Z", null),
            Arguments.of(null, null, 100)
        );
    }
}
