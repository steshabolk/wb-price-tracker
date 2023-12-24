package com.project.wb.integration;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import liquibase.Scope;
import liquibase.command.CommandScope;
import liquibase.command.core.UpdateCommandStep;
import liquibase.command.core.helpers.DbUrlConnectionCommandStep;
import liquibase.database.Database;
import liquibase.database.DatabaseFactory;
import liquibase.database.jvm.JdbcConnection;
import liquibase.resource.DirectoryResourceAccessor;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.testcontainers.containers.JdbcDatabaseContainer;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.junit.jupiter.Testcontainers;

@Testcontainers
public abstract class IntegrationTest {
    public static PostgreSQLContainer<?> POSTGRES;
    private static final String CHANGELOG_FILE = "master.yaml";
    private static final Path PATH_TO_CHANGELOG =
        Paths.get(".").toAbsolutePath().resolve("src/test/resources/migrations");

    static {
        POSTGRES = new PostgreSQLContainer<>("postgres:16")
            .withDatabaseName("wb-price-tracker")
            .withUsername("postgres")
            .withPassword("postgres");
        POSTGRES.start();

        runMigrations(POSTGRES);
    }

    private static void runMigrations(JdbcDatabaseContainer<?> c) {
        try (Connection connection = DriverManager.getConnection(c.getJdbcUrl(), c.getUsername(), c.getPassword())) {
            Database database = DatabaseFactory.getInstance()
                .findCorrectDatabaseImplementation(new JdbcConnection(connection));
            Scope.child(
                Scope.Attr.resourceAccessor,
                new DirectoryResourceAccessor(PATH_TO_CHANGELOG),
                () -> new CommandScope(UpdateCommandStep.COMMAND_NAME)
                    .addArgumentValue(DbUrlConnectionCommandStep.DATABASE_ARG, database)
                    .addArgumentValue(UpdateCommandStep.CHANGELOG_FILE_ARG, CHANGELOG_FILE)
                    .execute()
            );
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @DynamicPropertySource
    static void jdbcProperties(DynamicPropertyRegistry registry) {
        registry.add("spring.datasource.url", POSTGRES::getJdbcUrl);
        registry.add("spring.datasource.username", POSTGRES::getUsername);
        registry.add("spring.datasource.password", POSTGRES::getPassword);
    }
}
