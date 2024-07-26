package site.toeicdoit.gateway.config;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.oauth2.client.registration.ReactiveClientRegistrationRepository;
import org.springframework.security.oauth2.client.web.server.DefaultServerOAuth2AuthorizationRequestResolver;
import org.springframework.security.oauth2.client.web.server.ServerOAuth2AuthorizationRequestResolver;
import org.springframework.security.web.server.SecurityWebFilterChain;
import org.springframework.security.web.server.context.NoOpServerSecurityContextRepository;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.reactive.CorsConfigurationSource;
import org.springframework.web.cors.reactive.UrlBasedCorsConfigurationSource;

import lombok.RequiredArgsConstructor;
import site.toeicdoit.gateway.handler.CustomAuthenicationFailureHandler;
import site.toeicdoit.gateway.handler.CustomAuthenticationSuccessHandler;

/**
 * WebSecurityConfig
 * @since 2024-07-22
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see EnableWebFluxSecurity
 * @see CustomAuthenticationSuccessHandler
 * @see CustomAuthenicationFailureHandler
 * @see ReactiveClientRegistrationRepository
 * @see ServerOAuth2AuthorizationRequestResolver
 * @see SecurityWebFilterChain
 * @see CorsConfigurationSource
 */
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
            .cors(i -> i.configurationSource(configurationSource()))
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

    @Bean
    public CorsConfigurationSource configurationSource() {
        CorsConfiguration config = new CorsConfiguration();
        config.setAllowedOriginPatterns(List.of("http://localhost:3000", "http://toeicdoit.site"));
        config.setAllowedMethods(List.of("GET", "POST", "PUT", "DELETE", "OPTIONS"));
        config.setAllowedHeaders(List.of("*"));
        config.setAllowCredentials(true);

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", config);
        return source;
    }
}
