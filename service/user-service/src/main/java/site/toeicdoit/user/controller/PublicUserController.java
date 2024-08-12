package site.toeicdoit.user.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.vo.MessageStatus;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.UserService;

import java.util.List;
import java.util.Map;

@RequestMapping(path = "/api/public/user")
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RestController
@Slf4j
public class PublicUserController {

    private final UserService userService;

    @SuppressWarnings("static-access")
    @GetMapping("/find-all")
    public ResponseEntity<List<UserDto>> findAll() {
        return ResponseEntity.ok(userService.findAll());
    }

    @GetMapping("/find-by-email")
    public ResponseEntity<Messenger> findByEmail(@RequestParam("email") String email) {
        return ResponseEntity.ok(Messenger
                .builder()
                .message("user findByEmail : "+MessageStatus.SUCCESS.name())
                .state(Boolean.TRUE)
                .data(userService.findByEmail(email))
                .build());
    }

    @GetMapping("/find-by-id")
    public ResponseEntity<Messenger> findById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(Messenger
                .builder()
                .message("user findById : "+MessageStatus.SUCCESS.name())
                .state(Boolean.TRUE)
                .data(userService.findById(id))
                .build());
    }


    @GetMapping("/exist-by-id")
    public ResponseEntity<Messenger> existById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(Messenger.builder()
                .message("user existById 조회 결과")
                .state(userService.existById(id))
                .build());
    }

    @PostMapping("/find-by-name-profile")
    public ResponseEntity<Messenger> findByNameAndProfile(@RequestBody Map<String, List<Long>> ids) {
        return ResponseEntity.ok(Messenger.builder()
                .message("user findByNameAndProfile : "+ MessageStatus.SUCCESS.name())
                .state(Boolean.TRUE)
                .data(userService.findByNameAndProfile(ids))
                .build());
    }
}
