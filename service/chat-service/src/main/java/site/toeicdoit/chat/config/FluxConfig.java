package site.toeicdoit.chat.config;

import java.time.format.DateTimeFormatter;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.web.ReactivePageableHandlerMethodArgumentResolver;
import org.springframework.format.FormatterRegistry;
import org.springframework.format.datetime.standard.DateTimeFormatterRegistrar;
import org.springframework.lang.NonNull;
import org.springframework.web.reactive.config.EnableWebFlux;
import org.springframework.web.reactive.config.WebFluxConfigurer;
import org.springframework.web.reactive.result.method.annotation.ArgumentResolverConfigurer;

/**
 * FluxConfig
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see Configuration
 * @see WebFluxConfigurer
 */
@Configuration
@EnableWebFlux
public class FluxConfig implements WebFluxConfigurer{

    /**
     * addFormatters
     * <p>Redefine the date time format</p>
     * @param registry {@link FormatterRegistry}
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see DateTimeFormatterRegistrar
     * @see DateTimeFormatter
     */
    @Override
    public void addFormatters(@NonNull FormatterRegistry registry) {
        DateTimeFormatterRegistrar registrar = new DateTimeFormatterRegistrar();
        registrar.setUseIsoFormat(true);
        registrar.registerFormatters(registry);
    }

    /**
     * configureArgumentResolvers
     * <p>Register the custom resolver</p>
     * @param configurer {@link ArgumentResolverConfigurer}
     * @since 2024-07-23
     * @version 1.0
     * @author JunHwei Lee(6whistle)
     * @see ReactivePageableHandlerMethodArgumentResolver
     */
    @Override
    public void configureArgumentResolvers(@NonNull ArgumentResolverConfigurer configurer) {
        configurer.addCustomResolver(new ReactivePageableHandlerMethodArgumentResolver());
    }
}
