package com.project.wb.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.wb.dto.PriceDto;
import com.project.wb.dto.ProductDetailsDto;
import com.project.wb.exception.ApiException;
import com.project.wb.model.PriceUpdateEvent;
import com.project.wb.model.ProductDetailsUpdateEvent;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.SpyBean;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDate;

import static com.project.wb.util.TestData.brand;
import static com.project.wb.util.TestData.code;
import static com.project.wb.util.TestData.name;
import static com.project.wb.util.TestData.price;
import static com.project.wb.util.TestData.productJson;
import static com.project.wb.util.TestData.wbUrl;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.doThrow;

@SpringBootTest
class ParserServiceTest {

    @SpyBean
    private RestTemplate restTemplate;

    @SpyBean
    private KafkaTemplate<String, String> kafkaTemplate;

    @SpyBean
    private ObjectMapper mapper;

    @SpyBean
    private ParserService parserService;

    @Nested
    class GetJsonFromWb {

        @Test
        void success() {

            String jsonFromWb = parserService.getJsonFromWb(code);

            assertTrue(jsonFromWb.contains(brand));
            assertTrue(jsonFromWb.contains(name));
        }

        @Test
        void shouldThrowRestClientException() {

            doThrow(RestClientException.class).when(restTemplate).getForObject(wbUrl + code, String.class);

            assertThrows(ApiException.class, () -> parserService.getJsonFromWb(code));
        }
    }

    @Nested
    class GetPriceUpdateEvent {

        @Test
        void success() {

            PriceUpdateEvent event = parserService.getPriceUpdateEvent(productJson(), code);
            PriceDto message = event.getMessage();

            assertEquals(code, message.getCode());
            assertEquals(price, message.getPrice());
            assertEquals(LocalDate.now(), message.getUpdatedAt().toLocalDate());
        }
    }

    @Nested
    class GetProductDetailsUpdateEvent {

        @Test
        void success() {

            ProductDetailsUpdateEvent event = parserService.getProductDetailsUpdateEvent(productJson(), code);
            ProductDetailsDto message = event.getMessage();

            assertEquals(code, message.getCode());
            assertEquals(brand, message.getBrand());
            assertEquals(name, message.getName());
        }
    }

}
