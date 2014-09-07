<%-- 
    Document   : validateEmail
    Created on : 29 Apr, 2011, 11:11:59 AM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ekShiksha : Account Confirmation</title>
    </head>
    <body>
    <%
        String message = (String)session.getAttribute("message");
        session.removeAttribute("message");
    %>
    <br><br>
    <div id="stylized" class="myform">
    <%
        if(message == null) {
    %>
            <h1 align="center">Invalid link</h1>
            <div style="font-size: 11px;margin-top: 30px;">The link you clicked is invalid or incomplete. Try copying and pasting the full link into your web browser's address bar.</div>
            <div style="font-size: 11px;margin-top: 30px;">If you are still experiencing problems, please <a href="contactus.do">Contact Us</a></div>
    <%
        }  else if(message.matches(".*,valid,.*")) {
    %>
            <h1 style="font-size:24px;margin-bottom: 10px;">Account successfully confirmed.</h1>
            <p style="border:none;font-size:12px;">Welcome to ekShiksha! You will get a welcome mail shortly. Please check your email for more details. Now you can login to ekShiksha.</p>
    <%
        } else {
    %>
            <h1 align="center">Invalid link</h1>
            <div style="font-size: 11px;margin-top: 30px;">The link you clicked is invalid or incomplete. Try copying and pasting the full link into your web browser's address bar.</div>
            <div style="font-size: 11px;margin-top: 30px;">If you are still experiencing problems, please <a href="contactus.do">Contact Us</a></div>
    <%
        }
     %>
    </div>
    </body>
</html>
