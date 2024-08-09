package site.toeicdoit.user.domain.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OAuth2UserDto{
    private String id;
    private String name;
    private String email;
    private String profile;
}