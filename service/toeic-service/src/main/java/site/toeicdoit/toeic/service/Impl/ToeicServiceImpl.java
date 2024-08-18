package site.toeicdoit.toeic.service.impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.toeic.domain.dto.ToeicDto;
import site.toeicdoit.toeic.domain.model.mysql.ToeicModel;
import site.toeicdoit.toeic.domain.vo.Messenger;
import site.toeicdoit.toeic.repository.ToeicRepository;
import site.toeicdoit.toeic.service.ToeicService;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class ToeicServiceImpl implements ToeicService {

    private final ToeicRepository toeicRepository;


    @Override
    public Messenger save(ToeicDto dto) {
        try {
            ToeicModel entity = dtoToEntity(dto);
            toeicRepository.save(entity);
            return Messenger.builder()
                    .message("Successfully saved")
                    .state(true)
                    .build();
        } catch (Exception e) {
            log.error("Error saving ToeicDto: ", e);
            return Messenger.builder()
                    .message("Error saving data")
                    .state(false)
                    .build();
        }
    }

    @Override
    public Messenger deleteById(Long id) {
        try {
            toeicRepository.deleteById(id);
            return Messenger.builder()
                    .message("Successfully deleted")
                    .state(true)
                    .build();
        } catch (Exception e) {
            log.error("Error deleting ToeicDto: ", e);
            return Messenger.builder()
                    .message("Error deleting data")
                    .state(false)
                    .build();
        }
    }

    @Override
    public Messenger modify(ToeicDto toeicDto) {
        try {
            Optional<ToeicModel> optionalEntity = toeicRepository.findById(toeicDto.getId());
            if (optionalEntity.isPresent()) {
                ToeicModel entity = optionalEntity.get();
                toeicRepository.save(entity);
                return Messenger.builder()
                        .message("Successfully modified")
                        .state(true)
                        .build();
            } else {
                return Messenger.builder()
                        .message("Data not found")
                        .state(false)
                        .build();
            }
        } catch (Exception e) {
            log.error("Error modifying ToeicDto: ", e);
            return Messenger.builder()
                    .message("Error modifying data")
                    .state(false)
                    .build();
        }
    }

    @Override
    public List<ToeicDto> findAllByUserId(Long userId) {
        return List.of();
    }

    @Override
    public List<ToeicDto> findAllByExam() {
        return toeicRepository.findAllByExam().stream()
                .map(this::entityToDto)
                .collect(Collectors.toList());
    }


    @Override
    public List<ToeicDto> findAllByTest() {
        return toeicRepository.findAllByTest().stream()
                .map(this::entityToDto)
                .collect(Collectors.toList());
    }

    @Override
    public List<ToeicDto> findAllByLevel(Long level) {
        return toeicRepository.findAllByLevel(level).stream()
                .map(this::entityToDto)
                .collect(Collectors.toList());
    }

    @Override
    public List<ToeicDto> findAllByPart(String part) {
        return toeicRepository.findAllByPart(part).stream()
                .map(this::entityToDto)
                .collect(Collectors.toList());
    }


    @Override
    public List<ToeicDto> findAll() {
        return toeicRepository.findAll().stream()
                .map(this::entityToDto)
                .collect(Collectors.toList());
    }

    @Override
    public Optional<ToeicDto> findById(Long id) {
        return toeicRepository.findById(id)
                .map(this::entityToDto);
    }

    @Override
    public Boolean existsById(Long id) {
        return toeicRepository.existsById(id);
    }
}
