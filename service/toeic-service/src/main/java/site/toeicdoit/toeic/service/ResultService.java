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

                .timeElapsed(dto.getTimeElapsed())
                .score(dto.getScore())
                .rcScore(dto.getRcScore())
                .lcScore(dto.getLcScore())
                .scorePart1(dto.getScorePart1())
                .scorePart2(dto.getScorePart2())
                .scorePart3(dto.getScorePart3())
                .scorePart4(dto.getScorePart4())
                .scorePart5(dto.getScorePart5())
                .scorePart6(dto.getScorePart6())
                .scorePart7(dto.getScorePart7())
                .userAnswer(formattedUserAnswer) // 변환된 문자열 저장
                .build();
    }

    default ResultDto entityToDto(ResultModel entity) {
        return ResultDto.builder()
                .id(entity.getId())
                .score(entity.getScore())
                .rcScore(entity.getRcScore())
                .lcScore(entity.getLcScore())
                .scorePart1(entity.getScorePart1())
                .scorePart2(entity.getScorePart2())
                .scorePart3(entity.getScorePart3())
                .scorePart4(entity.getScorePart4())
                .scorePart5(entity.getScorePart5())
                .scorePart6(entity.getScorePart6())
                .scorePart7(entity.getScorePart7())
                .timeElapsed(entity.getTimeElapsed())
                .userAnswer(entity.getUserAnswer())
                .toeicCategoryId(entity.getToeicCategoryId() != null ? entity.getToeicCategoryId().getId() : null)
                .userId(entity.getUserId() != null ? entity.getUserId().getId() : null)
                .barData(List.of(entity.getScorePart1(), entity.getScorePart2(), entity.getScorePart3(), entity.getScorePart4(), entity.getScorePart5(), entity.getScorePart6(), entity.getScorePart7()))
//                .createdAt(entity.getCreatedAt().toString())
//                .updatedAt(entity.getUpdatedAt().toString())
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

    Messenger saveChunk(String jsonData, int chunkIndex, int totalChunks);

    List<ResultDto> findByUserId(Long userId);
}
