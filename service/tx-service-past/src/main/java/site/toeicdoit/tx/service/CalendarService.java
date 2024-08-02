package site.toeicdoit.tx.service;



import site.toeicdoit.tx.domain.dto.CalendarDto;
import site.toeicdoit.tx.domain.model.CalendarModel;
import site.toeicdoit.tx.domain.vo.Messenger;
import site.toeicdoit.tx.domain.model.UserModel;

import java.util.List;

public interface CalendarService extends CommandService<CalendarDto>, QueryService<CalendarDto> {

    default CalendarDto entityToDto(CalendarModel entity){
        return CalendarDto.builder()
                .id(entity.getId())
                .title(entity.getTitle())
                .isAllDay(entity.isAllDay())
                .userId(entity.getUserId().getId())
                .startTime(entity.getStartTime())
                .endTime(entity.getEndTime())
                .build();
    }

    default CalendarModel dtoToEntity(CalendarDto dto) {
        return CalendarModel.builder()
                .title(dto.getTitle())
                .isAllDay(dto.isAllDay())
                .userId(UserModel.builder().id(dto.getUserId()).build())
                .startTime(dto.getStartTime())
                .endTime(dto.getEndTime())
                .build();
    }
    Messenger save(List<CalendarDto> calendarDto);

    List<CalendarDto> getCalendarByUserId(Long userId);

    Messenger add(CalendarDto dto);
}
