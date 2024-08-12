package site.toeicdoit.toeic.service;

import site.toeicdoit.toeic.domain.dto.ResultDto;
import site.toeicdoit.toeic.domain.model.mysql.ResultModel;
import site.toeicdoit.toeic.domain.vo.Messenger;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public interface ResultService extends QueryService<ResultDto>, CommandService<ResultDto> {

    default ResultModel dtoToEntity(ResultDto dto) {
        String formattedUserAnswer = dto.getData().stream()
                .map(ResultDto.ResultDataDto::toString) // toString()을 사용하여 형식화
                .collect(Collectors.joining(", ")); // 구분자로 ", " 사용

        return ResultModel.builder()
                .id(dto.getId())
                .timeElapsed(dto.getTimeElapsed())
                .score(dto.getScore())
                .rcScore(dto.getRcScore())
                .lcScore(dto.getLcScore())
                .userAnswer(formattedUserAnswer) // 변환된 문자열 저장
                .build();
    }

    // 엔티티를 DTO로 변환하는 메소드
    default ResultDto entityToDto(ResultModel entity) {
        return ResultDto.builder()
                .id(entity.getId())
                .score(entity.getScore())
                .rcScore(entity.getRcScore())
                .lcScore(entity.getLcScore())
                .timeElapsed(entity.getTimeElapsed())
                .userAnswer(entity.getUserAnswer())
                .toeicCategoryId(entity.getToeicCategoryId() != null ? entity.getToeicCategoryId().getId() : null)
                .data(entity.getChildrenIds().stream()
                        .map(child -> ResultDto.ResultDataDto.builder()
                                .toeicId(child.getId())
                                .answer(child.getUserAnswer())
                                .build())
                        .collect(Collectors.toList()))
                .build();
    }

    Messenger saveFromJson(String jsonData); // JSON 데이터에서 저장하는 메소드

    Messenger save(ResultDto dto); // ResultDto 저장하는 메소드

    Messenger evaluateAndSave(ResultDto resultDto); // 평가 및 저장하는 메소드

    Messenger deleteById(Long id);

    Messenger modify(ResultDto resultDto);

    List<ResultDto> findAll();

    Optional<ResultDto> findById(Long id);

    Boolean existsById(Long id);
}
