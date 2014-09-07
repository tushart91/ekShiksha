<%-- 
    Document   : changepassword
    Created on : 6 May, 2011, 5:47:26 AM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
            String url = "changepassword.do";
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
        <title><bean:message key="label.cpassword.title"/></title>
        <script type="text/javascript" src="js/ekShiksha_main.js"></script>
        <script type="text/javascript" src="js/ajaxcaptcha.js"></script>
        <script type="text/javascript" src="js/ajaxscript.js"></script>
    </head>
    <body>
        <%
            String role = (String)session.getAttribute("role");
            if(role == null) {
        %>
        <h3 align="center" style="margin-top: 15px;"><bean:message key="login.message.required"/></h3>
        <%
            } else {
        %>
        <%
            String error = (String)session.getAttribute("passwordUpdateError");
            session.removeAttribute("passwordUpdateError");
        %>
         <div id="stylized" class="myform">

            <form id="changepasswordform" name="changepasswordform" method="post" action="updatepassword.do" onsubmit="return validateUpdatePasswordForm();">
                <h1><bean:message key="label.cpassword.title"/></h1>
                <p>
                   <bean:message key="label.register.required"/>
                </p>
                <%
                    if(error != null && error.matches(".*,error,.*")) {
                %>
                <div align="center" class="errormsg"><li><bean:message key="register.error.unable"/></li></div>
                <%
                    }
                %>
                <%
                    if(error != null && error.matches(".*,passwordnotmatch,.*")) {
                %>
                <div align="center" class="errormsg"><li><bean:message key="cpassword.error.passwordnotmatch"/></li></div>
                <%
                    }
                %>
                <%
                    if(error != null && error.matches(".*,success,.*")) {
                %>
                <div align="center" class="successmsg"><li><bean:message key="cpassword.success.done"/></li></div>
                <%
                    }
                %>

                <label><span><bean:message key="label.cpassword.currentpassword"/> :<strong>*</strong></span>
                <input id="currentpassword" type="password" name="currentpassword"/>
                </label>
                <div id="passwordInfo" class="required"><bean:message key="label.help.password"/></div>
                <h5 id="currentpasswordError"><bean:message key="register.error.invalidpassword"/></h5>
                <%
                    if(error != null && error.matches(".*,currentpassword,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invalidpassword"/></h5>
                <%
                    }
                %>
                
                <label><span><bean:message key="label.cpassword.newpassword"/> :<strong>*</strong></span>
                <input id="upassword" type="password" name="upassword"  onfocus="showRequiredInfo('passwordInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <h5 id="upasswordError"><bean:message key="register.error.invalidpassword"/></h5>
                <h5 id="npasswordError"><bean:message key="register.error.passwordmatch"/></h5>
                <%
                    if(error != null && error.matches(".*,notequal,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.passwordmatch"/></h5>
                <%
                    }
                %>
                <%
                    if(error != null && error.matches(".*,upassword,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invalidpassword"/></h5>
                <%
                    }
                %>
                <label><span><bean:message key="label.register.confirmpassword"/> :<strong>*</strong></span>
                <input id="cpassword" type="password" name="cpassword"/>
                </label>
                <h5 id="cpasswordError"><bean:message key="register.error.confirmpassword"/></h5>
                <%
                    if(error != null && error.matches(".*,cpassword,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.confirmpassword"/></h5>
                <%
                    }
                %>

                <div class="spacer"></div>
                <div class="controls">
                    <button type="submit"><bean:message key="label.cpassword.submit"/></button>
                    <button type="reset" onclick="resetUpdatePasswordForm();"><bean:message key="label.button.reset"/></button>
                </div>
                <br />
            </form>
         </div>
         <% } %>
    </body>
</html>
