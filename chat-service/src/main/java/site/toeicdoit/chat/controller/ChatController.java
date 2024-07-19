package site.toeicdoit.chat.controller;

import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.ChatDTO;
import site.toeicdoit.chat.domain.dto.Messenger;
import site.toeicdoit.chat.service.ChatService;

import org.springframework.http.ResponseEntity;
import org.springframework.http.codec.ServerSentEvent;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;


@Slf4j
@RestController
@RequestMapping("/api/chat")
@RequiredArgsConstructor
public class ChatController {
    private final ChatService chatService;

    /**
     * Subscribe Chat at Chatting Room
     * SSE를 통해 채팅방의 채팅을 구독한다.
     * @param
     * @return ServerSentEvent<ChatFluxModel>
     * @since 2024-07-19
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @GetMapping("/recieve/{roomId}")
    public Flux<ServerSentEvent<ChatDTO>> recieve(@PathVariable String roomId) {
        log.info("subscribe chat by room id {}", roomId);
        return chatService.recieve(roomId);
    }

    /**
     * Send Chat at Chatting Room
     * 반환 값 중 state가 true이면 성공, false이면 실패.
     * 성공 시 data에는 전송된 채팅 정보가 담겨있음.
     * @param
     * @return ResponseEntity<Messenger>
     * @since 2024-07-19
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @PostMapping("/save")
    public Mono<ResponseEntity<Messenger>> save(@RequestBody ChatDTO chatDTO) {
        log.info("Send chat {}", chatDTO.toString());
        return chatService.save(chatDTO).flatMap(i -> 
            Mono.just(ResponseEntity.ok(Messenger.builder().message("Send chat successfully").state(Boolean.TRUE).data(i).build()))
        );
    }

}
