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

import java.util.List;
import java.util.Optional;
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
            resultModel.setToeicCategoryId(toeicCategoryModel);
            resultModel.setScore(String.valueOf(scoreResult.getTotalScore()));
            resultModel.setLcScore(String.valueOf(scoreResult.getLcScore()));
            resultModel.setRcScore(String.valueOf(scoreResult.getRcScore()));

            resultRepository.save(resultModel);

            return Messenger.builder()
                    .message("Successfully saved")
                    .state(true)
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

        for (ResultDto.ResultDataDto data : resultData) {
            Optional<ToeicModel> toeicModel = toeicRepository.findById(data.getToeicId());
            if (toeicModel.isPresent() && toeicModel.get().getAnswer().equals(data.getAnswer())) {
                int score = 5; // 점수 계산 로직에 맞게 수정
                totalScore += score;

                if (data.getPart() >= 1 && data.getPart() <= 4) {
                    lcScore += score;
                } else if (data.getPart() >= 5 && data.getPart() <= 7) {
                    rcScore += score;
                }
            }
        }

        return new ScoreResult(totalScore, lcScore, rcScore);
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

        public ScoreResult(int totalScore, int lcScore, int rcScore) {
            this.totalScore = totalScore;
            this.lcScore = lcScore;
            this.rcScore = rcScore;
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