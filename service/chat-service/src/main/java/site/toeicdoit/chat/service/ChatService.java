package site.toeicdoit.chat.service;

import org.springframework.http.codec.ServerSentEvent;

import reactor.core.publisher.Flux;
import site.toeicdoit.chat.domain.dto.ChatDTO;
import site.toeicdoit.chat.domain.model.ChatFluxModel;

/**
 * ChatService
 * <p>Chat Service Interface</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see QueryService
 * @see CommandService
 * @see ChatFluxModel
 * @see ChatDTO
 */
public interface ChatService extends CommandService<ChatFluxModel, ChatDTO>, QueryService<ChatFluxModel, ChatDTO>{
    /**
     * Mapping {@link ChatFluxModel} to {@link ChatDTO}
     * @param model {@link ChatFluxModel}
     * @return {@link ChatDTO}
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    default ChatDTO toDTO(ChatFluxModel model) {
        return ChatDTO.builder()
        .id(model.getId())
        .roomId(model.getRoomId())
        .senderId(model.getSenderId())
        .senderName(model.getSenderName())
        .message(model.getMessage())
        .createdAt(model.getCreatedAt())
        .updatedAt(model.getUpdatedAt())
        .build();
    }

    /**
     * Recieve Chat
     * <p>채팅을 받는다.</p>
     * @param roomId String
     * @return {@link Flux}&lt{@link ServerSentEvent}&lt{@link ChatDTO}&gt&gt
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    Flux<ServerSentEvent<ChatDTO>> recieve(String roomId);
}
