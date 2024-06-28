package site.toeicdoit.chat.domain.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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
