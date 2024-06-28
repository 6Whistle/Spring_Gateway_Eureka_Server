package site.toeicdoit.user.domain.dto;


import lombok.*;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class UserDto {

    private Long id;
    private String email;
    private String password;
    private String profile;
    private String name;
    private String nickName;
    private String phone;

    private String createdAt;
    private String updatedAt;

}
