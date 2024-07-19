package site.toeicdoit.user.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import site.toeicdoit.user.domain.dto.BoardDto;
import site.toeicdoit.user.domain.model.mysql.BoardModel;
import site.toeicdoit.user.domain.model.mysql.UserModel;

import java.util.List;
import java.util.Optional;


public interface BoardService extends CommandService<BoardDto>, QueryService<BoardDto> {

    default BoardModel dtoToEntity(BoardDto dto) {
        return BoardModel.builder()
                .title(dto.getTitle())
                .content(dto.getContent())
                .userId(UserModel.builder().id(dto.getUserId()).build())
                .type(dto.getType())
                .category(dto.getCategory())
                .build();
    }

    default BoardDto entityToDto(BoardModel entity) {
        return BoardDto.builder()
                .id(entity.getId())
                .title(entity.getTitle())
                .content(entity.getContent())
                .userId(entity.getUserId().getId())
                .writerName(entity.getUserId().getName())
                .type(entity.getType())
                .category(entity.getCategory())
                .replyIds(entity.getReplyIds())
                .createdAt(entity.getCreatedAt().toString())
                .updatedAt(entity.getUpdatedAt().toString())
                .build();
    }

    Page<BoardDto> findAllByTypes(String type, Pageable pageable);
    List<BoardDto> findAllByUserId(Long id);
    List<BoardDto> findAllByEmail(String email);

}
