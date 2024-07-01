package site.toeicdoit.user.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

import java.util.Map;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@RestController
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "Hello User World! 안녕 유저 월드^^ "+ LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 HH시 mm분"));
    }
    
    @PostMapping("/auth/oauth2/{registrationId}")
    public Boolean test2(@RequestBody Map<String, Object> body, @PathVariable String registrationId) {
        log.info("body: {}, registrationId: {}", body, registrationId);
        return true;
    }
}
