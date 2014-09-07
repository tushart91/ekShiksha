<%-- 
    Document   : trackPerformance
    Created on : 27 Sep, 2011, 3:03:03 PM
    Author     : rkjangir
--%>
<%@page import="ekalavya.econtent.helper.UserHandler" %>
<%
    String userId = (String)session.getAttribute("userId");
    System.out.println("User Id:"+userId);
    if(userId != null) {
        String result = request.getParameter("result");
        UserHandler handler = new UserHandler();
        if(result != null) {
            handler.trackStudentProgress(userId, result);
        }
    }
%>

