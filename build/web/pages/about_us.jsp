<%-- 
    Document   : about_us
    Created on : 28 Apr, 2011, 11:43:45 AM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
        session.setAttribute("currentAction","aboutus.do");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="ec.menu.intro"/></title>
    </head>
    <body>
        <div style="text-align: center;">
            <img alt="This page is under construction" src="images/underconstruction.gif" width="400" height="310"/>
        </div>
        <iframe id="likeButton" src="/ekShiksha/likes/likes.html?sw=on" height="50" 
                width="240" frameborder="0" scrolling="no" overflow="auto" >
            Your browser does not support iframes.<br />
            Please upgrade or use another browser.
        </iframe>
        <iframe id="appletRating" src="/ekShiksha/rating/rating.html?switch=off&q=webpage" height="50"
                width="330" frameborder="0" scrolling="no" overflow="auto" >
            Your browser does not support iframes.<br />
            Please upgrade or use another browser.
        </iframe>
        <br>
        <br>
    </body>
</html>
