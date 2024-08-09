package site.toeicdoit.user.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import site.toeicdoit.user.domain.dto.BoardDto;
import site.toeicdoit.user.domain.dto.ReplyDto;
import site.toeicdoit.user.domain.model.BoardModel;
import site.toeicdoit.user.domain.model.ReplyModel;
import site.toeicdoit.user.domain.model.UserModel;

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
                .replyIds(entity.getReplyIds() != null ? entity.getReplyIds().stream().map(this::replyToDto).toList() : null)
                .createdAt(entity.getCreatedAt())
                .updatedAt(entity.getUpdatedAt())
                .build();
    }

    default ReplyDto replyToDto(ReplyModel model) {
        return ReplyDto.builder()
                .id(model.getId())
                .content(model.getContent())
                .writerName(model.getUserId().getName())
                .userId(model.getUserId().getId())
                .boardId(model.getBoardId().getId())
                .build();
    }

    Page<BoardDto> findBy(String title, String type, String category, Long userId, Pageable pageable);
    BoardDto modify(BoardDto dto);
}
