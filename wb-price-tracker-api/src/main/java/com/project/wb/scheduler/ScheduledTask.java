package com.project.wb.scheduler;

import com.project.wb.service.ProductService;
import jakarta.annotation.PostConstruct;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Slf4j
@RequiredArgsConstructor
@Component
@ConditionalOnProperty(name = {"app.schedulers.enabled"}, havingValue = "true")
public class ScheduledTask {

    @Value("${app.schedulers.thread-pool-size}")
    private Integer threadPoolSize;
    private ExecutorService threadPool;
    private final ProductService productService;

    @PostConstruct
    public void init() {
        threadPool = Executors.newFixedThreadPool(threadPoolSize);
    }

    @Scheduled(cron = "0 57-59/1 * * * *")
//    @Scheduled(initialDelayString = "60000", fixedRateString = "3600000")
    public void removeNonTrackedProducts() {
        log.debug("task to remove non tracked products executed");
        productService.removeNonTrackedProducts();
    }

    @Scheduled(cron = "0 */5 * * * *")
    //  @Scheduled(initialDelayString = "60000", fixedRateString = "3600000")
    public void updateProductDetails() {
        log.debug("task to update prices executed");
        List<Long> codes = productService.getProductCodesToUpdate();
        codes.forEach(code -> {
            threadPool.submit(() -> productService.updateProductDetails(code));
        });
    }
}
