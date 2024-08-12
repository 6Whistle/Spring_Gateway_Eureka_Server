package site.toeicdoit.toeic.service.Impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.toeicdoit.toeic.domain.dto.ToeicDto;
import site.toeicdoit.toeic.domain.vo.Messenger;
import site.toeicdoit.toeic.repository.ToeicRepository;
import site.toeicdoit.toeic.service.ToeicService;

import java.util.List;
import java.util.Optional;


@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class ToeicServiceImpl implements ToeicService {

    private final ToeicRepository toeicRepository;


    @Override
    public Messenger save(ToeicDto dto) {
        return null;
    }

    @Override
    public Messenger deleteById(Long id) {
        return null;
    }

    @Override
    public Messenger modify(ToeicDto toeicDto) {
        return null;
    }

    @Override
    public List<ToeicDto> findAllByUserId(Long userId) {
        return List.of();
    }

    @Override
    public List<ToeicDto> findAll() {
        return List.of();
    }

    @Override
    public Optional<ToeicDto> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public Boolean existsById(Long id) {
        return null;
    }
}


