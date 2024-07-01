package site.toeicdoit.user.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import lombok.RequiredArgsConstructor;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.domain.vo.Role;
import site.toeicdoit.user.service.UserService;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@Slf4j
@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {
     private final UserService service;

    @PostMapping("/local/login")
    public ResponseEntity<Role> localLogin(@RequestBody UserDto dto) {
        log.info(">>> local login con 진입: {} ", dto);
        return ResponseEntity.ok(service.localLogin(dto));
    }

    @PostMapping("/join")
    public ResponseEntity<Messenger> join(@RequestBody UserDto dto) {
        log.info(">>> join con 진입: {}", dto);
        return ResponseEntity.ok(service.save(dto));
    }

    @PostMapping("/oauth2/{registration}")
    public ResponseEntity<Messenger> oauthLogin(@RequestBody UserDto dto) {
        log.info(">>> oauthJoin con 진입: {}", dto);
        return ResponseEntity.ok(service.save(dto));
    }


    @GetMapping("/exists-email")
    public ResponseEntity<Messenger> existsByEmail(@RequestParam("email") String email) {
        log.info(">>> existsByEmail con: {}", email);
        return ResponseEntity.ok(service.existsByEmail(email));
    }

}
