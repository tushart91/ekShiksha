<%-- 
    Document   : contact_us
    Created on : 28 Apr, 2011, 11:43:34 AM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
        session.setAttribute("currentAction","contactus.do");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="ec.menu.intro"/></title>
        
    </head>
    <body>
        <h2><a href="#"><bean:message key="ec.menu.contachus"/></a></h2>
        <div style="padding-left:10px;font-size: 14px;color: #757575;">
            <div style="padding-bottom: 2px;">The ekShiksha Team,</div>
            <div style="padding-bottom: 2px;">Affordable Solutions Lab (ASL),</div>
            <div style="padding-bottom: 2px;">Kanwal Rekhi Building,</div>
            <div style="padding-bottom: 2px;">Department Of Computer Science & Engineering,</div>
            <div style="padding-bottom: 2px;">Indian Institute of Technology Bombay,</div>
            <div style="padding-bottom: 2px;">Mumbai 400 076</div>
            <div style="padding-bottom: 2px;">Email: ekshiksha@cse.iitb.ac.in</div>
        </div>
        <!--<div style="text-align: center;">
            <img alt="This page is under construction" src="images/underconstruction.gif" width="400" height="310"/>
        </div>-->
        <br>
    </body>
</html>
