package com.project.wb.dao;

import java.util.Optional;
import lombok.experimental.UtilityClass;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

@UtilityClass
public class SingletonOptionalExtractor {

    public static <T> ResultSetExtractor<Optional<T>> extractor(RowMapper<? extends T> mapper) {
        return rs -> rs.next() ? Optional.of(mapper.mapRow(rs, 1)) : Optional.empty();
    }
}
