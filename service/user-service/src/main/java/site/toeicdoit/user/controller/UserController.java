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

@RequestMapping(path = "/api/user")
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RestController
@Slf4j
public class UserController {

    private final UserService userService;

    @SuppressWarnings("static-access")
    @GetMapping("/find-all")
    public ResponseEntity<List<UserDto>> findAll() {
        return ResponseEntity.ok(userService.findAll());
    }

    // 필요한지 확인 필요
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

    @DeleteMapping("/delete")
    public ResponseEntity<Messenger> deleteById(@RequestParam("id") Long id) {
        userService.deleteById(id);
        return ResponseEntity.ok(Messenger.builder()
                .message("user deleteById : "+MessageStatus.SUCCESS.name())
                .state(Boolean.TRUE)
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
                .message("user findByNameAndProfile : "+MessageStatus.SUCCESS.name())
                .state(Boolean.TRUE)
                .data(userService.findByNameAndProfile(ids))
                .build());
    }

    @PutMapping("/modify-by-password")
    public ResponseEntity<Messenger> modifyByPassword(@RequestParam("email") String email,
                                                      @RequestParam("oldPassword") String oldPassword,
                                                      @RequestParam("newPassword") String newPassword) {
        return ResponseEntity.ok(Messenger.builder()
                .message("user modifyByPassword : "+MessageStatus.SUCCESS.name())
                .state(userService.modifyByPassword(email, oldPassword, newPassword))
                .build());
    }

    @PutMapping("/modify-by-name-phone")
    public ResponseEntity<Messenger> modifyByNameAndPhone(@RequestBody UserDto dto) {
        return ResponseEntity.ok(Messenger.builder()
                .message("user modifyByNameAndPhone : "+MessageStatus.SUCCESS.name())
                .state(Boolean.TRUE)
                .data(userService.modifyByNameAndPhone(dto))
                .build());
    }

    @PutMapping("/modify-by/{id}/{keyword}")
    public ResponseEntity<Messenger> modifyByKeyword(@PathVariable("id") Long id,
                                                     @PathVariable("keyword") String keyword,
                                                     @RequestParam("info") String info) {
        return ResponseEntity.ok(Messenger.builder()
                .message("user modifyByKeyword : "+MessageStatus.SUCCESS.name())
                .state(Boolean.TRUE)
                .data(userService.modifyByKeyword(id, keyword, info))
                .build());
    }
}
