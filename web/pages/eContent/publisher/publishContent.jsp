<%--
    Document   : reviewContent
    Created on : 16 May, 2011, 3:02:34 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="helper" class="ekalavya.econtent.helper.ContentHandler"/>
<%
    try {
        String unicode = "";
        int status = 4; //status = 3 ,it means that content is reviewed
        int topicId = Integer.parseInt(request.getParameter("topicId"));
        int linkId = Integer.parseInt(request.getParameter("linkId"));
        int langId = Integer.parseInt(request.getParameter("langId"));
        int contentId = Integer.parseInt(request.getParameter("contentId"));
        String setDefault = request.getParameter("setdefault");
        String content = request.getParameter("translated");
        String original = request.getParameter("original");
        String type = request.getParameter("type");
        String role = (String)session.getAttribute("role");
        if(setDefault != null && setDefault.equals("yes")) {
            unicode = new String(original.getBytes("ISO8859-1"),"UTF8");
            status = 1;
        } else {
            unicode = new String(content.getBytes("ISO8859-1"),"UTF8");
        }
        if(role == null || role.trim().isEmpty() || !role.equals("publisher")) {
%>
    <br>
        <h3 align="center">Please login to publish contents.</h3>
        <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
<%
        } else {
        if(type!=null && type.equals("complex")) {
            if(helper.publishComplexContent(topicId, linkId, langId, contentId, unicode, status)) {
            %>
            <br>
            <h3 align="center">Content successfully published</h3>
            <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
            <%
            } else {
            %>
            <br>
            <h3 align="center">Publishing of content is not successful</h3>
            <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
            <%
            }
        } else if(type!=null && type.equals("simple")) {
            if(helper.updateSimpleContent(contentId, langId, unicode, status)) {
            %>
            <br>
            <h3 align="center">Content successfully published.</h3>
            <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
            <%
            } else {
            %>
            <br>
            <h3 align="center">Publishing of content is not successful</h3>
            <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
            <%
            }
        }
        }
    } catch(Exception e) {
%>
    <br>
    <h3 align="center">Publishing of content is not successful</h3>
    <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
<%
    }
%>

