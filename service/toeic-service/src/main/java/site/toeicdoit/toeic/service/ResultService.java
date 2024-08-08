package site.toeicdoit.toeic.service;

import site.toeicdoit.toeic.domain.dto.ResultDto;
import site.toeicdoit.toeic.domain.dto.ToeicDto;
import site.toeicdoit.toeic.domain.model.mysql.ResultModel;
import site.toeicdoit.toeic.domain.vo.Messenger;

public interface ResultService extends QueryService<ResultDto>, CommandService<ResultDto> {

    default ResultModel dtoToEntity(ResultDto dto) {
        return ResultModel.builder()
                .id(dto.getId())
                .score(dto.getScore())
                .rcScore(dto.getRcScore())
                .lcScore(dto.getLcScore())
                .timeElapsed(dto.getTimeElapsed())  // Corrected spelling
                .userAnswer(dto.getUserAnswer())
                .build();
    }

    default ResultDto entityToDto(ResultModel entity) {
        return ResultDto.builder()
                .id(entity.getId())
                .score(entity.getScore())
                .rcScore(entity.getRcScore())
                .lcScore(entity.getLcScore())
                .timeElapsed(entity.getTimeElapsed())  // Corrected spelling
                .userAnswer(entity.getUserAnswer())
                .build();
    }

    Messenger save(ToeicDto dto);

    // Ensure ResultDto save method is defined here
    Messenger save(ResultDto dto);
}
