package site.toeicdoit.gateway.domain.model;

import lombok.Builder;
import site.toeicdoit.gateway.domain.vo.Registration;

import java.util.Map;

@Builder
public record OAuth2UserInfo(
        String id,
        String name,
        String email,
        String profile
) {

    public static OAuth2UserInfo of(Registration registrationId, Map<String, Object> attributes) {
        return switch (registrationId) { // registration id별로 userInfo 생성
            case GOOGLE -> ofGoogle(attributes);
//            case "kakao" -> ofKakao(attributes);
            default -> null;
        };
    }

    private static OAuth2UserInfo ofGoogle(Map<String, Object> attributes) {
        return OAuth2UserInfo.builder()
                .id((String) attributes.get("sub"))
                .name((String) attributes.get("name"))
                .email((String) attributes.get("email"))
                .profile((String) attributes.get("picture"))
                .build();
    }
}