package site.toeicdoit.toeic.service.Impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.toeic.domain.dto.ResultDto;
import site.toeicdoit.toeic.domain.dto.ToeicDto;
import site.toeicdoit.toeic.domain.model.mysql.ResultModel;
import site.toeicdoit.toeic.domain.vo.Messenger;
import site.toeicdoit.toeic.repository.ResultRepository;
import site.toeicdoit.toeic.service.ResultService;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class ResultServiceImpl implements ResultService {

    private final ResultRepository resultRepository;



    @Override
    public Messenger save(ToeicDto dto) {
        return null;
    }

    @Override
    public Messenger save(ResultDto dto) {
        ResultModel entity = dtoToEntity(dto);
        resultRepository.save(entity);
        return Messenger.builder()
                .message("Result saved successfully")
                .data(entityToDto(entity))
                .build();

    }

    @Override
    public Messenger deleteById(Long id) {
        return null;
    }

    @Override
    public Messenger modify(ResultDto resultDto) {
        return null;
    }

    @Override
    public List<ResultDto> findAll() {
        return List.of();
    }

    @Override
    public Optional<ResultDto> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public Boolean existsById(Long id) {
        return null;
    }
}
