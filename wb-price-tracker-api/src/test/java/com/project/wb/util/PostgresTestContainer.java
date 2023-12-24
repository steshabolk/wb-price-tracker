package com.project.wb.util;

import org.springframework.boot.test.util.TestPropertyValues;
import org.springframework.context.ApplicationContextInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.testcontainers.containers.PostgreSQLContainer;

public class PostgresTestContainer {

    public static PostgreSQLContainer<?> container = new PostgreSQLContainer<>("postgres:15.5")
            .withDatabaseName("integration-tests-db")
            .withUsername("test")
            .withPassword("test");

    public static class Initializer implements ApplicationContextInitializer<ConfigurableApplicationContext> {

        static {
            container.start();
        }

        @Override
        public void initialize(ConfigurableApplicationContext applicationContext) {
            TestPropertyValues.of(
                            "spring.datasource.url=" + container.getJdbcUrl(),
                            "spring.datasource.username=" + container.getUsername(),
                            "spring.datasource.password=" + container.getPassword())
                    .applyTo(applicationContext.getEnvironment());
        }
    }
}
