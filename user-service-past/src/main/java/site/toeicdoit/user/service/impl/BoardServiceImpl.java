package site.toeicdoit.user.service.impl;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import site.toeicdoit.user.domain.dto.BoardDto;
import site.toeicdoit.user.domain.model.jpa.BoardModel;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.repository.jpa.BoardRepository;
import site.toeicdoit.user.service.BoardService;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

    private final BoardRepository repository;

    @Transactional
    @Override
    public Messenger save(BoardDto dto) {
        log.info("BoardModel save Impl: {}", dto);
        BoardModel result = repository.save(dtoToEntity(dto));
        System.out.println((result instanceof BoardModel) ? "SUCCESS" : "FAILURE");
        return Messenger.builder()
                .message((result instanceof BoardModel) ? "SUCCESS" : "FAILURE")
                .build();
    }

    @Override
    public Messenger deleteById(Long id) {
        log.info("deleteById Impl: " + id);
        // Check if the user exists before attempting to delete
        if (repository.existsById(id)) {
            repository.deleteById(id); // This will now trigger cascading deletes
            return Messenger.builder().message("SUCCESS").build();
        } else {
            return Messenger.builder().message("FAILURE").build();
        }

    }

    @Transactional
    @Override
    public Messenger modify(BoardDto dto) {
        log.info("BoardModel modify Impl: {}", dto);
        BoardModel ent = dtoToEntity(dto);
        Long id = dto.getId();
        String title = dto.getTitle();
        String content = dto.getContent();

        System.out.println((ent instanceof BoardModel) ? "SUCCESS" : "FAILURE");
        return Messenger.builder()
                .message((ent instanceof BoardModel) ? "SUCCESS" : "FAILURE")
                .build();
    }

    @Override
    public List<BoardDto> findAll() {
        return repository.findAll().stream().map(i -> entityToDto(i)).toList();
    }

    @Override
    public Optional<BoardDto> findById(Long id) {
        log.info("BoardModel findById Impl: {}", id);
        return repository.findById(id).map(i -> entityToDto(i));
    }


    @Override
    public Boolean existsById(Long id) {
        return repository.existsById(id);
    }

}
