package com.project.wb.service;

import com.jayway.jsonpath.Configuration;
import com.jayway.jsonpath.JsonPath;
import com.jayway.jsonpath.Option;
import com.project.wb.dto.WbDetailsDto;
import com.project.wb.exception.ApiError;
import lombok.Getter;
import lombok.Setter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Setter
@Getter
@Component
public class ParserService {

    Logger log = LoggerFactory.getLogger(ParserService.class);

    @Value("${wb.url}")
    private String WB_URL;
    @Value("${jsonpath.data}")
    private String JSONPATH_DATA;
    @Value("${jsonpath.brand}")
    private String JSONPATH_BRAND;
    @Value("${jsonpath.name}")
    private String JSONPATH_NAME;
    @Value("${jsonpath.price}")
    private String JSONPATH_PRICE;

    private Configuration config = Configuration.defaultConfiguration().addOptions(Option.DEFAULT_PATH_LEAF_TO_NULL);

    private final RestTemplate restTemplate;

    @Autowired
    public ParserService(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public String getJsonFromWb(Long code) {
        try {
            return restTemplate.getForObject(WB_URL + code, String.class);
        } catch (RestClientException e) {
            log.error("error when making GET-request to WB for product {} \n" +
                    "message: {}", code, e.getMessage());
            throw ApiError.WB_ERROR.toException(code);
        }
    }

    public WbDetailsDto parseWbJson(String json) {
        String brand = parseBrand(json);
        String name = parseName(json);
        Integer price = parsePrice(json);
        return WbDetailsDto.builder().brand(brand).name(name).price(price).build();
    }

    private String parseBrand(String json) {
        String brand = JsonPath.using(config).parse(json).read(JSONPATH_DATA, List.class).size() == 0 ? null :
                JsonPath.using(config).parse(json).read(JSONPATH_BRAND);
        if (brand == null) {
            throw ApiError.WB_ERROR_BRAND.toException();
        }
        return brand;
    }

    private String parseName(String json) {
        String name = JsonPath.using(config).parse(json).read(JSONPATH_DATA, List.class).size() == 0 ? null :
                JsonPath.using(config).parse(json).read(JSONPATH_NAME);
        if (name == null) {
            throw ApiError.WB_ERROR_NAME.toException();
        }
        return name;
    }

    private Integer parsePrice(String json) {
        String price = JsonPath.using(config).parse(json).read(JSONPATH_DATA, List.class).size() == 0 ? null :
                JsonPath.using(config).parse(json).read(JSONPATH_PRICE, String.class);
        if (price == null) {
            throw ApiError.WB_ERROR_PRICE.toException();
        }
        return Integer.parseInt(price) / 100;
    }
}
