package site.toeicdoit.tx.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.tx.domain.dto.CalendarDto;
import site.toeicdoit.tx.service.Impl.CalendarServiceImpl;
import site.toeicdoit.tx.domain.vo.Messenger;


import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RestController
@Log4j2
@RequestMapping("/api/calendars")
public class CalendarController {
    private final CalendarServiceImpl calendarService;

    @PostMapping("/save")
    public ResponseEntity<Messenger> save(@RequestBody List<CalendarDto> event) {
        log.info("CalendarDto save con: {}", event);
        return ResponseEntity.ok(calendarService.save(event));
    }

    @PostMapping("/add")
    public ResponseEntity<Messenger> add(@RequestBody CalendarDto dto) {
        log.info("CalendarDto save con: {}", dto);
        return ResponseEntity.ok(calendarService.add(dto));
    }


    @GetMapping("/list")
    public ResponseEntity<List<CalendarDto>> getCalendarByUserId(@RequestParam("id") Long userId) {
        log.info("ArticleModel findById con: {}", userId);
        return ResponseEntity.ok(calendarService.getCalendarByUserId(userId));
    }
}
