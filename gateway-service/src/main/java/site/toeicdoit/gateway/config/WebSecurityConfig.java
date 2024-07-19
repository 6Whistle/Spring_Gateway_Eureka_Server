package site.toeicdoit.gateway.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.oauth2.client.registration.ReactiveClientRegistrationRepository;
import org.springframework.security.oauth2.client.web.server.DefaultServerOAuth2AuthorizationRequestResolver;
import org.springframework.security.oauth2.client.web.server.ServerOAuth2AuthorizationRequestResolver;
import org.springframework.security.web.server.SecurityWebFilterChain;
import org.springframework.security.web.server.context.NoOpServerSecurityContextRepository;

import lombok.RequiredArgsConstructor;
import site.toeicdoit.gateway.handler.CustomAuthenicationFailureHandler;
import site.toeicdoit.gateway.handler.CustomAuthenticationSuccessHandler;

@Configuration
@EnableWebFluxSecurity
@RequiredArgsConstructor
public class WebSecurityConfig {
    private final CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler;
    private final CustomAuthenicationFailureHandler customAuthenicationFailureHandler;
    private final ReactiveClientRegistrationRepository reactiveClientRegistrationRepository;

    @Bean
    public ServerOAuth2AuthorizationRequestResolver serverOAuth2AuthorizationRequestResolver() {
        return new DefaultServerOAuth2AuthorizationRequestResolver(reactiveClientRegistrationRepository);
    }


    @Bean
    public SecurityWebFilterChain securityWebFilterChain(ServerHttpSecurity http) {
        return http
            .authorizeExchange(authorize -> 
                authorize.anyExchange().permitAll()
            )
            .securityContextRepository(NoOpServerSecurityContextRepository.getInstance())
            .httpBasic(i -> i.disable())
            .csrf(i -> i.disable())
            .formLogin(i -> i.disable())
            .oauth2Login(oauth -> oauth
                .authorizationRequestResolver(serverOAuth2AuthorizationRequestResolver())
                .authenticationSuccessHandler(customAuthenticationSuccessHandler)
                .authenticationFailureHandler(customAuthenicationFailureHandler)
            )
            .build();
    }
}
