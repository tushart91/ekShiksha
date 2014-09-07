<%--
    Document   : registration
    Created on : 27 Jan, 2011, 2:56:52 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="menuObj" class="ekalavya.econtent.helper.EContentMenuHelper"/>
<jsp:useBean id="login" class="ekalavya.econtent.helper.UserHandler"/>
<%@page import="ekalavya.econtent.bean.Topic,java.util.*" %>
<%@page import="ekalavya.econtent.bean.LanguageBean" %>
<%@page import="nl.captcha.Captcha"%>
<%
            String url = "registerMe.do";
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
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title><bean:message key="label.register.heading"/></title>
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
            //declaring variable for form parameter to be saved
            String firstName = "";
            String lastName = "";
            String userId = "";
            String displayName = "";
            String email = "";
            String mobile = "";
            String role = "-1";
            String langId = "-1";
            String topicId = "-1";
            String qualification = "";
            String profile = "";

            if(error!=null && error.length()>1 && !error.matches(".*,success,.*")) {
                //getting form parameters values
                firstName = request.getParameter("firstName");
                lastName = request.getParameter("lastName");
                userId = request.getParameter("userId");
                displayName = request.getParameter("dispName");
                email = request.getParameter("email");
                mobile = request.getParameter("mobile");
                role = request.getParameter("role");
                langId = request.getParameter("langId");
                topicId = request.getParameter("topicId");
                qualification = request.getParameter("qualification");
                profile = request.getParameter("profile");
            }

            String[][] roles = new String[3][2];
            roles[0][0] = "translator";
            roles[0][1] = "Translator";
            roles[1][0] = "reviewer";
            roles[1][1] = "Reviewer";
            roles[2][0] = "publisher";
            roles[2][1] = "Publisher";
            
        %>

        <div id="stylized" class="myform">
         
            <form id="regform" name="regform" method="post" action="register.do" onsubmit="return validateRegistrationForm();">
                <h1><bean:message key="label.register.heading"/></h1>
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
                    if(error != null && error.matches(".*,useridnotavailable,.*")) {
                %>
                <div align="center" class="errormsg"><li><bean:message key="register.error.idnotexist"/></li></div>
                <%
                    }
                %>
                <%
                    if(error != null && error.matches(".*,success,.*")) {
                %>
                <div align="center" class="successmsg"><li><bean:message key="register.success.registered"/></li></div>
                <%
                    }
                %>

                <label><span><bean:message key="label.register.firstname"/> :<strong>*</strong></span>
                <input id="firstName" type="text" name="firstName" value="<%= firstName %>" onfocus="showRequiredInfo('firstNameInfo');" onblur="hideRequiredInfo()"/>
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
                <input id="lastName" type="text" name="lastName" value="<%= lastName %>" onfocus="showRequiredInfo('lastNameInfo');" onblur="hideRequiredInfo()"/>
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
                    <input id="userId" type="text" name="userId" value="<%= userId %>"  onfocus="showRequiredInfo('userIdInfo');" onblur="hideRequiredInfo()"/>
                    <input type="button" style="display:none" id="check" onclick="checkUserId();" class="btn" value="<bean:message key="label.register.check"/>"/>
                </label>
                <div id="userIdInfo" class="required">
                    <bean:message key="label.help.userid"/>
                </div>
                <h5 id="notAvailable"><bean:message key="register.error.idnotexist"/></h5>
                <h5 id="available" class="available"><bean:message key="register.success.idavailable"/></h5>
                <h5 id="userIdError"><bean:message key="register.error.invaliduserid"/></h5>
                <%
                    if(error != null && error.matches(".*,userId,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invaliduserid"/></h5>
                <%
                    }
                %>

                <label><span><bean:message key="label.login.password"/> :<strong>*</strong></span>
                <input id="upassword" type="password" name="upassword"  onfocus="showRequiredInfo('passwordInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <div id="passwordInfo" class="required"><bean:message key="label.help.password"/></div>
                <h5 id="upasswordError"><bean:message key="register.error.invalidpassword"/></h5>
                <h5 id="npasswordError"><bean:message key="register.error.passwordmatch"/></h5>
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
                <%
                    if(error != null && error.matches(".*,notequal,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.passwordmatch"/></h5>
                <%
                    }
                %>
                <label><span><bean:message key="label.register.displayname"/> :<strong>*</strong></span>
                <input id="dispName" type="text" name="dispName" value="<%= displayName %>"  onfocus="showRequiredInfo('dispNameInfo');" onblur="hideRequiredInfo()"/>
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
                    <input id="email" type="text" name="email" value="<%= email %>" onfocus="showRequiredInfo('emailInfo');" onblur="hideRequiredInfo()"/>
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

                <label><span><bean:message key="label.register.mobile"/> :<strong>*</strong></span>
                <input id="mobile" type="text" name="mobile" value="<%= mobile %>"  onfocus="showRequiredInfo('mobileInfo');" onblur="hideRequiredInfo()"/>
                </label>
                <div id="mobileInfo" class="required"><bean:message key="label.help.mobile"/></div>
                
                <h5 id="mobileError"><bean:message key="register.error.invalidmobile"/></h5>
                <%
                    if(error != null && error.matches(".*,mobile,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.invalidmobile"/></h5>
                <%
                    }
                %>

                <label><span><bean:message key="label.register.chooserole"/> :<strong>*</strong></span>
                <select id="role" name="role">
                    <option value="-1"><bean:message key="label.register.selectrole"/></option>
                    <%
                        for(int i=0;i<roles.length;i++) {
                            if(roles != null && roles[i][0].equals(role)) {
                    %>
                    <option selected value="<%= roles[i][0] %>"><%= roles[i][1] %></option>
                    <%
                            } else {
                    %>
                    <option value="<%= roles[i][0] %>"><%= roles[i][1] %></option>
                    <%      }
                        }
                    %>
                    
                </select>
                </label>
                <h5 id="roleError"><bean:message key="register.error.selectrole"/></h5>
                <%
                    if(error != null && error.matches(".*,role,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.selectrole"/></h5>
                <%
                    }
                %>

                <label><span><bean:message key="label.register.chooselanguage"/> :<strong>*</strong></span>
                <select id="langId" name="langId">
                    <option value="-1"><bean:message key="label.register.selectlanguage"/></option>
                    <%
                         ArrayList langList = menuObj.getAvailableLanguage();
                         Iterator langIt = langList.iterator();
                         while(langIt.hasNext()){
                             LanguageBean lBean = (LanguageBean)langIt.next();
                             if(langId != null && Integer.parseInt(langId)== lBean.getLanguageId()) {
                    %>
                    <option selected value="<%= lBean.getLanguageId() %>"><%= lBean.getLanguageName() %>&nbsp;&nbsp;(<%= lBean.getDescription() %>)</option>
                    <%
                             } else {

                    %>
                    <option value="<%= lBean.getLanguageId() %>"><%= lBean.getLanguageName() %>&nbsp;&nbsp;(<%= lBean.getDescription() %>)</option>
                    <%
                            }
                         }
                    %>
                </select>
                </label>
                <h5 id="langIdError"><bean:message key="register.error.selectlanguage"/></h5>
                <%
                    if(error != null && error.matches(".*,langId,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.selectlanguage"/>e</h5>
                <%
                    }
                %>

                <label><span><bean:message key="label.register.topics"/><strong>*</strong></span>
                <select id="topicId" name="topicId">
                    <option value="-1"><bean:message key="label.register.selecttopic"/></option>
                    <%
                         ArrayList topicList = menuObj.getTopicListByLanguage(1);
                         Iterator topicIt = topicList.iterator();
                         while(topicIt.hasNext()){
                             Topic topic = (Topic)topicIt.next();
                             if(topicId!=null && Integer.parseInt(topicId)==topic.getTopicId()) {
                    %>
                    <option selected value="<%= topic.getTopicId() %>"><%= topic.getTopicName() %></option>
                    <%
                             } else {
                    %>
                    <option value="<%= topic.getTopicId() %>"><%= topic.getTopicName() %></option>
                    <%
                            }
                         }
                    %>
                </select>
                </label>
                <h5 id="topicIdError"><bean:message key="register.error.selecttopic"/></h5>
                <%
                    if(error != null && error.matches(".*,topicId,.*")) {
                %>
                <h5 style="display: inline"><bean:message key="register.error.selecttopic"/></h5>
                <%
                    }
                %>
                
                <label><span><bean:message key="label.register.qualification"/> :<strong>*</strong></span>
                <input id="qualification" type="text" name="qualification" value="<%= qualification %>"  onfocus="showRequiredInfo('qualificationInfo');" onblur="hideRequiredInfo()"/>
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
                <textarea rows="5" cols="20" id="profile" name="profile" onfocus="showRequiredInfo('profileInfo');" onblur="hideRequiredInfo()"><%= profile %></textarea>
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
                
                <div id="captchaDiv" class="captcha">
                    <a target="_blank" href="pages/help_classic_captcha.html"><bean:message key="label.register.help"/></a>
                    <div>
                        <img id="imgCaptcha" src="captchaImage"  alt="Captcha image" width="206" height="50">
                    </div>
                </div>
                <div id="captchaInfo" class="required" style="position: relative;margin-top: 10px;"><bean:message key="label.help.captcha"/></div>
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
                    document.getElementById('check').style.display = "inline";
                    document.getElementById('reCaptchaImg').style.display = "inline";
                    document.getElementById('reCaptchaLink').style.display = "inline";
                </script>

                <div class="spacer"></div>
                <div class="controls">
                    <button type="submit"><bean:message key="label.register.register"/></button>
                    <button type="reset" onclick="resetRegistrarationForm();"><bean:message key="label.button.reset"/></button>
                </div>
                <br />
               
            </form>
        </div>
        <% } %>
    </body>
</html>