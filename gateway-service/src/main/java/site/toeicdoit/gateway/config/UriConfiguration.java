package site.toeicdoit.gateway.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@ConfigurationProperties
public class UriConfiguration {
    private String httpbin = "http://httpbin.org:80";
}
