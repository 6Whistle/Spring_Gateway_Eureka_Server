package site.toeicdoit.toeic.service.Impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.repository.ToeicRepository;
import site.toeicdoit.toeic.service.ToeicService;

import java.util.List;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class ToeicServiceImpl implements ToeicService {

    private final ToeicRepository toeicRepository;

    public List<ToeicCategoryModel> getAllToeicCategoryByTest() {
        return toeicRepository.findAllByTest();
    }

    public List<ToeicCategoryModel> findByLevel(Long level) {
        return toeicRepository.findAllByLevel(level);
    }

    public List<ToeicCategoryModel> findByPart(String part) {
        return toeicRepository.findAllByPart(part);
    }

    public Page<String> findTitleByExam(Pageable pageable) {
        return toeicRepository.findTitleByExam(pageable);
    }

    public List<ToeicCategoryModel> getAllToeicCategory() {
        return toeicRepository.findAllByExam();
    }

}


