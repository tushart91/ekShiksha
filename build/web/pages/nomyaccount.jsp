<%-- 
    Document   : nomyaccount
    Created on : 29 Apr, 2011, 11:13:04 AM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ekShiksha : Not my account</title>
    </head>
    <body>
    <%
        String type = (String)session.getAttribute("requestType");
        String message = (String)session.getAttribute("message");
        String email = (String)session.getAttribute("requestedEmail");
        String userId = (String)session.getAttribute("requestedUserId");
        session.removeAttribute("requestedEmail");
        session.removeAttribute("requestedUserId");
        session.removeAttribute("requestType");
        session.removeAttribute("message");
    %>
        <br><br>
    <div id="stylized" class="myform">
    <%
        if(type == null || message == null) {
    %>
            <h1 align="center">Invalid link</h1>
            <div style="font-size: 11px;margin-top: 30px;">The link you clicked is invalid or incomplete. Try copying and pasting the full link into your web browser's address bar.</div>
            <div style="font-size: 11px;margin-top: 30px;">If you are still experiencing problems, please <a href="contactus.do">Contact Us</a></div>
    <%
        }  else if(type.equals("search")) {
            if(message.matches(".*,invalid,.*")) {
     %>
            <h1 align="center">Invalid link</h1>
            <div style="font-size: 11px;margin-top: 30px;">The link you clicked is invalid or incomplete. Try copying and pasting the full link into your web browser's address bar.</div>
            <div style="font-size: 11px;margin-top: 30px;">If you are still experiencing problems, please <a href="contactus.do">Contact Us</a></div>
     <%
            }else if(message.matches(".*,valid,.*")) {
                
     %>
            <h1 style="font-size:24px;margin-bottom: 10px;">Not your account?</h1>
            <p style="border:none;font-size:12px;">If you did not sign up for the ekShiksha account "<strong style="color: #21bef7;"><%= userId %></strong>", please confirm so that we may remove your email address (<strong style="color: #010101;"><%= email %></strong>) from this account. </p>
            <form id="removeaccount" name="removeaccount" method="post" action="removeaccount.do">
                <input type="hidden" name="email" value="<%= email %>">
                <input type="hidden" name="userId" value="<%= userId %>">
                <button type="submit">I did not sign up for this account</button>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="econtent.do">Nevermind, this is my account</a>
            </form>
            
     <%
            }
        }else if(type.equals("remove")) {
            if(message.matches(".*,valid,.*")) {
     %>
           <h1 style="font-size:24px;margin-bottom: 10px;">Account successfully removed</h1>
            <p style="border:none;font-size:12px;">Thanks for your support. The ekShiksha account "<strong style="color: #21bef7;"><%= userId %></strong>", and the email address (<strong style="color: #010101;"><%= email %></strong>) associated with this account successfully removed from ekShiksha. </p>
     <%
            } else {
     %>
     <h1 align="center">Invalid link</h1>
            <div style="font-size: 11px;margin-top: 30px;">The account you are trying to remove may be already removed from ekShiksha.</div>
            <div style="font-size: 11px;margin-top: 30px;">If you are still experiencing problems, please <a href="contactus.do">Contact Us</a></div>
     <%
            }
        }
     %>
        
            
        </div>
    </body>
</html>
