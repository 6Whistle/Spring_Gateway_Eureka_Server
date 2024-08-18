package site.toeicdoit.toeic.service;

import site.toeicdoit.toeic.domain.dto.ResultDto;
import site.toeicdoit.toeic.domain.model.mysql.ResultModel;
import site.toeicdoit.toeic.domain.vo.Messenger;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public interface ResultService extends QueryService<ResultDto>, CommandService<ResultDto> {

    // DTO를 엔티티로 변환
    default ResultModel dtoToEntity(ResultDto dto) {
        String formattedUserAnswer = dto.getData().stream()
                .map(ResultDto.ResultDataDto::toString)
                .collect(Collectors.joining(", "));

        return ResultModel.builder()
                .id(dto.getId())
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
                .userAnswer(formattedUserAnswer)
                .build();
    }

    // 엔티티를 DTO로 변환
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
                .createdAt(entity.getCreatedAt())
                .updatedAt(entity.getUpdatedAt())
                .userAnswer(entity.getUserAnswer())
                .take(entity.getToeicCategoryId().isTake())
                .toeicCategoryId(entity.getToeicCategoryId() != null ? entity.getToeicCategoryId().getId() : null)
                .userId(entity.getUserId() != null ? entity.getUserId().getId() : null)
                .barData(List.of(
                        entity.getScorePart1(),
                        entity.getScorePart2(),
                        entity.getScorePart3(),
                        entity.getScorePart4(),
                        entity.getScorePart5(),
                        entity.getScorePart6(),
                        entity.getScorePart7()
                ))
                .lcAllScore(entity.getScore())
                .rcAllScore(entity.getScore())
                .build();
    }


    Messenger saveFromJson(String jsonData);

    Messenger save(ResultDto dto);

    Messenger evaluateAndSave(ResultDto resultDto);

    Messenger deleteById(Long id);

    Messenger modify(ResultDto resultDto);

    List<ResultDto> findAll();

    Optional<ResultDto> findById(Long id);

    Boolean existsById(Long id);

    Messenger saveChunk(String jsonData, int chunkIndex, int totalChunks);

    List<ResultDto> findByUserId(Long userId);

    List<Object[]> findScoreByUserId(Long userId, Long categoryId);

    Messenger getRecentResults(Long userId);
}
