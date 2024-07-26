package site.toeicdoit.tx.service.Impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import site.toeicdoit.tx.domain.vo.Messenger;
import site.toeicdoit.tx.domain.model.UserModel;
import site.toeicdoit.tx.service.SubscribeService;
import site.toeicdoit.tx.domain.dto.SubscribeDto;
import site.toeicdoit.tx.domain.model.SubscribeModel;
import site.toeicdoit.tx.repository.SubscribeRepository;


import java.time.LocalDateTime;
import java.util.List;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class SubscribeServiceImpl implements SubscribeService {
    private final SubscribeRepository subscribeRepository;
    @Transactional
    @Override
    public Messenger save(SubscribeDto dto) {
        if (dto.getSubscribeState() == null) {
            dto.setSubscribeState(false);
        }



        if (dto.getEndDate().isAfter(dto.getCreatedAt())) {
            dto.setSubscribeState(true);
            subscribeRepository.save(dtoToEntity(dto));
        } else {
            dto.setSubscribeState(false);

            return Messenger.builder()
                    .message("FAILURE")
                    .build();
        }

        Long id = subscribeRepository.findIdByendDate(dto.getEndDate());


        return Messenger.builder()
                .message("SUCCESS")
                .subscribeId(id)
                .build();
    }

    @Transactional
    public Messenger check(UserModel userId) {
        List<SubscribeModel> subscriptions = subscribeRepository.findAllByUserId(userId);
        boolean hasTrueSubscribe = false;

        // 각 구독 정보에 대해 조건을 적용합니다.
        for (SubscribeModel subscription : subscriptions) {
            // endDate가 현재 시간 이후이면 true로 설정하고 저장
            if (subscription.getEndDate().isAfter(LocalDateTime.now())) {
                subscription.setSubscribeState(true);
                hasTrueSubscribe = true;
            } else {
                subscription.setSubscribeState(false);
            }
            subscribeRepository.save(subscription); // 구독 정보를 업데이트
        }

        // 하나라도 true인 경우 "SUCCESS" 메시지를 반환
        if (hasTrueSubscribe) {
            return Messenger.builder()
                    .message("SUCCESS")
                    .build();
        } else {
            return Messenger.builder()
                    .message("FAILURE")
                    .build();
        }
    }
}
