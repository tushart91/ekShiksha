<%-- 
    Document   : translateContent
    Created on : 19 Jan, 2011, 12:37:49 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="helper" class="ekalavya.econtent.helper.ContentHandler"/>
<%
    try {
        String unicode = "";
        System.out.println("1");
        int topicId = Integer.parseInt(request.getParameter("topicId"));
        System.out.println("2");
        int linkId = Integer.parseInt(request.getParameter("linkId"));
        System.out.println("3");
        int langId = Integer.parseInt(request.getParameter("langId"));
        System.out.println("4");
        int contentId = Integer.parseInt(request.getParameter("contentId"));
        System.out.println("5");
        String content = request.getParameter("translated");
        String type = request.getParameter("type");
        String role = (String)session.getAttribute("role");
        if(role == null || role.trim().isEmpty() || !role.equals("translator")) {
%>
    <br>
        <h3 align="center">Please login to translate.</h3>
        <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
<%
        } else {


        unicode = new String(content.getBytes("ISO8859-1"),"UTF8");
        if(type!=null && type.equals("complex")) {
            if(helper.translateComplexContent(topicId, linkId, langId, contentId, unicode)) {
            %>
            <br>
            <h3 align="center">Translation successful</h3>
            <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
            <%
            } else {
            %>
            <br>
            <h3 align="center">Translation is not successful</h3>
            <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
            <%
            }
        } else if(type!=null && type.equals("simple")) {
            if(helper.updateSimpleContent(contentId, langId, unicode)) {
            %>
            <br>
            <h3 align="center">Translation successful</h3>
            <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
            <%
            } else {
            %>
            <br>
            <h3 align="center">Translation is not successful</h3>
            <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
            <%
            }
        }
        }
    } catch(Exception e) {
%>
    <br>
    <h3 align="center">Translation is not successful</h3>
    <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
<%
    }
%>

