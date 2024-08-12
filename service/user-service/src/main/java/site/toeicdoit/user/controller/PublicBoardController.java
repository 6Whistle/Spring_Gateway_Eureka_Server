package site.toeicdoit.user.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.user.domain.dto.BoardDto;
import site.toeicdoit.user.domain.vo.MessageStatus;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.BoardService;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping(path = "/api/public/board")
@Slf4j
@RestController
@RequiredArgsConstructor
public class PublicBoardController {
    private final BoardService boardService;

    @GetMapping("/find-by-id")
    public ResponseEntity<Messenger> findById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("board findById : "+MessageStatus.SUCCESS.name())
                        .state(Boolean.TRUE)
                        .data(boardService.findById(id))
                        .build());
    }

    @GetMapping("/exist-by-id")
    public ResponseEntity<Messenger> existById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("board existById 조회 결과")
                        .state(boardService.existById(id))
                        .build());
    }

    @GetMapping("/find-all")
    public ResponseEntity<List<BoardDto>> findAll() {
        return ResponseEntity.ok(boardService.findAll());
    }

    @GetMapping("/findBy")
    public ResponseEntity<Page<BoardDto>> findBy(@RequestParam(value = "title", required = false) String title,
                                                 @RequestParam(value = "type", required = false) String type,
                                                 @RequestParam(value = "category", required = false) String category,
                                                 @RequestParam(value = "userId", required = false) Long userId,
                                                 Pageable pageable) {
        return ResponseEntity.ok(boardService.findBy(title, type, category, userId, pageable));
    }

}
