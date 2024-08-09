package site.toeicdoit.user.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.user.domain.dto.BoardDto;
import site.toeicdoit.user.domain.vo.MessageStatus;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.BoardService;
import java.util.List;
import java.util.Optional;


@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping(path = "/api/board")
@Slf4j
@RestController
@RequiredArgsConstructor
public class BoardController {

    private final BoardService boardService;

    @PostMapping("/save")
    public ResponseEntity<Messenger> save(@RequestBody BoardDto dto) {
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("board save : "+MessageStatus.SUCCESS.name())
                        .state(Boolean.TRUE)
                        .data(boardService.save(dto))
                        .build());
    }

    @DeleteMapping("/delete")
    public ResponseEntity<Messenger> deleteById(@RequestParam("id") Long id) {
        boardService.deleteById(id);
        return ResponseEntity.ok(
                Messenger.builder()
                        .message("board deleteById : "+MessageStatus.SUCCESS.name())
                        .state(Boolean.TRUE)
                        .build());
    }

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

    @PutMapping("/modify")
    public ResponseEntity<Messenger> modify(@RequestBody BoardDto dto) {
        return ResponseEntity.ok(Messenger.builder()
                .message("board modify : "+MessageStatus.SUCCESS.name())
                .state(Boolean.TRUE)
                .data(boardService.modify(dto))
                .build());
    }


}
