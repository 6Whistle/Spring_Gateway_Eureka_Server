package site.toeicdoit.chat.domain.dto;

import java.util.List;

import lombok.Builder;
import lombok.Data;
import site.toeicdoit.chat.domain.vo.Role;

/**
 * UserDTO
 * <p>User Data Transfer Object</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
@Data
@Builder
public class UserDTO {
    private String id;
    private String email;
    private String password;
    private String profile;
    private String name;
    private List<Role> roles;
}
