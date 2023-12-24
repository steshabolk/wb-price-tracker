package com.project.wb.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jayway.jsonpath.Configuration;
import com.jayway.jsonpath.JsonPath;
import com.jayway.jsonpath.Option;
import com.project.wb.dto.PriceDto;
import com.project.wb.dto.ProductDetailsDto;
import com.project.wb.exception.ApiException;
import com.project.wb.model.DomainEvent;
import com.project.wb.model.PriceUpdateEvent;
import com.project.wb.model.ProductDetailsUpdateEvent;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Slf4j
@Setter
@Service
public class ParserService {

    @Value("${api.url}")
    private String API_URL;

    @Value("${wb.url}")
    private String WB_URL;

    @Value("${jsonpath.price}")
    private String JSONPATH_PRICE;

    @Value("${jsonpath.brand}")
    private String JSONPATH_BRAND;

    @Value("${jsonpath.name}")
    private String JSONPATH_NAME;

    @Value("${jsonpath.data}")
    private String JSONPATH_DATA;

    private final Configuration config = Configuration.defaultConfiguration().addOptions(Option.DEFAULT_PATH_LEAF_TO_NULL);

    private final RestTemplate restTemplate;
    private final KafkaTemplate<String, String> kafkaTemplate;
    private final ObjectMapper mapper;

    @Autowired
    public ParserService(RestTemplate restTemplate, KafkaTemplate<String, String> kafkaTemplate, ObjectMapper mapper) {
        this.restTemplate = restTemplate;
        this.kafkaTemplate = kafkaTemplate;
        this.mapper = mapper;
    }

    public Set<Long> getProductCodesFromApi() {
        Long[] response = restTemplate.getForObject(API_URL, Long[].class);
        if (response == null) {
            throw new ApiException("api service error: empty response");
        }
        return Arrays.stream(response).collect(Collectors.toSet());
    }

    public String getJsonFromWb(Long code) {
        try {
            return restTemplate.getForObject(WB_URL + code, String.class);
        } catch (RestClientException e) {
            throw new ApiException(String.format("error when making GET-request to WB for product %s \n" +
                    "message: %S", code, e.getMessage()));
        }
    }

    public PriceUpdateEvent getPriceUpdateEvent(String json, Long code) {
        Integer price = parsePrice(json, code);
        return new PriceUpdateEvent(PriceDto.builder()
                .code(code)
                .price(price)
                .updatedAt(LocalDateTime.now())
                .build());
    }

    public ProductDetailsUpdateEvent getProductDetailsUpdateEvent(String json, Long code) {
        String brand = parseBrand(json, code);
        String name = parseName(json, code);
        return new ProductDetailsUpdateEvent(ProductDetailsDto.builder()
                .code(code)
                .brand(brand)
                .name(name)
                .build());
    }

    private String parseBrand(String json, Long code) {
        String brand = JsonPath.using(config).parse(json).read(JSONPATH_DATA, List.class).size() == 0 ? null :
                JsonPath.using(config).parse(json).read(JSONPATH_BRAND);
        if (brand == null) {
            throw new ApiException(String.format("can't parse product brand for code %s\njson: %s", code, json));
        }
        return brand;
    }

    private String parseName(String json, Long code) {
        String name = JsonPath.using(config).parse(json).read(JSONPATH_DATA, List.class).size() == 0 ? null :
                JsonPath.using(config).parse(json).read(JSONPATH_NAME);
        if (name == null) {
            throw new ApiException(String.format("can't parse product name for code %s\njson: %s", code, json));
        }
        return name;
    }

    private Integer parsePrice(String json, Long code) {
        String price = JsonPath.using(config).parse(json).read(JSONPATH_DATA, List.class).size() == 0 ? null :
                JsonPath.using(config).parse(json).read(JSONPATH_PRICE, String.class);
        if (price == null) {
            throw new ApiException(String.format("can't parse product price for code %s\njson: %s", code, json));
        }
        return Integer.parseInt(price) / 100;
    }

    public void sendEventToKafka(DomainEvent event) {
        try {
            kafkaTemplate.send(event.getType().getTopicPropName(), mapper.writeValueAsString(event));
            log.debug("sent message to Kafka{type={}, message={}}", event.getType(), event.getMessage());
        } catch (IOException e) {
            throw new ApiException(String.format("event serialization error: type=%s, message=%s", event.getType(), event.getMessage()));
        } catch (Exception e) {
            throw new ApiException(String.format("failed to send message to Kafka: type=%s, message=%s\n" +
                    "%s : %s", event.getType(), event.getMessage(), e.getMessage(), e.getCause()));
        }
    }
}
