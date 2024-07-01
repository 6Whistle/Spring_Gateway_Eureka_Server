package site.toeicdoit.user.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import site.toeicdoit.user.domain.dto.UserDto;
import site.toeicdoit.user.domain.vo.Messenger;
// import site.toeicdoit.user.service.UserService;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
public class AuthController {
    // private final UserService userService;

    @PostMapping("/login")
    public Messenger login(@RequestBody UserDto userDto) {
        return Messenger.builder().build();
    }

    @PostMapping("/signup")
    public Messenger signup(@RequestBody UserDto userDto) {
        return Messenger.builder().build();
    }

    @PostMapping("/logout")
    public Messenger logout() {
        return Messenger.builder().build();
    }

    @GetMapping("/refresh")
    public Messenger refresh() {
        return Messenger.builder().build();
    }
}
