<%-- 
    Document   : readFeedback
    Created on : 15 Jun, 2011, 12:46:41 PM
    Author     : rkjangir
--%>
<%@page import="ekalavya.econtent.helper.UserHandler"%>
<%
    response.setContentType("text/xml");
    response.setHeader("Cache-Control", "no-cache");
    try {
        String role = (String)session.getAttribute("role");
        if(role != null && (role.equals("controller") || role.equals("admin"))) {
            int id = Integer.parseInt(request.getParameter("id"));
            String type = request.getParameter("type");
            UserHandler handler = new UserHandler();
            boolean result = false;
            if(type != null && type.equals("update")) {
                result = handler.updateFeedbackStatus(id, true);
            } else if(type != null && type.equals("delete")){
                result = handler.deleteFeedback(id);
            }
            if(result) {
                response.getWriter().write("<valid>true</valid>");
            } else {
                response.getWriter().write("<valid>false</valid>");
            }
        }
    }catch(Exception e) {
        response.getWriter().write("<valid>false</valid>");
    }
%>
