package site.toeicdoit.tx.domain.dto;

import com.querydsl.core.annotations.QueryProjection;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

@Component
@NoArgsConstructor
@Data
@Builder
public class CalendarDto {
    private Long id;
    private String title;
    private boolean isAllDay;
    private Long userId;
    private LocalDateTime startTime;
    private LocalDateTime endTime;


    @QueryProjection
    public CalendarDto(Long id, String title, boolean isAllDay, Long userId, LocalDateTime startTime, LocalDateTime endTime) {

        this.id = id;
        this.title = title;
        this.isAllDay = isAllDay;
        this.userId = userId;
        this.startTime = startTime;
        this.endTime = endTime;


    }

    public void incrementStartTimeAndEndTimeByOneDay() {
        if (this.startTime  != null) {
            this.startTime = this.startTime.plusDays(1);
        }
        if (this.endTime != null) {
            this.endTime = this.endTime.plusDays(1);
        }

    }

    public void increaseStartTimeAndEndTimeByHour() {
        if (this.startTime != null) {
            this.startTime = this.startTime.plusHours(7);
        }
        if (this.endTime != null) {
            this.endTime = this.endTime.plusHours(7);
        }
    }
}
