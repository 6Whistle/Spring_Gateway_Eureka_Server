package site.toeicdoit.user.domain.vo;

import lombok.AllArgsConstructor;
import java.util.stream.Stream;

@AllArgsConstructor
public enum Role {
    USER(0), ADMIN(1), SUPER_ADMIN(2);

    private int roleCode;

    public static Role getRoleCode(int roleCode) {
        return Stream.of(values()).filter(i -> i.roleCode == roleCode).findFirst().orElse(null);
    }
}
