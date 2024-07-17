package site.toeicdoit.chat.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.server.ServerResponse;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.ChatDTO;
import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.domain.model.ChatFluxModel;
import site.toeicdoit.chat.service.ChatService;
import site.toeicdoit.chat.service.RoomService;

import org.springframework.http.codec.ServerSentEvent;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@Slf4j
@RestController
@RequestMapping("/api/room")
@RequiredArgsConstructor
public class RoomController {
    private final RoomService roomService;
    private final ChatService chatService;

    // @GetMapping("/checkServer")
    // public Mono<String> checkServer() {
    //     log.info("Check server status");
    //     return roomService.countConnection()
    //         .flatMap(count -> Mono.just("Server is running. Total connection: " + count));
    // }
        
    @PostMapping("/save")
    public Mono<ServerResponse> save(@RequestBody RoomDTO dto) {
        log.info("Create room");
        return roomService.save(dto).flatMap(i -> ServerResponse.ok().bodyValue(i));
    }

    @DeleteMapping("/delete")
    public Mono<ServerResponse> delete(@RequestBody String roomId) {
        log.info("Delete room");
        return roomService.delete(roomId).flatMap(i -> ServerResponse.ok().bodyValue(i));
    }

    @GetMapping("/recieve/{roomId}")
    public Flux<ServerSentEvent<ChatFluxModel>> recieve(@PathVariable String roomId) {
        log.info("subscribe chat by room id {}", roomId);
        return chatService.recieve(roomId);
    }

    @PostMapping("/send")
    public Mono<ServerResponse> sendChat(@RequestBody ChatDTO chatDTO) {
        log.info("Send chat {}", chatDTO.toString());
        return chatService.save(chatDTO).flatMap(i -> ServerResponse.ok().bodyValue(i));
    }

}
