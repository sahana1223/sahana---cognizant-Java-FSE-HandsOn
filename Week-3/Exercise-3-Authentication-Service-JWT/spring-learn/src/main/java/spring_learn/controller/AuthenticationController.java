package spring_learn.controller;

import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@RestController
public class AuthenticationController {

    @GetMapping("/authenticate")
    public Map<String, String> authenticate(
            @RequestHeader("Authorization") String authHeader) {

        System.out.println("START authenticate()");
        System.out.println("Authorization Header: " + authHeader);

        String user = getUser(authHeader);

        String token = generateJwt(user);

        Map<String, String> map = new HashMap<>();

        map.put("token", token);

        System.out.println("Generated JWT: " + token);
        System.out.println("END authenticate()");

        return map;
    }

    private String getUser(String authHeader) {

        System.out.println("Inside getUser()");

        String encodedCredentials = authHeader.substring(6);

        System.out.println("Encoded Credentials: " + encodedCredentials);

        byte[] decodedBytes = Base64.getDecoder().decode(encodedCredentials);

        String decodedCredentials = new String(decodedBytes);

        System.out.println("Decoded Credentials: " + decodedCredentials);

        String user = decodedCredentials.split(":")[0];

        System.out.println("User: " + user);

        return user;
    }

    private String generateJwt(String user) {

        JwtBuilder builder = Jwts.builder();

        builder.setSubject(user);

        // Issue time
        builder.setIssuedAt(new Date());

        // Expiry time (20 minutes)
        builder.setExpiration(new Date(System.currentTimeMillis() + 1200000));

        builder.signWith(SignatureAlgorithm.HS256, "secretkey");

        return builder.compact();
    }
}