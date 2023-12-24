package com.project.wb.config;

import com.project.wb.client.WbClient;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.support.WebClientAdapter;
import org.springframework.web.service.invoker.HttpServiceProxyFactory;

@RequiredArgsConstructor
@Component
public class ClientConfig {

    private final ApplicationConfig applicationConfig;

    @Bean
    public WbClient wbClient() {
        return buildHttpInterface(applicationConfig.wbClient().api(), WbClient.class);
    }

    private <T> T buildHttpInterface(String baseUrl, Class<T> serviceType) {
        WebClientAdapter webClientAdapter = WebClientAdapter.create(
            WebClient.builder()
                .baseUrl(baseUrl)
                .build());
        return HttpServiceProxyFactory.builderFor(webClientAdapter).build().createClient(serviceType);
    }
}
