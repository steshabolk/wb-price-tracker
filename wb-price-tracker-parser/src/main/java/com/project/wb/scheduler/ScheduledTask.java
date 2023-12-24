package com.project.wb.scheduler;

import com.project.wb.service.AsyncTask;
import com.project.wb.service.ParserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.Set;

@Component
public class ScheduledTask {

    Logger log = LoggerFactory.getLogger(ScheduledTask.class);

    private final ParserService parserService;
    private final AsyncTask asyncTask;

    public ScheduledTask(ParserService parserService, AsyncTask asyncTask) {
        this.parserService = parserService;
        this.asyncTask = asyncTask;
    }

    @Scheduled(cron = "0 0 */3 * * *")
  //  @Scheduled(initialDelayString = "60000", fixedRateString = "3600000")
    public void updatePrices() {
        log.debug("task to update prices started at {}", LocalDateTime.now());

        Set<Long> codes = parserService.getProductCodesFromApi();
        if (!codes.isEmpty()) {
            log.debug("the number of codes to update: {}", codes.size());
            codes.forEach(asyncTask::updatePrice);
        } else {
            log.debug("the list of codes from api service is empty");
        }

        log.debug("task to update prices ended at {}", LocalDateTime.now());
    }

    @Scheduled(cron = "0 30 3 1 * *")
    public void updateProductDetails() {
        log.debug("task to update product details started at {}", LocalDateTime.now());

        Set<Long> codes = parserService.getProductCodesFromApi();
        if (!codes.isEmpty()) {
            log.debug("the number of codes to update: {}", codes.size());
            codes.forEach(asyncTask::updateProductDetails);
        } else {
            log.debug("the list of codes from api service is empty");
        }

        log.debug("task to update product details ended at {}", LocalDateTime.now());
    }
}
