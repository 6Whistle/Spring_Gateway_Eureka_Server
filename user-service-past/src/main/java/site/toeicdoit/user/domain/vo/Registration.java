package site.toeicdoit.user.domain.vo;

import lombok.AllArgsConstructor;

import java.util.stream.Stream;

@AllArgsConstructor
public enum Registration {
    LOCAL("local"), GOOGLE("google");

    public final String name;

    public static Registration findByName(String name) {
        return Stream.of(values()).filter(r -> r.name.equals(name)).findFirst().orElse(null);
    }
}
