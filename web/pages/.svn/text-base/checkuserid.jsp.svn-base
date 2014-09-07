<%-- 
    Document   : checkuserid
    Created on : 4 Mar, 2011, 2:21:10 PM
    Author     : rkjangir
--%>


<%@page import="ekalavya.econtent.helper.UserHandler"%>
<%
    String userId = request.getParameter("uid");
    if(userId != null && !userId.trim().isEmpty()) {
        UserHandler handler = new UserHandler();
        boolean isUserIdAvailable = handler.isUserIdExist(userId);
        if(!isUserIdAvailable) {
            out.print("true");
        } else {
            out.print("false");
        }
    } else {
        out.print("false");
    }

%>