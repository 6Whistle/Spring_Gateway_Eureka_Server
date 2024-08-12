package site.toeicdoit.toeic.service.Impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.toeic.domain.dto.ToeicCategoryDto;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.domain.vo.Messenger;
import site.toeicdoit.toeic.repository.ToeicCategoryRepository;
import site.toeicdoit.toeic.service.ToeicCategoryService;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class ToeicCategoryServiceImpl implements ToeicCategoryService {

    private final ToeicCategoryRepository toeicCategoryRepository;

    @Override
    public List<ToeicCategoryModel> findAllByExam() {
        return toeicCategoryRepository.findAllByExam();
    }

    @Override
    public List<ToeicCategoryModel> findAllByTest() {
        return toeicCategoryRepository.findAllByTest();
    }

    @Override
    public List<ToeicCategoryModel> findAllByLevel(Long level) {
        return toeicCategoryRepository.findAllByLevel(level);
    }

    @Override
    public List<ToeicCategoryModel> findAllByPart(String part) {
        return toeicCategoryRepository.findAllByPart(part);
    }

    @Override
    public Messenger save(ToeicCategoryDto toeicCategoryDto) {
        try {
            ToeicCategoryModel entity = dtoToEntity(toeicCategoryDto);
            toeicCategoryRepository.save(entity);
            return Messenger.builder()
                    .message("Successfully saved")
                    .state(true)
                    .build();
        } catch (Exception e) {
            log.error("Error saving ToeicCategoryDto: ", e);
            return Messenger.builder()
                    .message("Error saving data")
                    .state(false)
                    .build();
        }
    }

    @Override
    public Messenger deleteById(Long id) {
        try {
            if (toeicCategoryRepository.existsById(id)) {
                toeicCategoryRepository.deleteById(id);
                return Messenger.builder()
                        .message("Successfully deleted")
                        .state(true)
                        .build();
            } else {
                return Messenger.builder()
                        .message("No record found with id " + id)
                        .state(false)
                        .build();
            }
        } catch (Exception e) {
            log.error("Error deleting ToeicCategoryModel with id {}: ", id, e);
            return Messenger.builder()
                    .message("Error deleting data")
                    .state(false)
                    .build();
        }
    }

    @Override
    public Messenger modify(ToeicCategoryDto toeicCategoryDto) {
        try {
            if (toeicCategoryRepository.existsById(toeicCategoryDto.getId())) {
                ToeicCategoryModel entity = dtoToEntity(toeicCategoryDto);
                toeicCategoryRepository.save(entity);
                return Messenger.builder()
                        .message("Successfully updated")
                        .state(true)
                        .build();
            } else {
                return Messenger.builder()
                        .message("No record found with id " + toeicCategoryDto.getId())
                        .state(false)
                        .build();
            }
        } catch (Exception e) {
            log.error("Error updating ToeicCategoryDto: ", e);
            return Messenger.builder()
                    .message("Error updating data")
                    .state(false)
                    .build();
        }
    }

    @Override
    public List<ToeicCategoryDto> findAll() {
        try {
            List<ToeicCategoryDto> dtoList = toeicCategoryRepository.findAll().stream()
                    .map(this::entityToDto)
                    .collect(Collectors.toList());
            return dtoList;
        } catch (Exception e) {
            log.error("Error retrieving all ToeicCategoryModels: ", e);
            return List.of();
        }
    }

    @Override
    public Optional<ToeicCategoryDto> findById(Long id) {
        try {
            return toeicCategoryRepository.findById(id)
                    .map(this::entityToDto);
        } catch (Exception e) {
            log.error("Error retrieving ToeicCategoryModel with id {}: ", id, e);
            return Optional.empty();
        }
    }

    @Override
    public Boolean existsById(Long id) {
        try {
            return toeicCategoryRepository.existsById(id);
        } catch (Exception e) {
            log.error("Error checking existence of ToeicCategoryModel with id {}: ", id, e);
            return false;
        }
    }
}
