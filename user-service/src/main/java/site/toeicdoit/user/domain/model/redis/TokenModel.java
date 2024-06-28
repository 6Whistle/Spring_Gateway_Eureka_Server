package site.toeicdoit.user.domain.model.redis;

import org.springframework.data.redis.core.RedisHash;

import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@RedisHash(timeToLive = 86400)
public class TokenModel {
    @Id
    private String id;
    private String token;
}