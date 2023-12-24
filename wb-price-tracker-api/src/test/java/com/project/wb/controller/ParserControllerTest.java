package com.project.wb.controller;

import com.project.wb.config.GlobalExceptionHandler;
import com.project.wb.service.ProductService;
import com.project.wb.util.Messages;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import java.util.Map;

import static com.project.wb.util.TestUtils.doGetRequest;
import static com.project.wb.util.TestUtils.expectOkStatus;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@WebMvcTest
@AutoConfigureMockMvc(addFilters = false)
@Import(ParserController.class)
@ContextConfiguration(classes = {GlobalExceptionHandler.class, Messages.class})
class ParserControllerTest {

    @MockBean
    private ProductService productService;

    @Autowired
    private MockMvc mockMvc;

    @Test
    void getProductCodes() {
        ResultActions result = doGetRequest(mockMvc, "/api/v1/parser", Map.of());

        expectOkStatus(result);
        verify(productService, times(1)).findAll();
    }
}
