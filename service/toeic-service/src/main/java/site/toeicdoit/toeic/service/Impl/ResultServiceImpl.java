package site.toeicdoit.toeic.service.Impl;


import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
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
                // 모든 청크가 도착했으면 전체 데이터를 재조립하고 저장
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

            ScoreResult scoreResult = calculateScore(dto.getData());

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

            // user_answer 길이 제한 및 null 체크
            String userAnswer = dto.getUserAnswer();
            if (userAnswer != null && userAnswer.length() > 255) {
                userAnswer = userAnswer.substring(0, 255);
            }
            resultModel.setUserAnswer(userAnswer);
            Optional<ResultModel> existingResult = resultRepository.findByUserId_IdAndToeicCategoryId_IdAndId(
                    userModel.getId(), toeicCategoryModel.getId(), resultModel.getId());


            resultRepository.save(resultModel);


            return Messenger.builder()
                    .message("Successfully saved")
                    .state(true)
                    .data(entityToDto(resultModel))
                    .build();
        } catch (RuntimeException e) {
            log.error("Runtime exception: ", e);
            throw e; // 트랜잭션이 롤백되도록 명시적으로 예외를 던짐
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
            if (toeicModel.isPresent() && toeicModel.get().getAnswer().equals(data.getAnswer())) {
                int score = 5; // 점수 계산 로직에 맞게 수정
                totalScore += score;
                if (data.getPart() == 1) {
                    part1Score += score;
                } else if (data.getPart() == 2) {
                    part2Score += score;
                } else if (data.getPart() == 3) {
                    part3Score += score;
                } else if (data.getPart() == 4) {
                    part4Score += score;
                } else if (data.getPart() == 5) {
                    part5Score += score;
                } else if (data.getPart() == 6) {
                    part6Score += score;
                } else if (data.getPart() == 7) {
                    part7Score += score;

                }

                if (data.getPart() >= 1 && data.getPart() <= 4) {
                    lcScore += score;
                } else if (data.getPart() >= 5 && data.getPart() <= 7) {
                    rcScore += score;
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
        private final int totalScore;
        private final int lcScore;
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

        public int getTotalScore() {
            return totalScore;
        }

        public int getLcScore() {
            return lcScore;
        }

        public int getRcScore() {
            return rcScore;
        }


    }


}
