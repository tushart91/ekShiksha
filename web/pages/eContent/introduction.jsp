<!-- 
    Document   : introduction
    Created on : Jul 13, 2010, 11:03:57 AM
    Author     : Rajanikant
-->

<%@page contentType="text/html;charset=utf-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page import="ekalavya.econtent.bean.Topic,ekalavya.econtent.helper.EContentMenuHelper" %>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
        session.setAttribute("currentAction","eContent-Introduction.do");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="ec.menu.intro"/></title>
        
    </head>
    <body>
        <p class="heading"><bean:message key="ec.menu.intro"/></p>
        <p class="desc">
            <font face="Verdana, Arial, Helvetica, sans-serif"><bean:message key="ec.page.intro"/></font>
            <iframe id="likeButton" src="/ekShiksha/likes/likes.html?sw=on" height="50" 
                width="240" frameborder="0" scrolling="no" overflow="auto" >
            Your browser does not support iframes.<br />
            Please upgrade or use another browser.
            </iframe>
            <iframe id="appletRating" src="/ekShiksha/rating/rating.html?switch=on&q=webpage" height="50"
                    width="330" frameborder="0" scrolling="no" overflow="auto" >
                Your browser does not support iframes.<br />
                Please upgrade or use another browser.
            </iframe>
        </p>
        <br>
        

    </body>
</html>
