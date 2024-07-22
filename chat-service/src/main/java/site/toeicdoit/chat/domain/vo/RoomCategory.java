package site.toeicdoit.chat.domain.vo;

import java.util.stream.Stream;

/**
 * Room Category
 * <p>Room Category Enum</p>
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 */
public enum RoomCategory {
    STUDY, FREE, WORK, ETC;

    /**
     * Mapping String to RoomCategory
     * @param value String
     * @return RoomCategory
     * @since 2024-07-22
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     */
    public static RoomCategory toRoomCategory(String value) {
        return Stream.of(values())
        .filter(i -> i.name().equals(value.toUpperCase()))
        .findAny()
        .orElseGet(() -> ETC)
        ;
    }
}
