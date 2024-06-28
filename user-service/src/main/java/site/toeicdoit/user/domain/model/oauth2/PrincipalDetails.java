package site.toeicdoit.user.domain.model.oauth2;

import lombok.extern.log4j.Log4j2;
import site.toeicdoit.user.domain.model.jpa.UserModel;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import java.util.Collection;
import java.util.Map;

@Log4j2
public record PrincipalDetails (
        UserModel user, // user에 저장된 객체 값
        Map<String, Object> attributes, // 구글 로그인한 속성 값들
        String attributeKey) implements OAuth2User, UserDetails {

    @Override
    public String getName() {
        log.info("::attributes.get(attributeKey).toString() 내용: "+attributes.get(attributeKey).toString());
        return attributes.get(attributeKey).toString();
    }

    @Override
    public Map<String, Object> getAttributes() {
        log.info("::attributes 내용: "+attributes);
        return attributes;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
//        log.info("::user.getRole(): "+Collections.singletonList(
//                new SimpleGrantedAuthority(user())));
        return user.getRoleModels().stream().map(i -> new SimpleGrantedAuthority("ROLE_" + i.getRole().name())).toList();
    }

    @Override
    public String getPassword() {
        return null;
    }

    @Override
    public String getUsername() {
//        log.info("::user.getuserKey() 내용: "+user.getuserKey());
        return user.getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}