package site.toeicdoit.gateway.router;

import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.config.UriConfiguration;

@Configuration
@RestController
@EnableConfigurationProperties(UriConfiguration.class)
public class GatewayRouter {
  @Bean
    public RouteLocator myRoutes(RouteLocatorBuilder builder) {
        return builder.routes()
            .route(p -> p
                .path("/get")
                .filters(f -> f.addRequestHeader("Hello", "World"))
                .uri("http://httpbin.org:80"))
            .route(p -> p
                    .host("*.circuitbreaker.com")
                    .filters(f -> f.circuitBreaker(config -> config
                            .setName("mycmd")
                            .setFallbackUri("forward:/fallback")))
                    .uri("http://httpbin.org:80"))
            .build();
           
    }
    @RequestMapping("/fallback")
    public Mono<String> fallback(Throwable e) {
        return Mono.just("fallback Method from GatewayRouter , error is "+ e.getMessage());
    }
}
