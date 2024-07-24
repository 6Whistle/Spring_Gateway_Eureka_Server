package site.toeicdoit.toeic.domain.vo;

import lombok.AllArgsConstructor;
import java.util.stream.Stream;

@AllArgsConstructor
public enum Role {
    ROLE_USER(0), ROLE_ADMIN(1);

    private int roleCode;

    public static Role getRoleCode(int roleCode) {
        return Stream.of(values()).filter(i -> i.roleCode == roleCode).findFirst().orElse(null);
    }
}
