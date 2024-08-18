package site.toeicdoit.toeic.service;

import org.springframework.beans.factory.annotation.Autowired;
import site.toeicdoit.toeic.domain.dto.OptionDto;
import site.toeicdoit.toeic.domain.dto.ToeicCategoryDto;
import site.toeicdoit.toeic.domain.dto.ToeicDto;
import site.toeicdoit.toeic.domain.model.mysql.OptionModel;
import site.toeicdoit.toeic.domain.model.mysql.ToeicModel;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.domain.vo.Messenger;

import java.util.List;

public interface ToeicService extends QueryService<ToeicDto>, CommandService<ToeicDto> {

    default ToeicModel dtoToEntity(ToeicDto dto) {
        return ToeicModel.builder()
                .id(dto.getId())
                .level(dto.getLevel())
                .part(dto.getPart())
                .question(dto.getQuestion())
                .answer(dto.getAnswer())
                .image(dto.getImage())
                .description(dto.getDescription())
                .toeicCategoryId(dtoToEntity(dto.getToeicCategory())) // DTO의 카테고리 정보를 엔티티로 변환
                .optionId(dtoToEntity(dto.getOption())) // DTO의 옵션 정보를 엔티티로 변환
                .build();
    }


    default ToeicDto entityToDto(ToeicModel entity) {
        return ToeicDto.builder()
                .id(entity.getId())
                .level(entity.getLevel())
                .part(entity.getPart())
                .question(entity.getQuestion())
                .answer(entity.getAnswer())
                .image(entity.getImage())
                .description(entity.getDescription())
                .toeicCategory(entityToDto(entity.getToeicCategoryId()))
                .option(entityToDto(entity.getOptionId())) // 옵션 엔티티를 DTO로 변환
                .build();
    }


    default OptionModel dtoToEntity(OptionDto dto) {
        return OptionModel.builder()
                .id(dto.getId())
                .choice1(dto.getChoice1())
                .choice2(dto.getChoice2())
                .choice3(dto.getChoice3())
                .choice4(dto.getChoice4())
                .build();
    }

    default OptionDto entityToDto(OptionModel entity) {
        return OptionDto.builder()
                .id(entity.getId())
                .choice1(entity.getChoice1())
                .choice2(entity.getChoice2())
                .choice3(entity.getChoice3())
                .choice4(entity.getChoice4())
                .build();
    }
    default ToeicCategoryModel dtoToEntity(ToeicCategoryDto dto) {
        return ToeicCategoryModel.builder()
                .id(dto.getId())
                .title(dto.getTitle())
                .sound(dto.getSound())
                .testType(dto.getTestType())
                .take(dto.isTake())
                .build();
    }

    default ToeicCategoryDto entityToDto(ToeicCategoryModel entity) {

        return ToeicCategoryDto.builder()
                .id(entity.getId())
                .title(entity.getTitle())
                .sound(entity.getSound())
                .testType(entity.getTestType())
                .take(entity.isTake())
                .build();
    }

    Messenger save(ToeicDto dto);

    Messenger deleteById(Long id);

    Messenger modify(ToeicDto toeicDto);

    List<ToeicDto> findAllByUserId(Long userId);

    List<ToeicDto> findAllByExam();

    List<ToeicDto> findAllByTest();

    List<ToeicDto> findAllByLevel(Long level);

    List<ToeicDto> findAllByPart(String part);
}
