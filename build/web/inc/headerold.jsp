<%-- 
    Document   : header
    Created on : 3 Mar, 2011, 4:13:12 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>


<div id="top"></div>
<div id="header">
<div class="logo">
<h1><a href="econtent.do"><bean:message key="ekshiksha.title.message"/></a></h1>
<h2><bean:message key="ekshiksha.subtitle.message"/></h2>
</div>
<div class="details">
    <div>
    <bean:message key="ekshiksha.title.welcome"/> :&nbsp;
    <%
        String displayName = (String)session.getAttribute("user");
        if(displayName == null || displayName.length()<1) {
            out.println("Guest");
    %>
    <%
        } else {
            out.println(displayName);
        }
    %>
    </div>
    
</div>

</div>
<div id="menu">
<ul>
<li><a href="econtent.do"><bean:message key="ec.menu.econtenthome"/></a></li>
<li><a href="availableContents.do"><bean:message key="ec.menu.contents"/></a></li>
<li><a href="aboutus.do"><bean:message key="label.menu.aboutus"/></a></li>
<li><a href="contactus.do"><bean:message key="ec.menu.contachus"/></a></li>
<li><a href="feedback.do"><bean:message key="ec.menu.feedback"/></a></li>
<li><a href="faq.do"><bean:message key="ec.menu.faq"/></a></li>
</ul>
</div>