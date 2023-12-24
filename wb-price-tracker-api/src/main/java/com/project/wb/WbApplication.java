package com.project.wb;

import com.project.wb.config.ApplicationConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@EnableConfigurationProperties(ApplicationConfig.class)
@SpringBootApplication
public class WbApplication {

    public static void main(String[] args) {
        SpringApplication.run(WbApplication.class, args);
    }

}
