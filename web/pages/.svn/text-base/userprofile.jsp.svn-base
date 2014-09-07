<%-- 
    Document   : userprofile
    Created on : 6 May, 2011, 10:33:05 AM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="ekalavya.econtent.helper.UserHandler,ekalavya.econtent.bean.User"%>
<%@page import="ekalavya.econtent.bean.Topic,java.util.*" %>
<%@page import="ekalavya.econtent.bean.LanguageBean" %>
<%
            String url = "profile.do";
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
        <title><bean:message key="ekshiksha.dialog.userprofile"/></title>
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
                String userId = (String)session.getAttribute("userId");
                UserHandler handler = new UserHandler();
                User user = handler.getUser(userId);
                String error = (String)session.getAttribute("formError");
                session.removeAttribute("formError");
        %>
         <div id="stylized" class="myform">

            <form id="profileform" name="profileform" method="post" action="updateprofile.do" onsubmit="return validateProfileUpdateForm();">
                <h1><bean:message key="label.profilesetting.heading"/></h1>
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
                    if(error != null && error.matches(".*,emailnotavailable,.*")) {
                %>
                <div align="center" class="errormsg"><li><bean:message key="register.error.emailexist"/></li></div>
                <%
                    }
                %>
                <%
                    if(error != null && error.matches(".*,success,.*")) {
                %>
                <div align="center" class="successmsg"><li>Your profile updated successfully</li></div>
                <%
                    }
                %>

                <label><span><bean:message key="label.register.firstname"/> :<strong>*</strong></span>
                <input id="firstName" type="text" name="firstName" value="<%= user.getFirstName() %>" onfocus="showRequiredInfo('firstNameInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <div id="firstNameInfo" class="required"><bean:message key="label.help.firstname"/></div>
                <h5 id="firstNameError"><bean:message key="register.error.invalidfirstname"/></h5>
                <%
                    if(error != null && error.matches(".*,firstName,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invalidfirstname"/></h5>
                <%
                    }
                %>
                <label><span><bean:message key="label.register.lastname"/> :<strong>*</strong></span>
                <input id="lastName" type="text" name="lastName" value="<%= user.getLastName() %>" onfocus="showRequiredInfo('lastNameInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <div id="lastNameInfo" class="required"><bean:message key="label.help.lastname"/></div>
                <h5 id="lastNameError"><bean:message key="register.error.invalidlastname"/></h5>
                <%
                    if(error != null && error.matches(".*,lastName,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invalidlastname"/></h5>
                <%
                    }
                %>

                <label><span><bean:message key="label.login.userid"/> :<strong>*</strong></span>
                    <input id="userId" type="text" name="userId" value="<%= userId %>" readonly="true"/>
                </label>
                

                <label><span><bean:message key="label.register.displayname"/> :<strong>*</strong></span>
                <input id="dispName" type="text" name="dispName" value="<%= user.getDisplayName() %>"  onfocus="showRequiredInfo('dispNameInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <div id="dispNameInfo" class="required"><bean:message key="label.help.displayname"/></div>
                <h5 id="dispNameError"><bean:message key="register.error.invaliddispname"/></h5>
                <%
                    if(error != null && error.matches(".*,dispName,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invaliddispname"/></h5>
                <%
                    }
                %>
                <label><span><bean:message key="label.register.email"/> :<strong>*</strong></span>
                    <input id="email" type="text" name="email" value="<%= user.getEmail() %>" onfocus="showRequiredInfo('emailInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <div id="emailInfo" class="required"><bean:message key="label.help.email"/></div>
                <h5 id="emailError"><bean:message key="register.error.enteremail"/></h5>
                <h5 id="iemailError"><bean:message key="register.error.invalidemail"/></h5>
                <%
                    if(error != null && error.matches(".*,email,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invalidemail"/></h5>
                <%
                    }
                %>


                <label><span><bean:message key="label.register.qualification"/> :<strong>*</strong></span>
                <input id="qualification" type="text" name="qualification" value="<%= user.getQualification() %>"  onfocus="showRequiredInfo('qualificationInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <div id="qualificationInfo" class="required"><bean:message key="label.help.qualification"/></div>

                <h5 id="qualificationError"><bean:message key="register.error.invalidqualification"/></h5>
                <%
                    if(error != null && error.matches(".*,qualification,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invalidqualification"/></h5>
                <%
                    }
                %>

                <label><span><bean:message key="label.register.profile"/> :<strong>*</strong></span>
                <textarea rows="5" cols="20" id="profile" name="profile" onfocus="showRequiredInfo('profileInfo');" onblur="hideRequiredInfo()"><%= user.getProfile() %></textarea>
                </label>
                <div id="profileInfo" class="required"><bean:message key="label.help.profile"/></div>

                <h5 id="profileError"><bean:message key="register.error.invalidprofile"/></h5>
                <%
                    if(error != null && error.matches(".*,profile,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invalidprofile"/></h5>
                <%
                    }
                %>

                <div class="spacer"></div>
                <div class="controls">
                    <button type="submit"><bean:message key="label.button.updateprofile"/></button>
                    <button type="reset" onclick="resetProfileUpdateForm();"><bean:message key="label.button.reset"/></button>
                </div>
                <br />
            </form>
        </div>
        <%
            }
        %>
    </body>
</html>
