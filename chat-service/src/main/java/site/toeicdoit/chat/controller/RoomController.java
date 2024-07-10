package site.toeicdoit.chat.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.ChatDTO;
import site.toeicdoit.chat.domain.dto.Messenger;
import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.domain.model.ChatFluxModel;
import site.toeicdoit.chat.domain.model.RoomFluxModel;
import site.toeicdoit.chat.exception.ChatException;
import site.toeicdoit.chat.service.RoomService;
import site.toeicdoit.chat.service.impl.ChatServiceImpl;

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
    private final ChatServiceImpl chatService;

    @GetMapping("/checkServer")
    public Mono<String> getMethodName() {
        log.info("Check server status");
        return roomService.countConnection()
            .flatMap(count -> Mono.just("Server is running. Total connection: " + count));
    }

    @PostMapping("/save")
    public Mono<RoomFluxModel> saveRoom(@RequestBody RoomDTO dto) {
        log.info("Save room");
        return roomService.save(dto);
    }
    

    @GetMapping("/recieve/{roomId}")
    public Flux<ServerSentEvent<ChatFluxModel>> recieve(@PathVariable String roomId) {
    // public Flux<ServerSentEvent<ChatDTO>> subscribeByRoomId(@PathVariable String roomId) {
        log.info("subscribe chat by room id {}", roomId);
        // return roomService.subscribeByRoomId(roomId)
        // .switchIfEmpty(Flux.error(new ChatException("Room not found")));
        return chatService.recieve(Integer.parseInt(roomId));
    }

    @PostMapping("/send")
    public Mono<Messenger> sendChat(@RequestBody ChatDTO chatDTO) {
        log.info("Send chat {}", chatDTO.toString());
        // return roomService.saveChat(chatDTO)
        // .switchIfEmpty(Mono.error(new ChatException("Room not found")));
        return chatService.send(chatDTO);
    }
    
    @PostMapping("/create")
    public Mono<Messenger> create(@RequestBody RoomDTO dto) {
        log.info("Create room");
        return roomService.create(dto);
    }

    @DeleteMapping("/delete")
    public Mono<Messenger> deleteRoom(@RequestBody RoomDTO dto) {
        log.info("Delete room");
        return roomService.delete(dto);
    }
}
