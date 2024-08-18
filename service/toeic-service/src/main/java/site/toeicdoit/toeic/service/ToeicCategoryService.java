package site.toeicdoit.toeic.service;

import site.toeicdoit.toeic.domain.dto.ToeicCategoryDto;
import site.toeicdoit.toeic.domain.model.mysql.ToeicCategoryModel;

import java.util.List;

public interface ToeicCategoryService extends QueryService<ToeicCategoryDto>, CommandService<ToeicCategoryDto> {


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


}
