//package com.blog.security;
////
////import org.springframework.security.core.Authentication;
////import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
////import org.springframework.stereotype.Component;
////
////import javax.servlet.ServletException;
////import javax.servlet.http.HttpServletRequest;
////import javax.servlet.http.HttpServletResponse;
////import java.io.IOException;
////
////@Component
////   public class MyLogoutSuccessHandler implements LogoutSuccessHandler {
////        @Override
////        public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
////            System.out.println("退出成功！");
////
//////            response.sendRedirect("/login");
////        }
////    }