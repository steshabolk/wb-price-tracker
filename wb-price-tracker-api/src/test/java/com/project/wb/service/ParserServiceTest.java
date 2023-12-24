package com.project.wb.service;

import com.project.wb.config.GlobalExceptionHandler;
import com.project.wb.dto.WbDetailsDto;
import com.project.wb.exception.ApiError;
import com.project.wb.util.Messages;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.SpyBean;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import static com.project.wb.util.TestData.product;
import static com.project.wb.util.TestData.wbUrl;
import static com.project.wb.util.TestUtils.expectApiError;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.doThrow;

@SpringBootTest(classes = {ParserService.class, RestTemplate.class, GlobalExceptionHandler.class, Messages.class})
class ParserServiceTest {

    @SpyBean
    private ParserService parserService;

    @SpyBean
    private RestTemplate restTemplate;

    @Nested
    class GetJsonFromWb {

        @Test
        void success() {

            String jsonFromWb = parserService.getJsonFromWb(product.getCode());

            assertTrue(jsonFromWb.contains(product.getBrand()));
            assertTrue(jsonFromWb.contains(product.getName()));
        }

        @Test
        void shouldThrowRestClientException() {

            doThrow(RestClientException.class).when(restTemplate).getForObject(wbUrl + product.getCode(), String.class);

            expectApiError(ApiError.WB_ERROR, () -> parserService.getJsonFromWb(product.getCode()));
        }
    }

    @Nested
    class ParseWbJson {

        @Test
        void success() {

            String jsonFromWb = parserService.getJsonFromWb(product.getCode());

            WbDetailsDto wbDetails = parserService.parseWbJson(jsonFromWb);

            assertEquals(product.getBrand(), wbDetails.getBrand());
            assertEquals(product.getName(), wbDetails.getName());
        }
    }
}
