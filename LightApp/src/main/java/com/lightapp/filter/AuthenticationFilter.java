package com.lightapp.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpFilter;
import java.io.IOException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
@WebFilter("/authenticationfilter")
public class AuthenticationFilter extends HttpFilter implements Filter {
       
	private static final String LOGIN = "/login";
    private static final String REGISTER = "/register";
    private static final String LOGOUT = "/logout";
    private static final String HOME = "/home";
    private static final String ROOT = "/";
    private static final String DASHBOARD = "/DashboardController";

    @Override
    public void init(FilterConfig fConfig) throws ServletException {
        // Initialization if needed
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String uri = req.getRequestURI();

        // Allow static resources
        if (uri.endsWith(".css") || uri.endsWith(".js") || uri.endsWith(".ico")) {
            chain.doFilter(request, response);
            return;
        }

        boolean isLoggedIn = req.getSession(false) != null && req.getSession(false).getAttribute("username") != null;
        String role = getCookieValue(req, "role");

        // Public access pages
        boolean isPublic = uri.endsWith(LOGIN) || uri.endsWith(REGISTER) || uri.endsWith(HOME)
                || uri.equals(ROOT)
                || uri.contains("/Contact") || uri.contains("/Blog") || uri.contains("/SearchProduct")
                || uri.contains("/ProductController");

        if (!isLoggedIn) {
            if (isPublic) {
                chain.doFilter(request, response);
            } else {
                res.sendRedirect(req.getContextPath() + LOGIN);
            }
            return;
        }

        // Admin access
        if ("admin".equals(role)) {
            if (uri.startsWith("/DashboardController")) {
                chain.doFilter(request, response);
            } else if (uri.endsWith(LOGIN) || uri.endsWith(REGISTER)) {
                res.sendRedirect(req.getContextPath() + DASHBOARD);
            } else {
                chain.doFilter(request, response);
            }
            return;
        }

        // customer access
        if ("customer".equals(role)) {
            if (uri.startsWith("/DashboardController")) {
                res.sendRedirect(req.getContextPath() + HOME);
            } else if (uri.endsWith(LOGIN) || uri.endsWith(REGISTER)) {
                res.sendRedirect(req.getContextPath() + HOME);
            } else {
                chain.doFilter(request, response);
            }
        }
    }

    @Override
    public void destroy() {
        // Cleanup if needed
    }

    // Helper method to get a cookie value
    private String getCookieValue(HttpServletRequest req, String name) {
        if (req.getCookies() != null) {
            for (Cookie cookie : req.getCookies()) {
                if (name.equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

}
