package site.toeicdoit.toeic.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import site.toeicdoit.toeic.domain.dto.ResultDto;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.domain.vo.Messenger;
import site.toeicdoit.toeic.service.Impl.ResultServiceImpl;
import site.toeicdoit.toeic.service.Impl.ToeicServiceImpl;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RequestMapping(path = "/api/toeic")
@Log4j2
@RestController
public class ToeicController {

    private final ToeicServiceImpl toeicService;
    private final ResultServiceImpl resultService;

    @GetMapping("/exam")
    public List<ToeicCategoryModel> getAllToeicCategory() {
        return toeicService.getAllToeicCategory();
    }

    @GetMapping("/test")
    public List<ToeicCategoryModel> getAllToeicCategoryByTest() {
        return toeicService.getAllToeicCategoryByTest();
    }

    @GetMapping("/level/{level}")
    public List<ToeicCategoryModel> findByLevel(@PathVariable Long level) {
        return toeicService.findByLevel(level);
    }

    @GetMapping("/part/{part}")
    public List<ToeicCategoryModel> findByPart(@PathVariable String part) {
        return toeicService.findByPart(part);
    }

    @GetMapping("/exam/title")
    public Page<String> findTitleByExam(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return toeicService.findTitleByExam(pageable);
    }

    @PostMapping("/exam/save")
    public ResponseEntity<Messenger> saveResult(@RequestBody ResultDto resultDto) {
        Messenger response = resultService.save(resultDto);
        return ResponseEntity.ok(response);
    }

}
