package site.toeicdoit.user.domain.dto;

import lombok.*;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CalendarDto {
    private Long id;
    private String title;
    private boolean isAllDay;
    private LocalDateTime startTime;
    private LocalDateTime endTime;
    private Long userId;
}
