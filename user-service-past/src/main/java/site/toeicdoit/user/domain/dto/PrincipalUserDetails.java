package site.toeicdoit.user.domain.dto;

import java.util.Map;

import lombok.Getter;
import site.toeicdoit.user.domain.model.mysql.UserModel;

@Getter
public class PrincipalUserDetails {
    private UserModel user;
    private Map<String, Object> attributes;

    public PrincipalUserDetails(UserModel user) {
        this.user = user;
    }

    public PrincipalUserDetails(UserModel user, Map<String, Object> attributes) {
        this.user = user;
        this.attributes = attributes;
    }
}
