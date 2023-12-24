package com.project.wb.scheduler;

import com.project.wb.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class ScheduledTask {

    Logger log = LoggerFactory.getLogger(ScheduledTask.class);

    private final ProductService productService;

    @Autowired
    public ScheduledTask(ProductService productService) {
        this.productService = productService;
    }

    @Scheduled(cron = "0 0 2 * * 1")
//    @Scheduled(initialDelayString = "60000", fixedRateString = "3600000")
    public void removeNonTrackedProducts() {
        log.debug("task to remove non tracked products executed");
        productService.removeNonTrackedProducts();
    }
}
