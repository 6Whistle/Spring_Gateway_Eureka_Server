package site.toeicdoit.gateway.domain.model;

import lombok.Builder;
import site.toeicdoit.gateway.domain.vo.Registration;

import java.util.Map;

@Builder
public record OAuth2UserDTO(
        String id,
        String name,
        String email,
        String profile
) {

    public static OAuth2UserDTO of(Registration registrationId, Map<String, Object> attributes) {
        return switch (registrationId) { // registration id별로 userInfo 생성
            case GOOGLE -> ofGoogle(attributes);
//            case "kakao" -> ofKakao(attributes);
            default -> null;
        };
    }

    private static OAuth2UserDTO ofGoogle(Map<String, Object> attributes) {
        return OAuth2UserDTO.builder()
                .id((String) attributes.get("sub"))
                .name((String) attributes.get("name"))
                .email((String) attributes.get("email"))
                .profile((String) attributes.get("picture"))
                .build();
    }
}