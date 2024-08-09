package site.toeicdoit.user.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import lombok.RequiredArgsConstructor;
import site.toeicdoit.user.domain.dto.LoginResultDto;
import site.toeicdoit.user.domain.dto.OAuth2UserDto;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.vo.MessageStatus;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.UserService;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@Slf4j
@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {
    private final UserService userService;

    @PostMapping("/join/local")
    public ResponseEntity<Messenger> localJoin(@RequestBody UserDto dto) {
        return ResponseEntity.ok(Messenger
                .builder()
                .message("user localJoin : " + MessageStatus.SUCCESS.name())
                .state(Boolean.TRUE)
                .data(userService.save(dto))
                .build());
    }

    @GetMapping("/exist-by-email")
    public ResponseEntity<Messenger> existByEmail(@RequestParam("email") String email) {
        return ResponseEntity.ok(Messenger
                .builder()
                .message("user existByEmail 조회 결과")
                .state(userService.existByEmail(email))
                .build());
    }

    @PostMapping("/login/local")
    public ResponseEntity<LoginResultDto> login(@RequestBody UserDto dto) {
        return ResponseEntity.ok(userService.login(dto));
    }

    @PostMapping("/oauth2/{registration}")
    public ResponseEntity<LoginResultDto> oauthJoinOrLogin(@RequestBody OAuth2UserDto dto,
                                                           @PathVariable("registration") String registration) {
        return ResponseEntity.ok(userService.oauthJoinOrLogin(dto, registration.toUpperCase()));
    }

}
