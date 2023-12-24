package com.project.wb.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.wb.model.DomainEvent;
import org.apache.kafka.common.serialization.Deserializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class DomainEventDeserializer implements Deserializer<DomainEvent> {

    Logger log = LoggerFactory.getLogger(DomainEventDeserializer.class);

    private final ObjectMapper mapper = new ObjectMapper();

    @Override
    public DomainEvent deserialize(String topic, byte[] data) {
        try {
            return mapper.readValue(data, DomainEvent.class);
        } catch (IOException e) {
            log.error("event deserialization error: topic={}, data={}\n" +
                    "message: {}", topic, new String(data), e.getMessage());
            return null;
        }
    }
}
