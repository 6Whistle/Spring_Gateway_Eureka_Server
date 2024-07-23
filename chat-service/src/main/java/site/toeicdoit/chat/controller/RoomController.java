package site.toeicdoit.chat.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.server.ServerResponse;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.Messenger;
import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.service.RoomService;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * Chatting Room Controller
 * <p>채팅방 관련 요청을 처리하는 컨트롤러</p>
 * <p>RestController 어노테이션을 통해 Rest API 요청을 Webflux 방식으로 처리한다.</p>
 * <p>Endpoint: <b>/api/room</b></p>
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
@Slf4j
@RestController
@RequestMapping("/api/room")
@RequiredArgsConstructor
public class RoomController {
    private final RoomService roomService;
    
    /** Create Chatting Room
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
     * <p>성공 시 data에는 생성된 채팅방 정보가 담겨있음.</p>
     * <p>REST API: <b>POST</b></p>
     * <p>Endpoint: <b>/api/room/save</b></p>
     * @param dto {@link RoomDTO} - {@link RequestBody}
     * @return {@link Mono}&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-19
     * @version 1.1
     * @author JunHwei Lee(6whistle)
     */
    @PostMapping("/save")
    public Mono<ResponseEntity<Messenger>> save(@RequestBody RoomDTO dto) {
        log.info("Create room : {}", dto.toString());
        return roomService.save(dto)
        .flatMap(model -> Mono.just(roomService.toDTO(model)))
        .flatMap(i -> Mono.just(ResponseEntity.ok(Messenger.builder().message("Create room successfully").state(Boolean.TRUE).data(i).build())))
        ;
    }

    /** Update Chatting Room
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
     * <p>성공 시 data에는 업데이트된 채팅방 정보가 담겨있음.</p>
     * <p>REST API: <b>PUT</b></p>
     * <p>Endpoint: <b>/api/room/update</b></p>
     * @param dto {@link RoomDTO} - {@link RequestBody}
     * @return {@link Mono}&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-19
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @PutMapping("/update")
    public Mono<ResponseEntity<Messenger>> update(@RequestBody RoomDTO dto) {
        log.info("Update room : {}", dto.toString());
        return roomService.update(dto)
        .flatMap(i -> 
            Mono.just(ResponseEntity.ok(Messenger.builder().message("Update room successfully").state(Boolean.TRUE).data(i).build()))
        )
        ;
    }

    /**
     * Delete Chatting Room
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
     * <p>성공 시 data에는 삭제된 채팅방 정보가 담겨있음.</p>
     * <p>REST API: <b>DELETE</b></p>
     * <p>Endpoint: <b>/api/room/delete</b></p>
     * @param dto {@link RoomDTO} - {@link RequestBody}
     * @return {@link Mono}&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-19
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @DeleteMapping("/delete")
    public Mono<ServerResponse> delete(@RequestBody RoomDTO dto) {
        log.info("Delete room : {}", dto.toString());
        return roomService.findById(dto.getId())
        .doOnNext(model -> roomService.delete(model.getId()))
        .flatMap(i -> Mono.just(Messenger.builder().message("Delete room successfully").state(Boolean.TRUE).data(roomService.toDTO(i)).build()))
        .flatMap(i -> ServerResponse.ok().bodyValue(i));
    }
}
