<%-- 
    Document   : forgot_login_details
    Created on : 21 Apr, 2011, 3:01:59 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@taglib uri="/tags/struts-tiles" prefix="tiles"%>
<%@taglib uri="/tags/struts-html" prefix="html"%>
<%@page import="nl.captcha.Captcha"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
            String url = "accountrecovery.do";
            session.setAttribute("currentAction",url);
            int curLanguage = 1;
            String lang = (String)session.getAttribute("langId");
            if(lang != null) {
                try {
                    curLanguage = Integer.parseInt(lang);
                }catch(Exception e) {
                    curLanguage = 1;
                }
            }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="label.recover.title"/></title>
        <script type="text/javascript" src="js/ekShiksha_main.js"></script>
        <script type="text/javascript" src="js/ajaxcaptcha.js"></script>
        <script type="text/javascript" src="js/ajaxscript.js"></script>
        
    </head>
    <body>
        <%
            String currentRole = (String)session.getAttribute("role");
            if(currentRole != null) {
        %>
        <h3 align="center" style="margin-top: 15px;">Please logout before continue.</h3>
        <%
            } else {
        %>
        <%
            String error = (String)session.getAttribute("formError");
            session.removeAttribute("formError");
            String email = "";
            if(error!=null && error.length()>1 && !error.matches(".*,success,.*")) {
                //getting form parameters values
                email = request.getParameter("email");
            }
        %>
        <h2 align="center"><bean:message key="label.ekshiksha.account"/></h2>
        <div id="stylized" class="myform">
            <h1><bean:message key="label.forgot.heading"/></h1>
            <p>
                <bean:message key="label.forgot.subheading"/>&nbsp;<bean:message key="label.register.required"/>
            </p>
            <form id="accountrecoveryform" name="accountrecoveryform" method="post" action="recoveraccount.do" onsubmit="return validateAccountRecoveryForm();">
                <%
                    if(error != null && error.matches(".*,error,.*")) {
                %>
                <div align="center" class="errormsg"><li><bean:message key="register.error.unable"/></li></div>
                <%
                    }
                %>
                <%
                    if(error != null && error.matches(".*,emailnotavailable,.*")) {
                %>
                <div align="center" class="errormsg"><li><bean:message key="recover.error.emailnotregistered"/></li></div>
                <%
                    }
                %>
                
                <label><span><bean:message key="label.register.email"/> :<strong>*</strong></span>
                    <input id="email" type="text" name="email" value="<%= email %>" onfocus="showRequiredInfo('emailInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <div id="emailInfo" class="required"><bean:message key="recover.help.email"/></div>
                <h5 id="emailError"><bean:message key="register.error.enteremail"/></h5>
                <h5 id="iemailError"><bean:message key="register.error.invalidemail"/></h5>
                <%
                    if(error != null && error.matches(".*,email,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invalidemail"/></h5>
                <%
                    }
                %>
                <div id="captchaDiv" class="captcha">
                    <a target="_blank" href="pages/help_classic_captcha.html"><bean:message key="label.register.help"/></a>
                    <div>
                        <img id="imgCaptcha" src="captchaImage"  alt="Captcha image" width="206" height="50">
                    </div>
                </div>
                <div id="captchaInfo" class="required" style="position: relative;margin-top: 10px;"><bean:message key="recover.help.captcha"/></div>
                <label style="margin-top:4px;"><span><bean:message key="label.register.typecode"/> :<strong>*</strong></span>
                <input id="captchaText" style="width:85px;margin-right: 5px;" type="text" name="captchaText"  onfocus="showRequiredInfo('captchaInfo');" onblur="hideRequiredInfo()"/>

                <img id="reCaptchaImg" style="display:none;" onclick="changeImage();" src="images/refresh.png" alt="" width="22" height="22">
                <a id="reCaptchaLink" style="display:none;" href="javascript:onclick=changeImage();"><bean:message key="label.register.newcode"/></a>
                <noscript>

                    <a id="reCaptchaLink"  href="registerMe.do"><img id="reCaptchaImg" src="images/refresh.png" alt="" width="22" height="22"><bean:message key="label.register.newcode"/></a>
                </noscript>
                </label>
                <h5 class="captchaMsg"><bean:message key="label.register.casesensitive"/></h5>
                <h5 id="captchaError"><bean:message key="register.error.captchamatch"/></h5>
                <%
                    if(error != null && error.matches(".*,captcha,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.captchamatch"/></h5>
                <%
                    }
                %>
                <script type="text/javascript">
                    document.getElementById('reCaptchaImg').style.display = "inline";
                    document.getElementById('reCaptchaLink').style.display = "inline";
                </script>

                <div class="spacer"></div>
                <div class="controls">
                    <button type="submit"><bean:message key="label.recover.submit"/></button>
                    <button type="reset" onclick="resetAccountRecoveryForm();"><bean:message key="label.button.reset"/></button>
                </div>
                <br/>
            </form>
        </div>
        <% } %>
    </body>
</html>
