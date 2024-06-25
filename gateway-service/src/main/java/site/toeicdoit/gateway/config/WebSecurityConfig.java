package site.toeicdoit.gateway.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.web.server.SecurityWebFilterChain;

@Configuration
@EnableWebFluxSecurity
public class WebSecurityConfig {
    @Bean
    public SecurityWebFilterChain securityWebFilterChain(ServerHttpSecurity http) {
        return http
            .authorizeExchange(authorize -> 
                authorize.anyExchange().permitAll()
            )
            .httpBasic(i -> i.disable())
            .csrf(i -> i.disable())
            .cors(i -> i.disable())
            .formLogin(i -> i.disable())
            .logout(i -> i.disable())
            .build();
    }
}
