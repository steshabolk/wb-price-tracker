package com.project.wb.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.project.wb.exception.ApiError;
import com.project.wb.exception.ApiException;
import com.project.wb.exception.ExceptionResponse;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import lombok.SneakyThrows;
import org.junit.function.ThrowingRunnable;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThrows;
import static org.junit.jupiter.api.Assertions.assertInstanceOf;

public class TestUtils {

    private static final ObjectMapper MAPPER = new ObjectMapper().registerModule(new JavaTimeModule());

    @SneakyThrows
    public static ResultActions doPostRequest(
        MockMvc mockMvc,
        Object request,
        String path,
        Map<String, String> params
    ) {
        MultiValueMap<String, String> requestParams = new LinkedMultiValueMap<>();
        params.forEach(requestParams::add);
        return mockMvc.perform(MockMvcRequestBuilders.post(path)
            .contentType(MediaType.APPLICATION_JSON)
            .content(MAPPER.writeValueAsBytes(request))
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
    public static ResultActions doDeleteRequest(
        MockMvc mockMvc,
        Object request,
        String path,
        Map<String, String> params
    ) {
        MultiValueMap<String, String> requestParams = new LinkedMultiValueMap<>();
        params.forEach(requestParams::add);
        return mockMvc.perform(MockMvcRequestBuilders.delete(path)
            .contentType(MediaType.APPLICATION_JSON)
            .content(MAPPER.writeValueAsBytes(request))
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
        assertEquals("VALIDATION_FAILURE", ex.code());
        result.andExpect(MockMvcResultMatchers.status().isBadRequest());
    }

    public static void expectApiError(ApiError apiError, ThrowingRunnable runnable) {
        ApiException ex = assertThrows(ApiException.class, runnable);
        assertEquals(apiError.name(), ex.getCode());
    }

    public static void expectApiError(ApiError apiError, Exception ex) {
        assertInstanceOf(ApiException.class, ex);
        ApiException apiException = (ApiException) ex;
        assertEquals(apiError.name(), apiException.getCode());
    }

    @SneakyThrows
    private static ExceptionResponse getExceptionResponse(ResultActions result) {
        String content = result.andReturn().getResponse().getContentAsString(StandardCharsets.UTF_8);
        return MAPPER.readValue(content, ExceptionResponse.class);
    }
}
