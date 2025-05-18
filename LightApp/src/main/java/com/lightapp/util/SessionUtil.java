package com.lightapp.util;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class SessionUtil {
	
	/**
     * Sets an attribute in the session.
     *
     * @param request the HttpServletRequest from which the session is obtained
     * @param key     the key under which the attribute is stored
     * @param value   the value of the attribute to store in the session
     */
	
	
    public static void setAttribute(HttpServletRequest request, String key, Object value) {
        HttpSession session = request.getSession();
        session.setAttribute(key, value);
    }
    
    /**
     * Retrieves an attribute from the session.
     *
     * @param request the HttpServletRequest from which the session is obtained
     * @param key     the key of the attribute to retrieve
     * @return the attribute value, or null if the attribute does not exist or the session is invalid
     */
    public static Object getAttribute(HttpServletRequest request, String key) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            return session.getAttribute(key);
        }
        return null;
    }
    
    public static void removeAttribute(HttpServletRequest request, String key) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute(key);
        }
    }
    
    public static void invalidateSession(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
    }
    
    
    public static void setUserSession(HttpServletRequest request, String username, String email) {
    	SessionUtil.setAttribute(request, "username", username);
    	SessionUtil.setAttribute(request, "email", email);
    	
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(240); // 4 minutes timeout
    }
    
    

    
    
    
    

}
