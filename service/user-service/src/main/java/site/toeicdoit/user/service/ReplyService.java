package site.toeicdoit.user.service;

import site.toeicdoit.user.domain.dto.ReplyDto;
import site.toeicdoit.user.domain.model.mysql.BoardModel;
import site.toeicdoit.user.domain.model.mysql.ReplyModel;
import site.toeicdoit.user.domain.model.mysql.UserModel;

import java.util.List;

public interface ReplyService extends CommandService<ReplyDto> {

    default ReplyModel dtoToEntity(ReplyDto dto) {
        return ReplyModel.builder()
                .content(dto.getContent())
                .userId(UserModel.builder().id(dto.getUserId()).build())
                .boardId(BoardModel.builder().id(dto.getBoardId()).build())
                .build();
    }

    default ReplyDto entityToDto(ReplyModel model) {
        return ReplyDto.builder()
                .id(model.getId())
                .content(model.getContent())
                .writerName(model.getUserId().getName())
                .userId(model.getUserId().getId())
                .boardId(model.getBoardId().getId())
                .createdAt(model.getCreatedAt())
                .updatedAt(model.getUpdatedAt())
                .build();
    }

    List<ReplyDto> findAllByBoardId(Long boardId);
    List<ReplyDto> findAllByUserId(Long userId);
}
