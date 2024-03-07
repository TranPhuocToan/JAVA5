package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.example.demo.model.UserEntity;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class AuthInterceptor implements HandlerInterceptor {
    @Autowired
    SessionService sessionService;

    public boolean preHandle(HttpServletRequest request,
            HttpServletResponse response, Object handler) throws Exception {
        String uri = request.getRequestURI();
        UserEntity user = sessionService.get("userSession"); // lấy từ session
        String error = "";
        if (user == null) { // chưa đăng nhập
            error = "Please login!";
        }
        // không đúng vai trò
        else if (!user.getUserRole() && uri.startsWith("/admin/")) {
            error = "Access denied!";
        }
        if (error.length() > 0) { // có lỗi
            sessionService.set("security-uri", uri);
            response.sendRedirect("/account/login?error=" + error);
            return false;
        }
        return true;
    }
}
