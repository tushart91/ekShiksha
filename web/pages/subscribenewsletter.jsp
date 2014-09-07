<%-- 
    Document   : subscribenewsletter
    Created on : 5 Aug, 2011, 11:24:32 AM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ekalavya.econtent.helper.UserHandler" %>
<%
    response.setContentType("text/html");
    String email = request.getParameter("email");
    if(email != null && email.trim().length()>1) {
        email = email.trim(); //removing the white spaces in the string (leading & trailling)
        UserHandler handler = new UserHandler();
        if(handler.isAlreadySubscribed(email)) {
            if(handler.isAlreadySubscribed(email,true)) {
                out.print("exist");
            } else {
                if(handler.updateNewsletterSubscription(email, true)) {
                    out.print("true");
                } else {
                    out.print("false");
                }
            }
        } else {
            if(handler.subscribeNewsletter(email)) {
                out.print("true");
            } else {
                out.print("false");
            }
        }
    } else {
        out.print("false");
    }
%>