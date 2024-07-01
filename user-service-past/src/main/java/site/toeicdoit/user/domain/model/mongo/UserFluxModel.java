package site.toeicdoit.user.domain.model.mongo;

import jakarta.persistence.*;
import lombok.*;
import site.toeicdoit.user.domain.vo.Role;

import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;

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
