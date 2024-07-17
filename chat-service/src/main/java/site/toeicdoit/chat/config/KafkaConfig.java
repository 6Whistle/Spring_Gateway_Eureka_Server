package site.toeicdoit.chat.config;

import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.core.reactive.ReactiveKafkaProducerTemplate;

import reactor.kafka.sender.SenderOptions;
import site.toeicdoit.chat.domain.model.ChatFluxModel;

@Configuration
public class KafkaConfig {
    @Bean
    public ReactiveKafkaProducerTemplate<String, ChatFluxModel> reactiveKafkaConsumerTemplate(KafkaProperties kafkaProperties) {
        return new ReactiveKafkaProducerTemplate<>(
            SenderOptions.<String, ChatFluxModel>create(kafkaProperties.buildProducerProperties(null))
        );
    }
}
