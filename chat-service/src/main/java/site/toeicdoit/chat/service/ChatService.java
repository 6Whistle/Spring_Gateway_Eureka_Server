package site.toeicdoit.chat.service;

import org.springframework.http.codec.ServerSentEvent;

import reactor.core.publisher.Flux;
import site.toeicdoit.chat.domain.dto.ChatDTO;
import site.toeicdoit.chat.domain.model.ChatFluxModel;

public interface ChatService extends CommandService<ChatFluxModel, ChatDTO>, QueryService<ChatFluxModel, ChatDTO>{
    Flux<ServerSentEvent<ChatDTO>> recieve(String roomId);
}
