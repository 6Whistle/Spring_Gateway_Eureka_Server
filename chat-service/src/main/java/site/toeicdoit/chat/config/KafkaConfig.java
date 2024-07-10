package site.toeicdoit.chat.config;

import java.util.List;
import java.util.Map;

import org.apache.kafka.clients.consumer.ConsumerConfig;
import org.apache.kafka.clients.producer.ProducerConfig;
import org.apache.kafka.common.serialization.StringDeserializer;
import org.apache.kafka.common.serialization.StringSerializer;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
import org.springframework.boot.ssl.SslBundles;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.core.DefaultKafkaProducerFactory;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.core.ProducerFactory;
import org.springframework.kafka.core.reactive.ReactiveKafkaConsumerTemplate;
import org.springframework.kafka.core.reactive.ReactiveKafkaProducerTemplate;
import org.springframework.kafka.support.serializer.JsonDeserializer;
import org.springframework.kafka.support.serializer.JsonSerializer;

import lombok.extern.slf4j.Slf4j;
import reactor.kafka.receiver.ReceiverOptions;
import reactor.kafka.sender.SenderOptions;
import site.toeicdoit.chat.domain.model.ChatFluxModel;

@Slf4j
@Configuration
public class KafkaConfig {
    @Bean
    public ReactiveKafkaProducerTemplate<String, ChatFluxModel> reactiveKafkaConsumerTemplate(KafkaProperties kafkaProperties) {
        Map<String, Object> producerProps = kafkaProperties.buildProducerProperties(null);
        // producerProps.put(ProducerConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:9092");
        // producerProps.put(ProducerConfig.KEY_SERIALIZER_CLASS_CONFIG, StringSerializer.class);
        // producerProps.put(ProducerConfig.VALUE_SERIALIZER_CLASS_CONFIG, JsonSerializer.class);

        return new ReactiveKafkaProducerTemplate<>(
            SenderOptions.<String, ChatFluxModel>create(producerProps)
        );
    }

    @Bean
    public ReactiveKafkaConsumerTemplate<String, ChatFluxModel> reactiveKafkaProducerTemplate(KafkaProperties kafkaProperties) {
        Map<String, Object> consumerProps = kafkaProperties.buildConsumerProperties(null);
        // consumerProps.put(ConsumerConfig.BOOTSTRAP_SERVERS_CONFIG, "localhost:9092");
        // consumerProps.put(ConsumerConfig.GROUP_ID_CONFIG, "chat-group-id");
        // consumerProps.put(JsonDeserializer.USE_TYPE_INFO_HEADERS, "false");
        // consumerProps.put(JsonDeserializer.TRUSTED_PACKAGES, "*");
        // consumerProps.put(ConsumerConfig.KEY_DESERIALIZER_CLASS_CONFIG, StringDeserializer.class);
        // consumerProps.put(ConsumerConfig.VALUE_DESERIALIZER_CLASS_CONFIG, JsonDeserializer.class);
        // consumerProps.put(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, "earliest");

        return new ReactiveKafkaConsumerTemplate<>(
            ReceiverOptions.<String, ChatFluxModel>create(consumerProps)
            .addAssignListener(partitions -> log.info("onPartitionsAssigned {}", partitions))
            .addRevokeListener(partitions -> log.info("onPartitionsRevoked {}", partitions))
            .subscription(List.of("chat"))
        );
    }

}
