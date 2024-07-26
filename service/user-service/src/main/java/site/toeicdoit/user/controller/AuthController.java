package site.toeicdoit.user.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import lombok.RequiredArgsConstructor;
import site.toeicdoit.user.domain.dto.LoginResultDto;
import site.toeicdoit.user.domain.dto.OAuth2UserDto;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.UserService;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@Slf4j
@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {
    private final UserService service;

    @PostMapping("/join/local")
    public ResponseEntity<Messenger> localJoin(@RequestBody UserDto dto) {
        log.info(">>> localJoin con 진입: {}", dto);
        return ResponseEntity.ok(service.save(dto));
    }

    @PostMapping("/login/local")
    public ResponseEntity<LoginResultDto> login(@RequestBody UserDto dto) {
        log.info(">>> login con 진입: {} ", dto);
        return ResponseEntity.ok(service.login(dto));
    }

    @PostMapping("/oauth2/{registration}")
    public ResponseEntity<LoginResultDto> oauthJoin(@RequestBody OAuth2UserDto dto) {
        log.info(">>> oauthJoin con 진입: {}", dto);
        return ResponseEntity.ok(service.oauthJoin(dto));
    }

    @GetMapping("/exist-by-email")
    public ResponseEntity<Boolean> existByEmail(@RequestParam("email") String email) {
        log.info(">>> existByEmail con: {}", email);
        return ResponseEntity.ok(service.existByEmail(email));
    }

}
