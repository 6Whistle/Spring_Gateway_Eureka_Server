package site.toeicdoit.chat.domain.model;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import site.toeicdoit.chat.domain.vo.RoomCategory;

/**
 * RoomFluxModel
 * <p>Room Model을 MongoDB에 저장하기 위한 Model</p>
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see BaseFluxModel
 * @see RoomCategory
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
@Document
public class RoomFluxModel extends BaseFluxModel{
    @Id
    private String id;
    private String title;
    private List<RoomCategory> roomCategories;
    private List<String> adminIds;
    private List<String> memberIds;
}
