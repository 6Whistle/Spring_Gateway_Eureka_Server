package site.toeicdoit.chat.config;

import org.springframework.stereotype.Component;

@Component
public class TestBean {
    public void dependencyCheck() {
        System.out.println("Dependency check");
    }
}
