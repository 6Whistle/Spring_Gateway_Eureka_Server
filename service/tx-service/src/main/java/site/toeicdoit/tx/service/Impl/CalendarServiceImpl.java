package site.toeicdoit.tx.service.Impl;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import site.toeicdoit.tx.domain.dto.CalendarDto;
import site.toeicdoit.tx.domain.model.CalendarModel;
import site.toeicdoit.tx.domain.model.UserModel;
import site.toeicdoit.tx.domain.vo.ExceptionStatus;
import site.toeicdoit.tx.exception.TxException;
import site.toeicdoit.tx.repository.CalendarRepository;
import site.toeicdoit.tx.domain.vo.Messenger;
import site.toeicdoit.tx.service.CalendarService;


import java.util.List;
import java.util.Optional;

@Log4j2
@Service
@RequiredArgsConstructor
public class CalendarServiceImpl implements CalendarService {

    private final CalendarRepository repo;


    @Override
    public Messenger add(CalendarDto dto) {
        // DB에서 같은 제목, 사용자 ID를 가진 모든 일정 데이터를 가져옴
        List<CalendarModel> existingCalendars = repo.findByTitleAndUserId(dto.getTitle(), UserModel.builder().id(dto.getUserId()).build());

        // 모든 일정 데이터를 반복하면서 중복 여부를 확인
        // DTO의 startTime에서 월과 일을 추출
        int dtoMonth = dto.getStartTime().getMonthValue();
        int dtoDay = dto.getStartTime().getDayOfMonth();


        // 중복 체크를 위한 플래그
        boolean isDuplicate = existingCalendars.stream()
                .anyMatch(calendar -> {
                    int calendarMonth = calendar.getStartTime().getMonthValue();
                    int calendarDay = calendar.getStartTime().getDayOfMonth();
                    return calendarMonth == dtoMonth && calendarDay == dtoDay;
                });

        if (isDuplicate) {
            throw new IllegalArgumentException("이미 같은 날짜에 일정이 있습니다.");
        }


        repo.save(dtoToEntity(dto));
        return Messenger.builder()
                .state(Boolean.TRUE)
                .build();
    }

    @Override
    public Messenger save(List<CalendarDto> calendarDto) {



        for (CalendarDto dto : calendarDto) {
            if (dto.getStartTime() == null || dto.getEndTime() == null || dto.getTitle().isEmpty()) {
                throw new TxException(ExceptionStatus.INVALID_INPUT, "시작 시간과 종료 시간과 제목을 입력해주세요.");
            }
            if (dto.getStartTime().isAfter(dto.getEndTime())) {
                throw new TxException(ExceptionStatus.INVALID_INPUT, "시작 시간이 종료 시간보다 늦을 수 없습니다.");
            }

            if (dto.isAllDay()){
                dto.incrementStartTimeAndEndTimeByOneDay();}
            else {
                dto.increaseStartTimeAndEndTimeByHour();
            }
        }

        List<CalendarModel> savedModels = calendarDto.stream()
                .map(this::dtoToEntity)
                .map(repo::save)
                .toList();

        boolean allSuccess = savedModels.size() == calendarDto.size();
        if (!allSuccess) {
            throw new TxException(ExceptionStatus.INVALID_INPUT, "일정 저장에 실패했습니다.");
        }

        return Messenger.builder()
                .state(Boolean.TRUE)
                .build();
    }

    @Override
    public Messenger delete(Long id) {
        if (existsById(id)){;
            repo.deleteById(id);}
        else {
            throw new TxException(ExceptionStatus.NOT_FOUND, "존재하지 않는 id 입니다.");
        }
        return Messenger.builder()
                .state(Boolean.TRUE)
                .build();
    }


    @Override
    public Messenger save(CalendarDto calendarDto) {
        return null;
    }

    @Override
    public Messenger deleteById(Long id) {
        return null;
    }

    @Override
    public Messenger modify(CalendarDto calendarDto) {
        return null;
    }

    @Override
    public List<CalendarDto> findAll() {
        return List.of();
    }

    @Override
    public Optional<CalendarDto> findById(Long id) {
        return repo.findById(id).map(i -> entityToDto(i));
    }

    @Override
    public Messenger count() {
        return null;
    }

    @Override
    public Boolean existsById(Long id) {
        return repo.existsById(id);
    }

    @Override
    public List<CalendarDto> findAllByUserId(Long userId) {
        if (userId == null) {
            throw new TxException(ExceptionStatus.INVALID_INPUT, "존재하지 않는 사용자 ID 입니다.");
        }
        return repo.findCalendarByUserId(userId).stream().map(i -> entityToDto(i)).peek(System.out::println).toList();
    }
}
