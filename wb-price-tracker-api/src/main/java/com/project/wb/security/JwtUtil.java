package com.project.wb.security;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.project.wb.config.ApplicationConfig;
import com.project.wb.exception.ApiError;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

@Component
@RequiredArgsConstructor
public class JwtUtil {

    private final ApplicationConfig applicationConfig;
    private static final String USERNAME_CLAIM = "username";

    public String generateJWT(Long id, String username) {
        return JWT.create()
            .withSubject(String.valueOf(id))
            .withClaim(USERNAME_CLAIM, username)
            .withExpiresAt(Date.from(Instant.now().plus(applicationConfig.jwt().ttlHours(), ChronoUnit.HOURS)))
            .sign(Algorithm.HMAC256(applicationConfig.jwt().secret()));
    }

    public DecodedJWT validateJWT(String token) {
        try {
            return JWT.require(Algorithm.HMAC256(applicationConfig.jwt().secret()))
                .build()
                .verify(token);
        } catch (TokenExpiredException ex) {
            throw ApiError.TOKEN_EXPIRED.toException();
        } catch (Exception ex) {
            throw ApiError.INVALID_TOKEN.toException();
        }
    }

    public String getUsernameFromJWT(DecodedJWT jwt) {
        String username = jwt.getClaim(USERNAME_CLAIM).asString();
        if (!StringUtils.hasText(username)) {
            throw ApiError.INVALID_TOKEN.toException();
        }
        return username;
    }
}
