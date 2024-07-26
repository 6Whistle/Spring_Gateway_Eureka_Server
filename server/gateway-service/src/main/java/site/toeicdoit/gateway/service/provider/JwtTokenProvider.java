package site.toeicdoit.gateway.service.provider;


import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import jakarta.annotation.PostConstruct;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import reactor.core.publisher.Mono;
import site.toeicdoit.gateway.domain.model.PrincipalUserDetails;
import site.toeicdoit.gateway.domain.model.UserModel;
import site.toeicdoit.gateway.domain.vo.ExceptionStatus;
import site.toeicdoit.gateway.domain.vo.Role;
import site.toeicdoit.gateway.exception.GatewayException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.ReactiveRedisTemplate;
import org.springframework.data.redis.core.ReactiveValueOperations;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import javax.crypto.SecretKey;

import java.time.Duration;
import java.time.Instant;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

@Slf4j
@Service
@RequiredArgsConstructor
public class JwtTokenProvider{
    private final ReactiveRedisTemplate<String, String> reactiveRedisTemplate;
    
    private ReactiveValueOperations<String, String> reactiveValueOperations;

    @Value("${jwt.secret}")
    private String secretKey;

    @Value("${jwt.issuer}")
    private String issuer;

    @Getter
    @Value("${jwt.expired.access}")
    private Long accessTokenExpired;

    @Getter
    @Value("${jwt.expired.refresh}")
    private Long refreshTokenExpired;

    @PostConstruct
    protected void init() {
        reactiveValueOperations = reactiveRedisTemplate.opsForValue();
    }

    private SecretKey getSecretKey(){
        return Keys.hmacShaKeyFor(Base64.getUrlEncoder().encode(secretKey.getBytes()));
    }

    public String extractEmail(String jwt){
        return extractClaim(jwt, Claims::getSubject);
    }

    @SuppressWarnings("unchecked")
    public List<String> extractRoles(String jwt){
        return extractClaim(jwt, i -> i.get("roles", List.class));
    }

    public Mono<String> generateToken(UserDetails userDetails, boolean isRefreshToken){
        return Mono.just(generateToken(Map.of(), userDetails, isRefreshToken))
                .flatMap(token -> 
                    isRefreshToken 
                    ? reactiveValueOperations.set(userDetails.getUsername(), token, Duration.ofSeconds(refreshTokenExpired)).flatMap(i -> Mono.just(token))
                    : Mono.just(token)
                );
    }

    private String generateToken(Map<String, Object> extraClaims, UserDetails userDetails, boolean isRefreshToken){
        return Jwts.builder()
                .claims(extraClaims)
                .subject(userDetails.getUsername())
                .issuer(issuer)
                .claim("roles", userDetails.getAuthorities().stream().map(i -> i.getAuthority()).toList())
                .claim("type", isRefreshToken ? "refresh" : "access")
                .issuedAt(Date.from(Instant.now()))
                .expiration(Date.from(Instant.now().plusSeconds(isRefreshToken ? refreshTokenExpired : accessTokenExpired)))
                .signWith(getSecretKey(), Jwts.SIG.HS256)
                .compact();
    }

    private <T> T extractClaim(String jwt, Function<Claims, T> claimsResolver){
        return claimsResolver.apply(extractAllClaims(jwt));
    }

    private Claims extractAllClaims(String jwt){
        try {
            return Jwts.parser()
                    .verifyWith(getSecretKey())
                    .build()
                    .parseSignedClaims(jwt)
                    .getPayload();
        } catch (Exception e) {
            log.error("extractAllClaims Error: {}", e.getMessage());
            throw new GatewayException(ExceptionStatus.UNAUTHORIZED, "Invalid Token");
        }
    }

    public Boolean isTokenValid(String token, Boolean isRefreshToken) {
        return !isTokenExpired(token) && isTokenTypeEqual(token, isRefreshToken);
    }

    public Mono<Boolean> isTokenInRedis(String email, String token){
        return reactiveValueOperations.get(email)
        .flatMap(i -> Mono.just(token.equals(i)));
    }

    private Boolean isTokenExpired(String token){
        return extractClaim(token, Claims::getExpiration).before(Date.from(Instant.now()));
    }

    private Boolean isTokenTypeEqual(String token, Boolean isRefreshToken){
        return extractClaim(token, i -> i.get("type", String.class)).equals(isRefreshToken ? "refresh" : "access");
    }

    public String removeBearer(String bearerToken){
        return bearerToken.startsWith("Bearer ") ? bearerToken.substring(7) : "";
    }

    public PrincipalUserDetails extractPrincipalUserDetails(String jwt){
        return new PrincipalUserDetails(UserModel.builder().email(extractEmail(jwt)).roles(extractRoles(jwt).stream().map(i -> Role.valueOf(i)).toList()).build());
    }

    public Mono<Boolean> removeTokenInRedis(String email){
        return reactiveValueOperations.delete(email);
    }
}
