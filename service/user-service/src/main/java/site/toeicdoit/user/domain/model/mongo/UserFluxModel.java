package site.toeicdoit.user.domain.model.mongo;

import jakarta.persistence.Id;
import lombok.*;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Document
public class UserFluxModel extends BaseFluxModel {

    @Id
    private String id;

    @Indexed(unique = true)
    private String email;
    private String profile;
    private String name;
}
