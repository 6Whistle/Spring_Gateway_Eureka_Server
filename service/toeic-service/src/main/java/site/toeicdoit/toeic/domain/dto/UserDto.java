package site.toeicdoit.toeic.domain.dto;


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
    private String phone;
    private Integer toeicLevel;
    private String registration;
    private String role;

    private Long calenderId;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

}
