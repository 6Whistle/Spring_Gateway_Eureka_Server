package site.toeicdoit.chat;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.data.mongodb.config.EnableReactiveMongoAuditing;

/**
 * ChatApplication
 * <p>Chat Service Application</p>
 * @since 2024-07-23
 * @version 1.0
 * @author JunHwei Lee(6whistle)
 * @see EnableDiscoveryClient
 * @see EnableReactiveMongoAuditing
 * @see SpringBootApplication
 */
@EnableDiscoveryClient
@EnableReactiveMongoAuditing
@SpringBootApplication
public class ChatApplication {
	public static void main(String[] args) {
		SpringApplication.run(ChatApplication.class, args);
	}
}
