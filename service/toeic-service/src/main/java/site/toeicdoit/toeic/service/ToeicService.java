package site.toeicdoit.toeic.service;

import site.toeicdoit.toeic.domain.dto.OptionDto;
import site.toeicdoit.toeic.domain.dto.ToeicCategoryDto;
import site.toeicdoit.toeic.domain.dto.ToeicDto;
import site.toeicdoit.toeic.domain.model.mysql.OptionModel;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;
import site.toeicdoit.toeic.domain.model.mysql.ToeicModel;
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

                .createdAt(entity.getCreatedAt().toString())
                .updatedAt(entity.getUpdatedAt().toString())
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

    Messenger save(ToeicDto dto);


    List<ToeicDto> findAllByUserId(Long userId);


}
