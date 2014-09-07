<%-- 
    Document   : changeLocale
    Created on : Jul 14, 2010, 1:06:37 AM
    Author     : rajanikant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
    String action = (String)session.getAttribute("currentAction");
    if(action == null || action.length()<1) {
        action = "econtent.do";
    }
    Integer visitorId = (Integer)session.getAttribute("visitorId");
    String langId = (String)session.getAttribute("langId");
    int currentLanguage = 1;
    if(visitorId != null && langId != null) {
        ekalavya.econtent.helper.UserHandler handler = new ekalavya.econtent.helper.UserHandler();
        try {
            currentLanguage = Integer.parseInt(langId);
        } catch(Exception e) {

        }
        handler.updateVisitorLanguage(visitorId.intValue(), currentLanguage);
    }
    response.sendRedirect(action);
%>

