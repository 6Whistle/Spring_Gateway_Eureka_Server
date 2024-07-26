package site.toeicdoit.tx.repository.dsl;

import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import site.toeicdoit.tx.domain.model.CalendarModel;
import site.toeicdoit.tx.domain.model.QCalendarModel;


import java.util.List;
@Repository
@RequiredArgsConstructor
public class CalendarDaoImpl implements CalendarDao {
    private final JPAQueryFactory queryFactory;



    @Override
    public List<CalendarModel> getCalendarByUserId(Long userId) {
        QCalendarModel calendar = QCalendarModel.calendarModel;

        return queryFactory.selectFrom(calendar)
                .where(calendar.userId.id.eq(userId))
                .fetch();
    }
}
