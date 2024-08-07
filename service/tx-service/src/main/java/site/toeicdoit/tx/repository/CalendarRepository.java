package site.toeicdoit.tx.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import site.toeicdoit.tx.domain.model.UserModel;
import site.toeicdoit.tx.repository.dsl.CalendarDao;
import site.toeicdoit.tx.domain.model.CalendarModel;


import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public interface CalendarRepository extends JpaRepository<CalendarModel, Long> , CalendarDao {


//    @Query("select c from calendars c where c.userId.id = :userId")
//    List<CalendarModel> getCalendarByUserId(@Param("userId") UserModel userId);

    boolean existsByTitleAndIsAllDayAndStartTimeAndUserId(String title, boolean isAllDay, LocalDateTime startTime, UserModel userId);

    List<CalendarModel> findByUserId(UserModel userId);


    List<CalendarModel> findByTitleAndUserId(String title, UserModel userId);


}
