<%-- 
    Document   : registration_success
    Created on : 20 Apr, 2011, 2:35:51 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="label.register.heading"/></title>
        <script type="text/javascript" src="js/ajaxscript.js"></script>
    </head>
    <body>
        <%
            session.removeAttribute("formError");
            String email = (String)session.getAttribute("registeredEmail");
        %>
        <h2 align="center" id="sent" style="display:none;"><div align="center"><bean:message key="register.success.messageone"/></div></h2>
        <h2 id="message" align="center"><bean:message key="register.success.messagetwo"/></h2>
        <p id="thankyou"><bean:message key="register.success.messagethree"/></p>
        <p id="detail"><bean:message key="register.success.messagefour"/>
            <a href="#" onclick="javascript:retrieveUrl('<%=email%>');"><bean:message key="register.success.messagefive"/></a>
        </p>
    </body>
</html>
