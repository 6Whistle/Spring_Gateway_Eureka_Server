package site.toeicdoit.tx.proxy;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.function.Supplier;

public class DateProxy {

    //get
    public static Supplier<LocalTime> getLocalTime = LocalTime::now;
    public static Supplier<LocalDate> getLocalDate = LocalDate::now;
    public static Supplier<LocalDateTime> getLocalDateTime = LocalDateTime::now;

    // String을 LocalDate로 변환
    public static LocalDate toLocalDate(String dateString) {
        DateTimeFormatter formatter = DateTimeFormatter.ISO_DATE_TIME;
        return LocalDate.parse(dateString, formatter);
    }



    // LocalDate를 String으로 변환
    public static String toString(LocalDate date) {
        DateTimeFormatter formatter = DateTimeFormatter.ISO_DATE;
        return date.format(formatter);
    }

}
