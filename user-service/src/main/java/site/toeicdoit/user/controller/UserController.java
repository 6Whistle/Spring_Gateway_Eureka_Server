package site.toeicdoit.user.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.domain.vo.PageRequestVo;
import site.toeicdoit.user.service.UserService;
import java.util.List;
import java.util.Optional;

@RequestMapping(path = "/api/user")
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RestController
@Slf4j
public class UserController {

    private final UserService service;

    @SuppressWarnings("static-access")
    @GetMapping("/find-all")
    public ResponseEntity<List<UserDto>> findAll() {
        return ResponseEntity.ok(service.findAll());
    }


    @GetMapping("/find-by-email")
    public ResponseEntity<Optional<UserDto>> findByEmail(@RequestParam("email") String email) {
        return ResponseEntity.ok(service.findByEmail(email));
    }

    @GetMapping("/find-by-id")
    public ResponseEntity<Optional<UserDto>> findById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(service.findById(id));
    }

    @PutMapping("/modify")
    public ResponseEntity<Messenger> modify(@RequestBody UserDto dto) {
        return ResponseEntity.ok(service.modify(dto));
    }

    @PutMapping("/modify-by-password")
    public ResponseEntity<Messenger> modifyByPassword(@RequestBody UserDto dto) {
        log.info(">>> modifyByPassword con 정보 : {} ", dto);
        return ResponseEntity.ok(service.modifyByPassword(dto));
    }

    @PutMapping("/modify-by-keyword")
    public ResponseEntity<Messenger> modifyByKeyword(@RequestBody UserDto dto) {
        log.info(">>> modifyByKeyword con 정보 : {}", dto);

        return ResponseEntity.ok(service.modifyByKeyword(dto));
    }



    @DeleteMapping("/delete")
    public ResponseEntity<Messenger> deleteById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(service.deleteById(id));
    }

    @GetMapping("/exist-by-id")
    public ResponseEntity<Boolean> existById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(service.existById(id));
    }


    @GetMapping("/count-all")
    public ResponseEntity<Messenger> countAll() {
        return ResponseEntity.ok(service.countAll());
    }

}
