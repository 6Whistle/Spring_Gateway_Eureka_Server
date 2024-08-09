package site.toeicdoit.user.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.user.domain.dto.ReplyDto;
import site.toeicdoit.user.domain.vo.MessageStatus;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.ReplyService;

@RequestMapping(path = "/api/reply")
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RestController
@Slf4j
public class ReplyController {

    private final ReplyService replyService;

    @PostMapping("/save")
    public ResponseEntity<Messenger> save(@RequestBody ReplyDto dto) {
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("reply save : "+MessageStatus.SUCCESS.name())
                        .state(Boolean.TRUE)
                        .data(replyService.save(dto))
                        .build());
    }

    @PutMapping("/modify-by-content")
    public ResponseEntity<Messenger> modifyByContent(@RequestBody ReplyDto dto) {
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("reply save : "+MessageStatus.SUCCESS.name())
                        .state(Boolean.TRUE)
                        .data(replyService.modifyByContent(dto))
                        .build());
    }

    @DeleteMapping("/delete")
    public ResponseEntity<Messenger> deleteById(@RequestParam("id") Long id) {
        replyService.deleteById(id);
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("reply save : "+MessageStatus.SUCCESS.name())
                        .state(Boolean.TRUE)
                        .build()
        );
    }

    @GetMapping("/find-all-by-boardId")
    public ResponseEntity<Messenger> findAllByBoardId(@RequestParam("boardId") Long boardId) {
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("reply save : "+MessageStatus.SUCCESS.name())
                        .state(Boolean.TRUE)
                        .data(replyService.findAllByBoardId(boardId))
                        .build());
    }

    @GetMapping("/find-all-by-userId")
    public ResponseEntity<Messenger> findAllByUserId(@RequestParam("userId") Long userId) {
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("reply save : "+MessageStatus.SUCCESS.name())
                        .state(Boolean.TRUE)
                        .data(replyService.findAllByUserId(userId))
                        .build());
    }
}
