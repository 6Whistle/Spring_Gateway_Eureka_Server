package site.toeicdoit.toeic.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import site.toeicdoit.toeic.domain.dto.ResultDto;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.domain.vo.Messenger;
import site.toeicdoit.toeic.service.ResultService;
import site.toeicdoit.toeic.service.ToeicCategoryService;
import site.toeicdoit.toeic.service.ToeicService;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RequestMapping(path = "/api/toeic")
@Log4j2
@RestController
public class ToeicController {

    private final ToeicCategoryService toeicCategoryService;
    private final ResultService resultService;
    private final ToeicService toeicService;

    @GetMapping("/exam")
    public List<ToeicCategoryModel> getAllToeicCategoryByExam() {
        return toeicCategoryService.findAllByExam();
    }

    @GetMapping("/test")
    public List<ToeicCategoryModel> getAllToeicCategoryByTest() {
        return toeicCategoryService.findAllByTest();
    }

    @GetMapping("/level/{level}")
    public List<ToeicCategoryModel> findByLevel(@PathVariable Long level) {
        return toeicCategoryService.findAllByLevel(level);
    }

    @GetMapping("/part/{part}")
    public List<ToeicCategoryModel> findByPart(@PathVariable String part) {
        return toeicCategoryService.findAllByPart(part);
    }

    @PostMapping("/exam/save")
    public ResponseEntity<Messenger> saveResult(@RequestBody ResultDto resultDto) {
        Messenger response = resultService.save(resultDto);
        return ResponseEntity.ok(response);
    }

    @PostMapping("/exam/uploadChunk")
    public ResponseEntity<Messenger> uploadChunk(@RequestBody String jsonData, @RequestParam int chunkIndex, @RequestParam int totalChunks) {
        Messenger response = resultService.saveChunk(jsonData, chunkIndex, totalChunks);
        return ResponseEntity.ok(response);
    }

    @GetMapping("/exam/user/{userId}")
    public List<ResultDto> findAllByUserId(@PathVariable Long userId) {
        return resultService.findByUserId(userId);
    }
}
