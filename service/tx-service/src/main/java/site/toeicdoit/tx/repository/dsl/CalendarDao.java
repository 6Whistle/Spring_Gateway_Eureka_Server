package site.toeicdoit.tx.repository.dsl;



import site.toeicdoit.tx.domain.model.CalendarModel;

import java.util.List;

public interface CalendarDao {
    List<CalendarModel> getCalendarByUserId(Long userId);
}
