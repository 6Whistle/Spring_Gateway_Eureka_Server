package site.toeicdoit.user.controller;

import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import lombok.RequiredArgsConstructor;
import site.toeicdoit.user.domain.dto.LoginDto;
import site.toeicdoit.user.domain.dto.PrincipalUserDetails;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.model.mysql.UserModel;
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

    @PostMapping("/login/local")
    public ResponseEntity<Map<String, Object>> localLogin(@RequestBody LoginDto dto) {
        log.info(">>> local login con 진입: {} ", dto);
        return ResponseEntity.ok(Map.of("user", UserDto.builder().email(dto.getEmail()).roles(List.of(Role.ROLE_USER)).build()));
        // return ResponseEntity.ok(service.localLogin(dto));
    }

    @PostMapping("/join")
    public ResponseEntity<Messenger> join(@RequestBody UserDto dto) {
        log.info(">>> join con 진입: {}", dto);
        return ResponseEntity.ok(service.save(dto));
    }

    @PostMapping("/oauth2/{registration}")
    // public ResponseEntity<Messenger> oauthLogin(@RequestBody UserDto dto) {
    public ResponseEntity<Map<String, Object>> oauthLogin(@RequestBody Map<String, Object> dto) {
        log.info(">>> oauthJoin con 진입: {}", dto);
        return ResponseEntity.ok(Map.of("user", UserDto.builder().email("test@test").roles(List.of(Role.ROLE_USER)).build()));
        // return ResponseEntity.ok(service.save(dto));
    }


    @GetMapping("/exists-email")
    public ResponseEntity<Messenger> existsByEmail(@RequestParam("email") String email) {
        log.info(">>> existsByEmail con: {}", email);
        return ResponseEntity.ok(service.existsByEmail(email));
    }

}
