package site.toeicdoit.chat.service.provider;

import java.util.List;
import java.util.Map;

import org.apache.kafka.clients.consumer.ConsumerConfig;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import reactor.kafka.receiver.KafkaReceiver;
import reactor.kafka.receiver.ReceiverOptions;
import site.toeicdoit.chat.domain.model.ChatFluxModel;

@Component
@RequiredArgsConstructor
public class KafkaReceiverProvider {
    private final KafkaProperties kafkaProperties;

    private ReceiverOptions<String, ChatFluxModel> createReceiverOptions(String roomId) {
        Map<String, Object> props = kafkaProperties.buildConsumerProperties(null);
        props.put(ConsumerConfig.GROUP_ID_CONFIG, "chat-group-" + (int)(Math.random() * 100));
        return ReceiverOptions.<String, ChatFluxModel>create(props).subscription(List.of(roomId));
    }

    public KafkaReceiver<String, ChatFluxModel> createKafkaReceiver(String roomId) {
        return KafkaReceiver.create(createReceiverOptions(roomId));
    }
}
