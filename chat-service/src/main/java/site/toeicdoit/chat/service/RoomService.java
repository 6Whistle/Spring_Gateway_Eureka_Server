package site.toeicdoit.chat.service;

import org.springframework.http.codec.ServerSentEvent;

import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.ChatDTO;
import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.domain.model.ChatFluxModel;
import site.toeicdoit.chat.domain.model.RoomFluxModel;

public interface RoomService extends CommandService<RoomFluxModel, RoomDTO>, QueryService<RoomFluxModel, RoomDTO>{
    Mono<ChatDTO> saveChat(ChatDTO chatDTO);
    Mono<ChatFluxModel> findChatById(String id);
    Flux<ChatFluxModel> findChatsByRoomId(String roomId);
    Flux<ServerSentEvent<ChatDTO>> subscribeByRoomId(String roomId);
    Mono<Integer> countConnection();
}
