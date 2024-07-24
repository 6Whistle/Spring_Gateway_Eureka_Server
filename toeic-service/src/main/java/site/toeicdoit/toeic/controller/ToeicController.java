package site.toeicdoit.toeic.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import site.toeicdoit.toeic.domain.model.mysql.ToeicModel;
import site.toeicdoit.toeic.service.ToeicServiceImp;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequiredArgsConstructor
@RequestMapping(path = "/api/toeic")
@Log4j2
@RestController
public class ToeicController {

    private ToeicServiceImp toeicService;

    @GetMapping("/random")
    public ToeicModel getRandomQuiz() {
        return toeicService.getRandomQuiz();
    }


}
