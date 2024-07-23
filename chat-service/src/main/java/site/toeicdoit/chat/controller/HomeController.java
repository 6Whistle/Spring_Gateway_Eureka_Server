package site.toeicdoit.chat.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.web.bind.annotation.RestController;

import reactor.core.publisher.Mono;

import org.springframework.web.bind.annotation.GetMapping;

/**
 * HomeController
 * <p>Check if the server is running</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see RestController
 */
@RestController
public class HomeController {
    @GetMapping("/")
    public Mono<String> hello() {
        return Mono.just("Chat server is running... \n" + 
        "Writer: 6whistle \n" +
        "Server running time: " + DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss").format(LocalDateTime.now()) + "\n");
    }
}
