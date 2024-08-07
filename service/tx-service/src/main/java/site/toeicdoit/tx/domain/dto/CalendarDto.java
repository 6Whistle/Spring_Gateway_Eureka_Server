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
}
