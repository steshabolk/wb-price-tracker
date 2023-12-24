package com.project.wb.controller;

import com.project.wb.config.GlobalExceptionHandler;
import com.project.wb.dto.ProductCodeDto;
import com.project.wb.service.PriceService;
import com.project.wb.service.UserService;
import com.project.wb.util.Messages;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Stream;

import static com.project.wb.util.TestData.product;
import static com.project.wb.util.TestData.productCodeDto;
import static com.project.wb.util.TestData.userApi;
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
@Import(UserController.class)
@ContextConfiguration(classes = {GlobalExceptionHandler.class, Messages.class})
class UserControllerTest {

    @MockBean
    private UserService userService;

    @MockBean
    private PriceService priceService;

    @Autowired
    private MockMvc mockMvc;

    @Nested
    class GetUserProducts {

        @Test
        void success() {

            ResultActions result = doGetRequest(mockMvc, userApi + "/products", Map.of());

            expectOkStatus(result);
            verify(userService, times(1)).getUserProducts();
        }
    }

    @Nested
    class AddProductToAccount {

        @Test
        void success() {

            ResultActions result = doPostRequest(mockMvc, productCodeDto, userApi + "/products", Map.of());

            expectOkStatus(result);
            verify(userService, times(1)).addProductToAccount(any());
            verify(userService, times(1)).getUserProducts();
        }

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.UserControllerTest#invalidCode")
        void shouldThrowExceptionIfValidationFailed(Long code) {

            ProductCodeDto codeDto = new ProductCodeDto(code);

            ResultActions result = doPostRequest(mockMvc, codeDto, userApi + "/products", Map.of());

            expectValidationError(result);
            verify(userService, times(0)).addProductToAccount(any());
            verify(userService, times(0)).getUserProducts();
        }
    }

    @Nested
    class RemoveCodeFromAccount {

        @Test
        void success() {

            ResultActions result = doDeleteRequest(mockMvc, productCodeDto, userApi + "/products", Map.of());

            expectOkStatus(result);
            verify(userService, times(1)).removeProductFromAccount(any());
            verify(userService, times(1)).getUserProducts();
        }

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.UserControllerTest#invalidCode")
        void shouldThrowExceptionIfValidationFailed(Long code) {

            ProductCodeDto codeDto = new ProductCodeDto(code);

            ResultActions result = doDeleteRequest(mockMvc, codeDto, userApi + "/products", Map.of());

            expectValidationError(result);
            verify(userService, times(0)).removeProductFromAccount(any());
            verify(userService, times(0)).getUserProducts();
        }
    }

    @Nested
    class GetPriceList {

        @ParameterizedTest
        @MethodSource("com.project.wb.controller.UserControllerTest#validPriceListParams")
        void success(String dateFrom, String dateTo, Integer limit) {

            Map<String, String> params = new HashMap<>();
            if (dateFrom != null) params.put("dateFrom", dateFrom);
            if (dateTo != null) params.put("dateTo", dateTo);
            if (limit != null) params.put("limit", limit.toString());

            ResultActions result = doGetRequest(mockMvc, userApi + "/products/" + product.getCode(), params);

            expectOkStatus(result);
            verify(priceService, times(1)).getPriceList(any(), any(), any());
        }
    }

    static Stream<Arguments> invalidCode() {
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

    static Stream<Arguments> validPriceListParams() {
        return Stream.of(
                Arguments.of(null, null, null),
                Arguments.of("2023-01-01 00:00:00", null, null),
                Arguments.of(null, "2023-01-01 00:00:00", null),
                Arguments.of(null, null, 100)
        );
    }
}
