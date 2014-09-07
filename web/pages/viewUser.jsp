<%-- 
    Document   : viewUser
    Created on : 6 Jul, 2011, 11:12:06 AM
    Author     : rkjangir
--%>

<%@page import="ekalavya.econtent.helper.EContentAdminHelper"%>
<%@page import="ekalavya.econtent.bean.PrivacySetting"%>
<%@page import="ekalavya.econtent.helper.UserHandler,ekalavya.econtent.bean.User"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userId = request.getParameter("userId");
    UserHandler handler = new UserHandler();
    EContentAdminHelper helper = new EContentAdminHelper();
    PrivacySetting settings = new PrivacySetting();
    User user = null;
    if(userId != null) {
        user = handler.getUser(userId);
        settings = handler.getPrivacySetting(userId);
    }
    if(user != null && settings != null) {
%>
<div class="verticalspace"></div>
<div class="div-box">
    <div class="div-title"><bean:message key="label.feedback.name"/> : </div>
    <div class="div-value"><%= user.getFirstName() %>&nbsp;<%= user.getLastName() %></div>
</div>
<hr>
<%
        if(settings.canShowEmail()) {
%>
<div class="div-box">
    <div class="div-title"><bean:message key="label.register.email"/> : </div>
    <div class="div-value"><%= user.getEmail() %></div>
</div>
<hr>
<%
        }
        if(settings.canShowMobile()) {
%>
<div class="div-box">
    <div class="div-title"><bean:message key="label.register.mobile"/> : </div>
    <div class="div-value"><%= user.getEmail() %></div>
</div>
<hr>
<%
        }
        if(settings.canShowQualification()) {
%>
<div class="div-box">
    <div class="div-title"><bean:message key="label.register.qualification"/> : </div>
    <div class="div-value"><%= user.getQualification() %></div>
</div>
<hr>
<%
        }
        if(settings.canShowProfile()) {
%>
<div class="div-box">
    <div class="div-title"><bean:message key="label.register.profile"/> : </div>
    <div class="div-value"><%= user.getProfile() %></div>
</div>
<hr>
<%
        }
%>
<div class="div-box">
    <div class="div-title">Language : </div>
    <div class="div-value"><%= helper.getLanguageDesc(user.getLangId()) %></div>
</div>
<div class="verticalspace"></div>
<%
    } else {
%>
<div class="person-info" style="margin-top:5px;"><span><bean:message key="table.detail.error"/></span></div>
<%
    }
%>

<style type="text/css">
    hr {
        clear:both;height:1px;border:0px; background-color: #eaeaea;margin:2px 0px 2px 0px;
    }
    .verticalspace {
        height:10px;
    }
    .div-box {
        margin-top: 5px;
    }
    .div-title {
        color:#B4241B;font-weight: bold;font-size: 12px;float:left;width:90px;height:auto; text-align: right;padding-right: 10px;
    }
    .div-value {
        margin-left: 100px;
    }
    
</style>
