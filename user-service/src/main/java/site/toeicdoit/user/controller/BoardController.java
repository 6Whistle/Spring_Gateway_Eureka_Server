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

    private final BoardService service;

    @PostMapping("/save")
    public ResponseEntity<Messenger> save(@RequestBody BoardDto dto) {
        log.info(">>save board con 진입: {}", dto);
        return ResponseEntity.ok(service.save(dto));
    }

    @PutMapping("/modify")
    public ResponseEntity<Messenger> modify(@RequestBody BoardDto dto) {
        log.info(">>> modify board con 진입: {}", dto);
        return ResponseEntity.ok(service.modify(dto));
    }

    @DeleteMapping("/delete")
    public ResponseEntity<Messenger> deleteById(@RequestParam("id") Long id) {
        log.info(">>> delete board con 진입: {}", id);
        return ResponseEntity.ok(service.deleteById(id));
    }

    @GetMapping("/find-by-id")
    public ResponseEntity<Optional<BoardDto>> findById(@RequestParam("id") Long id) {
        log.info(">>> find board con 진입: {}", id);
        return ResponseEntity.ok(service.findById(id));
    }

    @GetMapping("/exist-by-id")
    public ResponseEntity<Boolean> existById(@RequestParam("id") Long id) {
        log.info(">>> exist board con 진입: {}", id);
        return ResponseEntity.ok(service.existById(id));
    }

    @GetMapping("/find-all")
    public ResponseEntity<List<BoardDto>> findAll() {
        return ResponseEntity.ok(service.findAll());
    }

    @GetMapping("/find-all-by-types")
    public ResponseEntity<Page<BoardDto>> findAllByTypes(@RequestParam("type") String type, Pageable pageable) {
        log.info(">>> findByType 진입 : {}, {}", type, pageable);
        return ResponseEntity.ok(service.findAllByTypes(type, pageable));
    }

    @GetMapping("/find-all-by-userId")
    public ResponseEntity<List<BoardDto>> findAllByUserId(@RequestParam("id") Long id) {
        return ResponseEntity.ok(service.findAllByUserId(id));
    }

    @GetMapping("/find-all-by-email")
    public ResponseEntity<List<BoardDto>> finAllByEmail(@RequestParam("email") String email) {
        return ResponseEntity.ok(service.findAllByEmail(email));
    }


}
