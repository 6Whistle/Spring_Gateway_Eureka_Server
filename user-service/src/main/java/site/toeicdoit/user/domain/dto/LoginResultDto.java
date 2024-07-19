package site.toeicdoit.user.domain.dto;

import lombok.*;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class LoginResultDto {
    private UserDto user;
}
