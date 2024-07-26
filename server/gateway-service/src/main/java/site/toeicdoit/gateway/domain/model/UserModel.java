package site.toeicdoit.gateway.domain.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
import site.toeicdoit.gateway.domain.vo.Registration;
import site.toeicdoit.gateway.domain.vo.Role;

@Getter
@Builder
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class UserModel {
    private String id;
    private String email;
    private String name;
    private List<Role> roles;
    private Registration registration;
}
