package site.toeicdoit.user.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.user.domain.dto.BoardDto;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.BoardService;

import java.util.Optional;


@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping(path = "/api/board")
@Log4j2
@RestController
@RequiredArgsConstructor
public class BoardController {

    private final BoardService service;

    @PostMapping("/save")
    public ResponseEntity<Messenger> save(@RequestBody BoardDto dto) {
        return ResponseEntity.ok(service.save(dto));
    }

    @PutMapping("/modify")
    public ResponseEntity<Messenger> modify(@RequestBody BoardDto dto) {
        return ResponseEntity.ok(service.modify(dto));
    }

    @DeleteMapping("/delete")
    public ResponseEntity<Messenger> deleteById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(service.deleteById(id));
    }

    @GetMapping("/detail")
    public ResponseEntity<Optional<BoardDto>> findById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(service.findById(id));
    }

    @GetMapping("/exists")
    public ResponseEntity<Boolean> existsById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(service.existsById(id));
    }

}
