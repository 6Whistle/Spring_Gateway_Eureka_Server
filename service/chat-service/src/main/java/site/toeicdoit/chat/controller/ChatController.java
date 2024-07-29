package site.toeicdoit.chat.controller;

import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.ChatDTO;
import site.toeicdoit.chat.domain.dto.Messenger;
import site.toeicdoit.chat.service.ChatService;

import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.http.codec.ServerSentEvent;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * Chatting Controller
 * <p>채팅 관련 요청을 처리하는 컨트롤러</p>
 * <p>RestController 어노테이션을 통해 Rest API 요청을 Webflux 방식으로 처리한다.</p>
 * <p>Endpoint: <b>/api/chat</b></p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
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
     * @return Flux&lt{@link ServerSentEvent}&lt{@link ChatDTO}&gt&gt
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
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
     * <p>성공 시 data에는 전송된 채팅 정보가 담겨있음.</p>
     * <p>REST API: <b>POST</b></p>
     * <p>Endpoint: <b>/api/chat/save</b></p>
     * @param
     * @return Mono&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-19
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @PostMapping("/save")
    public Mono<ResponseEntity<Messenger>> save(@RequestBody ChatDTO chatDTO) {
        log.info("Send chat {}", chatDTO.toString());
        return chatService.save(chatDTO).flatMap(model -> 
            Mono.just(ResponseEntity.ok(Messenger.builder().message("Send chat successfully").state(Boolean.TRUE).data(chatService.toDTO(model)).build()))
        );
    }

    /**
     * Update Chat at Chatting Room
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
     * <p>성공 시 data에는 업데이트된 채팅 정보가 담겨있음.</p>
     * <p>REST API: <b>PUT</b></p>
     * <p>Endpoint: <b>/api/chat/update</b></p>
     * @param Mono&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @PutMapping("/update")
    public Mono<ResponseEntity<Messenger>> update(@RequestBody ChatDTO chatDTO) {
        log.info("Update chat {}", chatDTO.toString());
        return chatService.update(chatDTO)
        .flatMap(model -> 
            Mono.just(ResponseEntity.ok(Messenger.builder().message("Update chat successfully").state(Boolean.TRUE).data(chatService.toDTO(model)).build()))
        );
    }

    /**
     * Delete Chat at Chatting Room
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
     * <p>성공 시 data에는 삭제된 채팅 정보가 담겨있음.</p>
     * <p>REST API: <b>DELETE</b></p>
     * <p>Endpoint: <b>/api/chat/delete</b></p>
     * @param Mono&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @DeleteMapping("/delete")
    public Mono<ResponseEntity<Messenger>> delete(@RequestBody ChatDTO chatDTO) {
        log.info("Delete chat {}", chatDTO.toString());
        return chatService.delete(chatDTO.getId()).flatMap(model -> 
            Mono.just(ResponseEntity.ok(Messenger.builder().message("Delete chat successfully").state(Boolean.TRUE).data(chatService.toDTO(model)).build()))
        );
    }

    /**
     * Find Chat by Id
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
     * <p>성공 시 data에는 검색된 채팅 정보가 담겨있음.</p>
     * <p>REST API: <b>GET</b></p>
     * <p>Endpoint: <b>/api/chat/find</b></p>
     * @param id String
     * @return Mono&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @GetMapping("/find")
    public Mono<ResponseEntity<Messenger>> find(@RequestParam String id) {
        log.info("Find chat by id {}", id);
        return chatService.findById(id)
        .flatMap(model -> 
            Mono.just(ResponseEntity.ok(Messenger.builder().message("Find chat by id successfully").state(Boolean.TRUE).data(chatService.toDTO(model)).build()))
        );
    }

    /**
     * Find Chat by RoomId
     * <p>특정 채팅방의 채팅을 찾는다.</p>
     * <p>반환 값 중 count에는 조회된 채팅의 수가 담겨있음.</p>
     * <p>성공 시 data에는 조회된 채팅 정보가 담겨있음.</p>
     * <p>REST API: <b>GET</b></p>
     * <p>Endpoint: <b>/api/chat/find-by-room</b></p>
     * @param roomId String
     * @param field String
     * @param value String
     * @param pageable Pageable
     * @return Mono&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-29
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @GetMapping("/find-by")
    public Mono<ResponseEntity<Messenger>> findBy(
            @RequestParam(required = false) String roomId, 
            @RequestParam(required = true) String field, 
            @RequestParam(required = false) String value, 
            Pageable pageable
    ) {
        log.info("Find chat by field and value in room {} : {}, {}, {}", roomId, field, value, pageable);
        return chatService.findBy(roomId, field, value, pageable)
        .flatMap(model -> Mono.just(chatService.toDTO(model)))
        .collectList()
        .flatMap(chatDTOs -> Mono.just(
            ResponseEntity.ok(Messenger.builder().message("Find chat by field and value in room successfully").count(chatDTOs.size()).data(chatDTOs).build())
        ))
        ;
    }
}
