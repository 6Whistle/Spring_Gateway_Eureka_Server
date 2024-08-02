package site.toeicdoit.user.domain.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.*;
import site.toeicdoit.user.domain.vo.Role;
import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserDto {

    private Long id;

    // 아래 어노테이션은 이건 함 봐야할 듯
    @NotBlank(message = "사용자 이메일을 입력해주세요.")
    @Email(message = "이메일 형식에 맞지 않습니다.")
    private String email;

    // 아래 어노테이션은 이건 함 봐야할 듯
    @NotBlank
    @Pattern(regexp="(?=.*[0-9])(?=.*[a-zA-Z])(?=.*\\W)(?=\\S+$).{8,20}",
            message = "비밀번호는 영문 대,소문자와 숫자, 특수기호가 적어도 1개 이상씩 포함된 8자 ~ 20자의 비밀번호여야 합니다.")
    private String password;

    // 아래 어노테이션은 이건 함 봐야할 듯
    @NotBlank(message = "사용자 이름을 입력해주세요.")
    @Size(min = 2, max = 15, message = "사용자 이름은 15글자 이하로 입력해야 합니다.")
    private String name;

    private String profile;
    private String phone;
    private Integer toeicLevel;
    private String registration;
    private List<Role> roles;
    private String oauthId;


    private Long calendarId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    private String newPassword;
    private String updateKeyword;
    private String updateInfo;

}
