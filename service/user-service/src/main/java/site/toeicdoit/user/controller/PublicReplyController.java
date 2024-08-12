package site.toeicdoit.user.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.user.domain.vo.MessageStatus;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.ReplyService;


@RequestMapping(path = "/api/public/reply")
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RestController
@Slf4j
public class PublicReplyController {

    private final ReplyService replyService;

    @GetMapping("/find-all-by-boardId")
    public ResponseEntity<Messenger> findAllByBoardId(@RequestParam("boardId") Long boardId) {
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("reply save : "+ MessageStatus.SUCCESS.name())
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
