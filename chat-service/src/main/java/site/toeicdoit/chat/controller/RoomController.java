package site.toeicdoit.chat.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;
import site.toeicdoit.chat.domain.dto.Messenger;
import site.toeicdoit.chat.domain.dto.RoomDTO;
import site.toeicdoit.chat.service.RoomService;

import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


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
        .flatMap(model -> Mono.just(ResponseEntity.ok(Messenger.builder().message("Create room successfully").state(Boolean.TRUE).data(roomService.toDTO(model)).build())))
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
        .flatMap(model -> Mono.just(
            ResponseEntity.ok(Messenger.builder().message("Update room successfully").state(Boolean.TRUE).data(roomService.toDTO(model)).build())
        ))
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
    public Mono<ResponseEntity<Messenger>> delete(@RequestBody RoomDTO dto) {
        log.info("Delete room : {}", dto.toString());
        return roomService.findById(dto.getId())
        .doOnNext(model -> roomService.delete(model.getId()))
        .flatMap(i -> Mono.just(
                ResponseEntity.ok(Messenger.builder().message("Delete room successfully").state(Boolean.TRUE).data(roomService.toDTO(i)).build())
        ))
        ;
    }

    /**
     * Get Chatting Room
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
     * <p>성공 시 data에는 조회된 채팅방 정보가 담겨있음.</p>
     * <p>REST API: <b>POST</b></p>
     * <p>Endpoint: <b>/api/room/get</b></p>
     * @param dto {@link RoomDTO} - {@link RequsetParam}
     * @return {@link Mono}&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @GetMapping("/find")
    public Mono<ResponseEntity<Messenger>> findById(@RequestParam String id) {
        log.info("Find room by id : {}", id);
        return roomService.findById(id)
        .flatMap(i -> Mono.just(
            ResponseEntity.ok(Messenger.builder().message("Find room successfully").state(Boolean.TRUE).data(roomService.toDTO(i)).build())
        ));
    }

    /**
     * Get All Chatting Room
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
     * <p>성공 시 data에는 조회된 모든 채팅방 정보가 담겨있음.</p>
     * <p>REST API: <b>GET</b></p>
     * <p>Endpoint: <b>/api/room/find-all</b></p>
     * @return {@link Mono}&lt{@link ResponseEntity}&lt{@link Messenger}&gt&gt
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    @GetMapping("/find-all")
    public Mono<ResponseEntity<Messenger>> findAll() {
        log.info("Find all rooms");
        return roomService.findAll()
        .flatMap(i -> Mono.just(roomService.toDTO(i)))
        .collectList()
        .flatMap(roomDTO -> Mono.just(
            ResponseEntity.ok(Messenger.builder().message("Find all rooms successfully").state(Boolean.TRUE).data(roomDTO).build())
        ));
    }

    /**
     * Get Chatting Room by Category
     * <p>반환 값 중 state가 true이면 성공, false이면 실패.</p>
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
    public Mono<ResponseEntity<Messenger>> findBy(@RequestParam String type, @RequestParam String value, Pageable pageable) {
        log.info("Find rooms by {} : {}", type, pageable);
        return roomService.findBy(type, value, pageable)
        .flatMap(i -> Mono.just(roomService.toDTO(i)))
        .collectList()
        .flatMap(roomDTO -> Mono.just(
            ResponseEntity.ok(Messenger.builder().message("Find rooms by " + type + " successfully").state(Boolean.TRUE).data(roomDTO).build())
        ));
        // return Mono.just(ResponseEntity.ok(new Messenger()));
    }
    
    
}
