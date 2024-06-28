package site.toeicdoit.chat.config;

import java.util.HashMap;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.codec.ServerSentEvent;

import reactor.core.publisher.Sinks;
import site.toeicdoit.chat.domain.dto.ChatDTO;

@Configuration
public class SenderConfig {
    @Bean
    public Map<String, Sinks.Many<ServerSentEvent<ChatDTO>>> chatSenderSink() {
        return new HashMap<String, Sinks.Many<ServerSentEvent<ChatDTO>>>();
    }
}
