package site.toeicdoit.user.service;

import site.toeicdoit.user.domain.dto.BoardDto;
import site.toeicdoit.user.domain.model.mysql.BoardModel;


public interface BoardService extends CommandService<BoardDto>, QueryService<BoardDto> {

    default BoardModel dtoToEntity(BoardDto dto) {
        return BoardModel.builder()
                .title(dto.getTitle())
                .content(dto.getContent())
//                .userId(UserModel.builder().id(dto.getUserId()).build())
                .type(dto.getType())
                .build();
    }

    default BoardDto entityToDto(BoardModel entity) {
        return BoardDto.builder()
                .id(entity.getId())
                .title(entity.getTitle())
                .content(entity.getContent())
//                .userId(entity.getUserId().getId())
                .createdAt(entity.getCreatedAt().toString())
                .updatedAt(entity.getUpdatedAt().toString())
                .type(entity.getType())
                .build();
    }

}
