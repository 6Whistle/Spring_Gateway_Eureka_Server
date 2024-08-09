package site.toeicdoit.user.domain.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import site.toeicdoit.user.domain.model.mysql.CalendarModel;
import site.toeicdoit.user.domain.vo.Role;
import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@JsonInclude(JsonInclude.Include.NON_NULL)
public class UserDto {
    private Long id;
    private String email;
    private String password;
    private String name;
    private String profile;
    private String phone;
    private Integer toeicLevel;
    private String registration;
    private List<Role> roles;
    private String oauthId;
    private List<CalendarDto> calendarId;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS")
    private LocalDateTime createdAt;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS")
    private LocalDateTime updatedAt;
}
