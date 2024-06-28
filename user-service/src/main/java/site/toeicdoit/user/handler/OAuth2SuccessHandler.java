package site.toeicdoit.user.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponentsBuilder;

import site.toeicdoit.user.domain.model.oauth2.PrincipalDetails;
import site.toeicdoit.user.domain.vo.Messenger;
import site.toeicdoit.user.service.impl.JwtTokenProvider;

import java.io.IOException;

@Log4j2
@RequiredArgsConstructor
@Component
public class OAuth2SuccessHandler implements AuthenticationSuccessHandler {

    private final ObjectMapper objectMapper;
    private final JwtTokenProvider jwtTokenProvider;
    private static final String URI = "http://localhost:3000/";


    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {

        log.info("::::::request 정보: "+request);
        log.info("::::::response 정보: "+response);
        log.info("::::::authentication 정보: "+authentication);
        log.info("::::::getAuthorities 정보: "+authentication.getAuthorities());

        // accessToken, refreshToken 발급
        String accessToken = jwtTokenProvider.generateToken((UserDetails) ((PrincipalDetails) authentication.getPrincipal()), false);
        String refreshToken = jwtTokenProvider.generateToken((UserDetails) ((PrincipalDetails) authentication.getPrincipal()), true);


        // 토큰 전달을 위한 redirect
//        String redirectUrl = UriComponentsBuilder.fromUriString(URI)
//                .buildAndExpand(Messenger.builder()
//                        .message("Success")
//                        .accessToken(accessToken)
//                        .refreshToken(refreshToken)
//                        .build()).toUriString();

        String result = objectMapper.writeValueAsString(Messenger.builder()
                .message("Success")
                .accessToken(accessToken)
                .refreshToken(refreshToken)
                .build());
        response.getWriter().write(result);
//        log.info("::::::redirectUrl 정보: " + redirectUrl);
//        response.sendRedirect(redirectUrl);
    }

}