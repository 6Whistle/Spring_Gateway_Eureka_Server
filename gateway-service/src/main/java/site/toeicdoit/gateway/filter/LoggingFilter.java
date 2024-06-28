package site.toeicdoit.gateway.filter;

import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.OrderedGatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;

@Component
@Slf4j
public class LoggingFilter extends AbstractGatewayFilterFactory<LoggingFilter.Config> {    
    @Data
    public static class Config {
        private String baseMessage;
        private boolean preLogger;
        private boolean postLogger;
    }

    public LoggingFilter() {
        super(Config.class);
    }

    @Override
    public GatewayFilter apply(Config config) {
        return new OrderedGatewayFilter((exchange, chain) -> {
            log.info("Logging request baseMessage: {}", config.getBaseMessage());
            if (config.isPreLogger())   log.info("Logging PRE Filter: {}, {}", exchange.getRequest().toString());
            return chain.filter(exchange).then(Mono.fromRunnable(() -> {
            if (config.isPostLogger())  log.info("Logging POST Filter: {}", exchange.getResponse().toString());
            }));
        }, Ordered.HIGHEST_PRECEDENCE);
    }
}