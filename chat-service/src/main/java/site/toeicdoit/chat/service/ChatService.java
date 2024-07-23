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
    Flux<ServerSentEvent<ChatDTO>> recieve(String roomId);
}
