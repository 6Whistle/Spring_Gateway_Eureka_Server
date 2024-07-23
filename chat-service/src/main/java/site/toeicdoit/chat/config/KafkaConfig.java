package site.toeicdoit.chat.config;

import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.core.reactive.ReactiveKafkaProducerTemplate;

import reactor.kafka.sender.SenderOptions;
import site.toeicdoit.chat.domain.model.ChatFluxModel;

/**
 * KafkaConfig
 * <p>Kafka Configuration</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see Configuration
 */
@Configuration
public class KafkaConfig {
    /**
     * reactiveKafkaProducerTemplate
     * <p>Reactive Kafka Producer Template Bean</p>
     * @param kafkaProperties {@link KafkaProperties}
     * @return {@link ReactiveKafkaProducerTemplate}
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see ReactiveKafkaProducerTemplate
     * @see SenderOptions
     * @see KafkaProperties
     * @see ChatFluxModel
     */
    @Bean
    public ReactiveKafkaProducerTemplate<String, ChatFluxModel> reactiveKafkaProducerTemplate(KafkaProperties kafkaProperties) {
        return new ReactiveKafkaProducerTemplate<>(
            SenderOptions.<String, ChatFluxModel>create(kafkaProperties.buildProducerProperties(null))
        );
    }
}
