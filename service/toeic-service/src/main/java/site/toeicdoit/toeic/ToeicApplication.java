package site.toeicdoit.toeic;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class ToeicApplication {

	public static void main(String[] args) {
		SpringApplication.run(ToeicApplication.class, args);
	}

}
