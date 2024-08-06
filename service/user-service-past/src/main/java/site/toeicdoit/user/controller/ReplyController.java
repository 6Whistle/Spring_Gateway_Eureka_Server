package site.toeicdoit.user.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.user.domain.dto.ReplyDto;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.ReplyService;

import java.util.List;

@RequestMapping(path = "/api/reply")
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RestController
@Slf4j
public class ReplyController {

    private final ReplyService replyService;

    @PostMapping("/save")
    public ResponseEntity<Messenger> save(@RequestBody ReplyDto dto) {
        log.info(">>save reply con 진입: {}", dto);
        return ResponseEntity.ok(replyService.save(dto));
    }

    @PutMapping("/modify-by-content")
    public ResponseEntity<Messenger> modify(@RequestBody ReplyDto dto) {
        log.info(">>> modify reply con 진입: {}", dto);
        return ResponseEntity.ok(replyService.modify(dto));
    }

    @DeleteMapping("/delete")
    public ResponseEntity<Messenger> deleteById(@RequestParam("id") Long id) {
        log.info(">>> delete reply con 진입: {}", id);
        return ResponseEntity.ok(replyService.deleteById(id));
    }

    @GetMapping("/find-all-by-boardId")
    public ResponseEntity<List<ReplyDto>> findAllByBoardId(@RequestParam("boardId") Long boardId) {
        return ResponseEntity.ok(replyService.findAllByBoardId(boardId));
    }

}
