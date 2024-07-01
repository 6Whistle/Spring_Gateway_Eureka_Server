package site.toeicdoit.tx.service;


import site.toeicdoit.tx.domain.vo.Messenger;
import site.toeicdoit.tx.domain.dto.SubscribeDto;
import site.toeicdoit.tx.domain.model.SubscribeModel;
import site.toeicdoit.tx.domain.model.UserModel;

public interface SubscribeService {

    default SubscribeModel dtoToEntity(SubscribeDto dto) {
        return SubscribeModel.builder()
                .id(dto.getId())
                .userId(UserModel.builder().id(dto.getUserId()).build())
                .createdAt(dto.getCreatedAt())
                .endDate(dto.getEndDate())
                .subscribeState(dto.getSubscribeState())
                .build();

    }


    Messenger save(SubscribeDto dto);
}
