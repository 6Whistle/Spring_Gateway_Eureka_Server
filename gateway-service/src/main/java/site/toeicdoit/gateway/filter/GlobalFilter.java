package site.toeicdoit.gateway.filter;

import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;

@Slf4j
@Component
public class GlobalFilter extends AbstractGatewayFilterFactory<GlobalFilter.Config>{
    @Data
    public static class Config {
        private String baseMessage;
        private boolean preLogger;
        private boolean postLogger;
    }

    public GlobalFilter() {
        super(Config.class);
    }

    @Override
    public GatewayFilter apply(Config config) {
        return ((exchange, chain) -> {
            log.info("Global Filter baseMessage: {}, {}", config.getBaseMessage(), exchange.getRequest().getRemoteAddress());
            if (config.isPreLogger())   log.info("Global Filter Start: request id -> {}", exchange.getRequest());
            return chain.filter(exchange).then(Mono.fromRunnable(()->{
                if (config.isPostLogger())      log.info("Global Filter End: response code -> {}", exchange.getResponse());
            }));
        });
    }
}
