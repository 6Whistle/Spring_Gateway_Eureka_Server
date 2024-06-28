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

    private final UserService userService;

    @SuppressWarnings("static-access")
    @GetMapping("/list")
    public ResponseEntity<List<UserDto>> findAll(PageRequestVo vo) {
        return ResponseEntity.ok(userService.findAll());
    }

    @GetMapping("/detail")
    public ResponseEntity<Optional<UserDto>> findById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(userService.findById(id));
    }

    @PutMapping("/modify")
    public ResponseEntity<Messenger> modify(@RequestBody UserDto param) {
        return ResponseEntity.ok(userService.modify(param));
    }

    @DeleteMapping("/delete")
    public ResponseEntity<Messenger> deleteById(@RequestParam("id") Long id) {
        return ResponseEntity.ok(userService.deleteById(id));
    }

//    @PostMapping("/search")
//    public ResponseEntity<List<UserDto>> findUsersByName(@RequestBody UserDto param) {
//        return ResponseEntity.ok(userService.findUsersByName(param.getName()));
//    }

    @GetMapping("/exists")
    public ResponseEntity<Boolean> existsById(@RequestParam("id") long id) {
        return ResponseEntity.ok(userService.existsById(id));
    }

//    @GetMapping("/logout")
//    public ResponseEntity<Boolean> logout(@RequestHeader("Authorization") String accessToken){
//        log.info("logout RequestHeader con : {}", accessToken);
//        var flag = userService.logout(accessToken);
//        return ResponseEntity.ok(flag);
//    }
}
