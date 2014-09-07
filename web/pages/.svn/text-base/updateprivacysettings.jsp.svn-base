<%-- 
    Document   : updateprivacysettings
    Created on : 9 Sep, 2011, 10:56:49 AM
    Author     : rkjangir
--%>

<%@page import="ekalavya.econtent.bean.PrivacySetting"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ekalavya.econtent.helper.UserHandler" %>
<%
    boolean emailView = false;
    boolean mobileView = false;
    boolean qualificationView = false;
    boolean profileView = true;
    boolean noError = false;
    String userId = "";
    try {
        emailView = Boolean.parseBoolean(request.getParameter("emailView"));
        mobileView = Boolean.parseBoolean(request.getParameter("mobileView"));
        qualificationView = Boolean.parseBoolean(request.getParameter("qualificationView"));
        profileView = Boolean.parseBoolean(request.getParameter("profileView"));
        userId = (String)session.getAttribute("userId");
        UserHandler handler = new UserHandler();
        PrivacySetting setting = new PrivacySetting();
        setting.setShowEmail(emailView);
        setting.setShowMobile(mobileView);
        setting.setShowQualification(qualificationView);
        setting.setShowProfile(profileView);
        setting.setUserId(userId);
        noError = handler.updatePrivacySetting(setting);
    }catch(Exception e) {
        noError = false;
    }
    //printing the result
    out.print(noError);
%>
