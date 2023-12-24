package com.project.wb.security;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import jakarta.servlet.http.HttpServletResponse;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Date;

@Component
@Getter
public class JwtUtil {

    @Value("${jwt.secret}")
    private String secret;

    @Value("${jwt.ttl}")
    private long ttl;

    private static final String TOKEN_PREFIX = "Bearer ";
    private static final String AUTH_HEADER = "Authorization";

    public void setAuthHeader(HttpServletResponse response, User user) {
        String token = generateToken(user.getId(), user.getUsername(), user.getRole().name());
        response.setHeader(AUTH_HEADER, TOKEN_PREFIX + token);
    }

    public String generateToken(Long id, String username, String role) {
        return JWT.create()
                .withSubject(String.valueOf(id))
                .withClaim("username", username)
                .withClaim("role", role)
                .withExpiresAt(Date.from(Instant.now().plus(ttl, ChronoUnit.MINUTES)))
                .sign(Algorithm.HMAC256(secret));
    }

    public DecodedJWT validateToken(String token) {
        try {
            return JWT.require(Algorithm.HMAC256(secret))
                    .build()
                    .verify(token);
        } catch (TokenExpiredException ex) {
            throw ApiError.TOKEN_EXPIRED.toException();
        } catch (Exception ex) {
            throw ApiError.INVALID_TOKEN.toException();
        }
    }

    public String getUsernameFromJWT(DecodedJWT jwt) {
        String username = jwt.getClaim("username").asString();
        if (username == null) throw ApiError.INVALID_TOKEN.toException();
        return username;
    }

    public String getTokenPrefix() {
        return TOKEN_PREFIX;
    }

    public String getAuthHeader() {
        return AUTH_HEADER;
    }
}
