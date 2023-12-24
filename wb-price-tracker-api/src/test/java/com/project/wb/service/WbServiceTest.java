package com.project.wb.service;

import com.github.tomakehurst.wiremock.junit5.WireMockExtension;
import com.project.wb.client.WbClient;
import com.project.wb.dto.ProductDto;
import com.project.wb.exception.ApiError;
import java.nio.file.Files;
import java.nio.file.Paths;
import lombok.SneakyThrows;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.api.extension.RegisterExtension;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.support.WebClientAdapter;
import org.springframework.web.service.invoker.HttpServiceProxyFactory;
import static com.github.tomakehurst.wiremock.client.WireMock.aResponse;
import static com.github.tomakehurst.wiremock.client.WireMock.get;
import static com.github.tomakehurst.wiremock.client.WireMock.urlMatching;
import static com.github.tomakehurst.wiremock.core.WireMockConfiguration.wireMockConfig;
import static com.project.wb.util.TestData.WB_CARD_URL;
import static com.project.wb.util.TestUtils.expectApiError;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.springframework.http.HttpHeaders.CONTENT_TYPE;
import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;

@ExtendWith(MockitoExtension.class)
class WbServiceTest {

    private WbService wbService;

    @RegisterExtension
    private static final WireMockExtension wireMockExtension = WireMockExtension.newInstance()
        .options(wireMockConfig().dynamicPort())
        .build();

    @BeforeEach
    void init() {
        WbClient wbClient = HttpServiceProxyFactory
            .builderFor(
                WebClientAdapter.create(
                    WebClient.builder().baseUrl(wireMockExtension.baseUrl()).build()
                ))
            .build()
            .createClient(WbClient.class);
        wbService = new WbService(wbClient);
    }

    @Nested
    class GetWbCard {

        @SneakyThrows
        @Test
        void succeed() {
            String response = new String(Files.readAllBytes(
                Paths.get(ClassLoader.getSystemResource("wb_card.json").toURI())
            ));
            wireMockExtension.stubFor(
                get(urlMatching(WB_CARD_URL + "65984481"))
                    .willReturn(aResponse()
                        .withStatus(200)
                        .withHeader(CONTENT_TYPE, APPLICATION_JSON_VALUE)
                        .withBody(response)
                    )
            );

            ProductDto productDto = wbService.getProductDtoFromWb(65984481L);
            assertEquals(65984481L, productDto.code());
            assertEquals("4195", productDto.brand());
            assertEquals("Чехол для MacBook Pro 14 A2442 M1 A2779 M2 М3 Макбук Про 14", productDto.name());
            assertEquals(1303, productDto.price());
        }

        @SneakyThrows
        @Test
        void whenEmptyResponse_thenThrowException() {
            String response = new String(Files.readAllBytes(
                Paths.get(ClassLoader.getSystemResource("empty_wb_card.json").toURI())
            ));
            wireMockExtension.stubFor(
                get(urlMatching(WB_CARD_URL + "65984483"))
                    .willReturn(aResponse()
                        .withStatus(200)
                        .withHeader(CONTENT_TYPE, APPLICATION_JSON_VALUE)
                        .withBody(response)
                    )
            );

            expectApiError(
                ApiError.WB_INVALID_CODE,
                () -> wbService.getProductDtoFromWb(65984483L)
            );
        }
    }
}
