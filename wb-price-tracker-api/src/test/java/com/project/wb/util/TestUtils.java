package com.project.wb.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.project.wb.exception.ApiError;
import com.project.wb.exception.ApiException;
import com.project.wb.exception.ExceptionResponse;
import lombok.SneakyThrows;
import org.junit.jupiter.api.function.Executable;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import java.nio.charset.StandardCharsets;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class TestUtils {

    private static final ObjectMapper mapper = new ObjectMapper().registerModule(new JavaTimeModule());


    @SneakyThrows
    public static ResultActions doPostRequest(MockMvc mockMvc, Object request, String path, Map<String, String> params) {
        MultiValueMap<String, String> requestParams = new LinkedMultiValueMap<>();
        params.forEach(requestParams::add);
        return mockMvc.perform(MockMvcRequestBuilders.post(path)
                .contentType(MediaType.APPLICATION_JSON)
                .content(mapper.writeValueAsBytes(request))
                .params(requestParams)
        );
    }

    @SneakyThrows
    public static ResultActions doGetRequest(MockMvc mockMvc, String path, Map<String, String> params) {
        MultiValueMap<String, String> requestParams = new LinkedMultiValueMap<>();
        params.forEach(requestParams::add);
        return mockMvc.perform(MockMvcRequestBuilders.get(path)
                .params(requestParams)
        );
    }

    @SneakyThrows
    public static ResultActions doDeleteRequest(MockMvc mockMvc, Object request, String path, Map<String, String> params) {
        MultiValueMap<String, String> requestParams = new LinkedMultiValueMap<>();
        params.forEach(requestParams::add);
        return mockMvc.perform(MockMvcRequestBuilders.delete(path)
                .contentType(MediaType.APPLICATION_JSON)
                .content(mapper.writeValueAsBytes(request))
                .params(requestParams)
        );
    }

    @SneakyThrows
    public static void expectOkStatus(ResultActions result) {
        result.andExpect(MockMvcResultMatchers.status().isOk());
    }

    @SneakyThrows
    public static void expectValidationError(ResultActions result) {
        ExceptionResponse ex = getExceptionResponse(result);
        assertEquals("VALIDATION_ERROR", ex.getCode());
        result.andExpect(MockMvcResultMatchers.status().isBadRequest());
    }

    public static void expectApiError(ApiError apiError, Executable executable) {
        ApiException ex = assertThrows(ApiException.class, executable);
        assertEquals(apiError.name(), ex.getCode());
    }

    @SneakyThrows
    private static ExceptionResponse getExceptionResponse(ResultActions result) {
        String content = result.andReturn().getResponse().getContentAsString(StandardCharsets.UTF_8);
        return mapper.readValue(content, ExceptionResponse.class);
    }
}
