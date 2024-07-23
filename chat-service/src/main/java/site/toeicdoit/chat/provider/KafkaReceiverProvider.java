package site.toeicdoit.chat.provider;

import java.util.List;
import java.util.Map;

import org.apache.kafka.clients.consumer.ConsumerConfig;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import reactor.kafka.receiver.KafkaReceiver;
import reactor.kafka.receiver.ReceiverOptions;
import site.toeicdoit.chat.domain.model.ChatFluxModel;

/**
 * KafkaReceiverProvider
 * <p>Kafka Receiver Provider</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see Component
 * @see RequiredArgsConstructor
 */
@Component
@RequiredArgsConstructor
public class KafkaReceiverProvider {
    private final KafkaProperties kafkaProperties;

    /**
     * createReceiverOptions
     * <p>Create Receiver Options using Kafka Properties and room ID</p>
     * @param roomId String
     * @return {@link ReceiverOptions}
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see ReceiverOptions
     * @see KafkaProperties
     * @see ChatFluxModel
     */
    private ReceiverOptions<String, ChatFluxModel> createReceiverOptions(String roomId) {
        Map<String, Object> props = kafkaProperties.buildConsumerProperties(null);
        props.put(ConsumerConfig.GROUP_ID_CONFIG, "chat-group-" + roomId + "-" + System.currentTimeMillis());
        return ReceiverOptions.<String, ChatFluxModel>create(props).subscription(List.of(roomId));
    }

    /**
     * createKafkaReceiver
     * <p>Create Kafka Receiver using room ID</p>
     * @param roomId String
     * @return {@link KafkaReceiver}
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see KafkaReceiver
     * @see ChatFluxModel
     */
    public KafkaReceiver<String, ChatFluxModel> createKafkaReceiver(String roomId) {
        return KafkaReceiver.create(createReceiverOptions(roomId));
    }
}
