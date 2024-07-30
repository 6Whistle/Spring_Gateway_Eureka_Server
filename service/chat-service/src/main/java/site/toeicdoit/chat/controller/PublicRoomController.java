package site.toeicdoit.chat.controller;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.Messenger;
import site.toeicdoit.chat.service.RoomService;

/**
 * Public Room Controller
 * <p>공개 채팅방 관련 요청을 처리하는 컨트롤러</p>
 * <p>RestController 어노테이션을 통해 Rest API 요청을 Webflux 방식으로 처리한다.</p>
 * <p>Endpoint: <b>/api/public/room</b></p>
 * @since 2024-07-30
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
@Slf4j
@RestController
@RequestMapping("/api/public/room")
@RequiredArgsConstructor
public class PublicRoomController {
    private final RoomService roomService;

    /**
     * Get Chatting Room by Category
     * <p>반환 값 중 count에는 조회된 채팅방 개수가 담겨있음.</p>
     * <p>성공 시 data에는 조회된 채팅방 정보가 담겨있음.</p>
     * <p>REST API: <b>GET</b></p>
     * <p>Endpoint: <b>/api/room/find-by</b></p>
     * @param type {@link String} - {@link RequestParam}
     * @param pageable {@link Pageable} - {@link RequestParam}
     * @return {@link Mono}&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-23
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
        log.info("Find rooms by {}, {}, {}, {}", roomId, field, value, pageable);
        return roomService.findBy(roomId, field, value, pageable)
        .flatMap(models -> Mono.just(roomService.toDTO(models)))
        .doOnNext(roomDTO -> roomDTO.setAdminIds(List.of()))
        .collectList()
        .flatMap(roomDTOs -> Mono.just(
            ResponseEntity.ok(Messenger.builder().message("Find rooms by " + field + " successfully").count(roomDTOs.size()).data(roomDTOs).build())
        ));
    }
}
