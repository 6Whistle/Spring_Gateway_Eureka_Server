package site.toeicdoit.chat.domain.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * UserFluxModel
 * <p>User Flux Model</p>
 * <p>User Data Model for MongoDB</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see BaseFluxModel
 */
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Document
public class UserFluxModel extends BaseFluxModel{
    @Id
    private String id;
    @Indexed(unique = true)
    private String email;
    private String profile;
    private String name;
}
