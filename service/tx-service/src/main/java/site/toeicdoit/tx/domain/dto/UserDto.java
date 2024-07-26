package site.toeicdoit.tx.domain.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;
import site.toeicdoit.tx.domain.vo.Registration;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class UserDto {
    private Long id;
    private String email;
    private String password;
    private String profile;
    private String name;
    private String phone;
    private String createdAt;
    private String updatedAt;
    private Integer toeicLevel;
    private Registration registration;
}
