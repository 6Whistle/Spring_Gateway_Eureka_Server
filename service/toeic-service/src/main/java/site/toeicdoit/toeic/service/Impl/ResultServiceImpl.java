package site.toeicdoit.toeic.service.impl;


import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.toeic.domain.dto.ResultDto;
import site.toeicdoit.toeic.domain.model.mysql.ResultModel;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.domain.model.mysql.ToeicModel;
import site.toeicdoit.toeic.domain.model.mysql.UserModel;
import site.toeicdoit.toeic.domain.vo.Messenger;
import site.toeicdoit.toeic.repository.ResultRepository;
import site.toeicdoit.toeic.repository.ToeicCategoryRepository;
import site.toeicdoit.toeic.repository.ToeicRepository;
import site.toeicdoit.toeic.repository.UserRepository;
import site.toeicdoit.toeic.service.ResultService;

import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class ResultServiceImpl implements ResultService {

    private final ResultRepository resultRepository;
    private final ObjectMapper objectMapper;
    private final ToeicCategoryRepository toeicCategoryRepository;
    private final UserRepository userRepository;
    private final ToeicRepository toeicRepository;

    private final Map<Integer, String> chunkStorage = new HashMap<>();
    private int totalChunks = 0;

    @Override
    public Messenger saveChunk(String jsonData, int chunkIndex, int totalChunks) {
        try {
            chunkStorage.put(chunkIndex, jsonData);
            this.totalChunks = totalChunks;

            if (chunkStorage.size() == totalChunks) {
                StringBuilder fullJsonData = new StringBuilder();
                for (int i = 0; i < totalChunks; i++) {
                    fullJsonData.append(chunkStorage.get(i));
                }
                chunkStorage.clear();
                return saveFromJson(fullJsonData.toString());
            } else {
                return Messenger.builder()
                        .message("Chunk received")
                        .state(true)
                        .build();
            }
        } catch (Exception e) {
            log.error("Error processing chunk: ", e);
            return Messenger.builder()
                    .message("Error processing chunk")
                    .state(false)
                    .build();
        }
    }

    @Override
    public List<ResultDto> findByUserId(Long userId) {
        return resultRepository.findByResultId(userId).stream()
                .map(this::entityToDto)
                .collect(Collectors.toList());
    }

    @Override
    public List<Object[]> findScoreByUserId(Long userId, Long categoryId) {
        return resultRepository.findByUserIdAndToeicCategoryId(userId, categoryId);
    }


    @Override
    public Messenger getRecentResults(Long userId) {
        List<Integer> exam = getRecentScores(userId, 1L);
        List<Integer> level = getRecentScores(userId, 3L);
        List<Integer> part = getRecentScores(userId, 4L);
        List<Integer> test = getRecentScores(userId, 2L);

        ResultDto.RecentResultsDto recentResultsDto = ResultDto.RecentResultsDto.builder()
                .exam(exam)
                .level(level)
                .part(part)
                .test(test)
                .build();

        ResultDto resultDto = ResultDto.builder()
                .userId(userId)
                .recentResults(recentResultsDto)
                .build();

        return Messenger.builder()
                .state(true)
                .message("Recent results retrieved successfully")
                .data(resultDto)
                .build();
    }

    private List<Integer> getRecentScores(Long userId, Long categoryId) {
        List<ResultModel> results = resultRepository.findByUserIdAndToeicCategoryId(
                userId, categoryId, PageRequest.of(0, 7, Sort.by(Sort.Direction.DESC, "updatedAt"))
        );

        return results.stream()
                .map(result -> {
                    try {
                        return Integer.parseInt(result.getScore());
                    } catch (NumberFormatException e) {
                        return 0;
                    }
                })
                .collect(Collectors.toList());
    }

    @Override
    public Messenger saveFromJson(String jsonData) {
        try {
            ResultDto resultDto = objectMapper.readValue(jsonData, ResultDto.class);
            return save(resultDto);
        } catch (Exception e) {
            log.error("Error parsing JSON data: ", e);
            return Messenger.builder()
                    .message("Error parsing JSON data")
                    .state(false)
                    .build();
        }
    }
    @Override
    public Messenger save(ResultDto dto) {
        try {
            UserModel userModel = userRepository.findById(dto.getUserId())
                    .orElseThrow(() -> new RuntimeException("User not found"));
            ToeicCategoryModel toeicCategoryModel = toeicCategoryRepository.findById(dto.getToeicCategoryId())
                    .orElseThrow(() -> new RuntimeException("ToeicCategory not found"));

            // 결과를 계산
            ScoreResult scoreResult = calculateScore(dto.getData());

            // ResultModel을 DTO에서 변환
            ResultModel resultModel = dtoToEntity(dto);
            resultModel.setUserId(userModel);
            resultModel.setScorePart1(String.valueOf(scoreResult.part1Score));
            resultModel.setScorePart2(String.valueOf(scoreResult.part2Score));
            resultModel.setScorePart3(String.valueOf(scoreResult.part3Score));
            resultModel.setScorePart4(String.valueOf(scoreResult.part4Score));
            resultModel.setScorePart5(String.valueOf(scoreResult.part5Score));
            resultModel.setScorePart6(String.valueOf(scoreResult.part6Score));
            resultModel.setScorePart7(String.valueOf(scoreResult.part7Score));
            resultModel.setToeicCategoryId(toeicCategoryModel);
            resultModel.setScore(String.valueOf(scoreResult.getTotalScore()));
            resultModel.setLcScore(String.valueOf(scoreResult.getLcScore()));
            resultModel.setRcScore(String.valueOf(scoreResult.getRcScore()));
            resultModel.setUpdatedAt(LocalDateTime.now());

            // 사용자 답안 처리
            String userAnswer = dto.getUserAnswer();
            if (userAnswer != null) {
                userAnswer = userAnswer.toUpperCase();
                if (userAnswer.length() > 255) {
                    userAnswer = userAnswer.substring(0, 255);
                }
            }
            resultModel.setUserAnswer(userAnswer);

            // 결과 저장
            resultRepository.save(resultModel);

            // ToeicCategory 업데이트
            toeicCategoryModel.setTake(true);
            toeicCategoryRepository.save(toeicCategoryModel);

            // 각 파트별 문제 수 계산
            Map<Integer, Long> partQuestionCounts = dto.getData().stream()
                    .collect(Collectors.groupingBy(ResultDto.ResultDataDto::getPart, Collectors.counting()));

            int lcAllScore = partQuestionCounts.entrySet().stream()
                    .filter(entry -> entry.getKey() >= 1 && entry.getKey() <= 4)
                    .mapToInt(entry -> (int) (entry.getValue() * 5))
                    .sum();

            int rcAllScore = partQuestionCounts.entrySet().stream()
                    .filter(entry -> entry.getKey() >= 5 && entry.getKey() <= 7)
                    .mapToInt(entry -> (int) (entry.getValue() * 5))
                    .sum();


            ResultDto updatedDto = entityToDto(resultModel);
            updatedDto.setTake(toeicCategoryModel.isTake());
            updatedDto.setLcAllScore(String.valueOf(lcAllScore));
            updatedDto.setRcAllScore(String.valueOf(rcAllScore));

            return Messenger.builder()
                    .message("Successfully saved")
                    .state(true)
                    .data(updatedDto)
                    .build();
        } catch (RuntimeException e) {
            log.error("Runtime exception: ", e);
            throw e;
        } catch (Exception e) {
            log.error("Error saving ResultDto: ", e);
            return Messenger.builder()
                    .message("Error saving data")
                    .state(false)
                    .build();
        }
    }


    private ScoreResult calculateScore(List<ResultDto.ResultDataDto> resultData) {
        int totalScore = 0;
        int lcScore = 0;
        int rcScore = 0;
        int part1Score = 0;
        int part2Score = 0;
        int part3Score = 0;
        int part4Score = 0;
        int part5Score = 0;
        int part6Score = 0;
        int part7Score = 0;

        for (ResultDto.ResultDataDto data : resultData) {
            Optional<ToeicModel> toeicModel = toeicRepository.findById(data.getToeicId());
            if (toeicModel.isPresent()) {
                String correctAnswer = toeicModel.get().getAnswer().toUpperCase();
                String userAnswer = data.getAnswer().toUpperCase();

                if (correctAnswer.equals(userAnswer)) {
                    int score = 5;
                    totalScore += score;

                    switch (data.getPart()) {
                        case 1:
                            part1Score += score / 5;
                            lcScore += score;
                            break;
                        case 2:
                            part2Score += score / 5;
                            lcScore += score;
                            break;
                        case 3:
                            part3Score += score / 5;
                            lcScore += score;
                            break;
                        case 4:
                            part4Score += score / 5;
                            lcScore += score;
                            break;
                        case 5:
                            part5Score += score / 5;
                            rcScore += score;
                            break;
                        case 6:
                            part6Score += score / 5;
                            rcScore += score;
                            break;
                        case 7:
                            part7Score += score / 5;
                            rcScore += score;
                            break;
                        default:
                            break;
                    }
                }
            }
        }
        return new ScoreResult(totalScore, lcScore, rcScore, part1Score, part2Score, part3Score, part4Score, part5Score, part6Score, part7Score);
    }



    @Override
    public Messenger deleteById(Long id) {
        try {
            if (resultRepository.existsById(id)) {
                resultRepository.deleteById(id);
                return Messenger.builder()
                        .message("Successfully deleted")
                        .state(true)
                        .build();
            } else {
                return Messenger.builder()
                        .message("No record found with id " + id)
                        .state(false)
                        .build();
            }
        } catch (Exception e) {
            log.error("Error deleting ResultModel with id {}: ", id, e);
            return Messenger.builder()
                    .message("Error deleting data")
                    .state(false)
                    .build();
        }
    }

    @Override
    public Messenger modify(ResultDto resultDto) {
        return null;
    }

    @Override
    public Messenger evaluateAndSave(ResultDto resultDto) {
        return null;
    }

    @Override
    public List<ResultDto> findAll() {
        return resultRepository.findAll().stream()
                .map(this::entityToDto)
                .collect(Collectors.toList());
    }

    @Override
    public Optional<ResultDto> findById(Long id) {
        return resultRepository.findById(id)
                .map(this::entityToDto);
    }

    @Override
    public Boolean existsById(Long id) {
        return resultRepository.existsById(id);
    }


    private static class ScoreResult {
        @Getter
        private final int totalScore;
        @Getter
        private final int lcScore;
        @Getter
        private final int rcScore;
        private final int part1Score;
        private final int part2Score;
        private final int part3Score;
        private final int part4Score;
        private final int part5Score;
        private final int part6Score;
        private final int part7Score;

        public ScoreResult(int totalScore, int lcScore, int rcScore, int part1Score, int part2Score, int part3Score, int part4Score, int part5Score, int part6Score, int part7Score) {
            this.totalScore = totalScore;
            this.lcScore = lcScore;
            this.rcScore = rcScore;
            this.part1Score = part1Score;
            this.part2Score = part2Score;
            this.part3Score = part3Score;
            this.part4Score = part4Score;
            this.part5Score = part5Score;
            this.part6Score = part6Score;
            this.part7Score = part7Score;

        }


    }


}
