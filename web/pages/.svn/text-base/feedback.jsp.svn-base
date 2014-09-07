<%-- 
    Document   : feedback
    Created on : 4 May, 2011, 12:41:55 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="nl.captcha.Captcha"%>
<%@page import="ekalavya.econtent.helper.UserHandler,ekalavya.econtent.bean.User"%>
<%
            String url = "feedback.do";
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
        <title><bean:message key="label.feedback.title"/></title>
        <script type="text/javascript" src="js/ekShiksha_main.js"></script>
        <script type="text/javascript" src="js/ajaxcaptcha.js"></script>
        <script type="text/javascript" src="js/ajaxscript.js"></script>
    </head>
    <%
            //getting error string from session
            String error = (String)session.getAttribute("error");
            session.removeAttribute("error"); //remove error from session
            //getting the userid if logged in
            String id = (String)session.getAttribute("userId");
            //declaring variable for form parameter to be saved
            User user = new User(); //declaring the object of User class
            UserHandler handler = new UserHandler(); // declaring the object of UserHandler class
            String name = "";
            String userId = "";
            String topic = "-1";
            String email = "";
            String comment = "";
            String pageUrl = "";
            if(id != null) {
                user = handler.getUser(id);
                if(user != null) {
                    name = user.getFirstName()+" "+user.getLastName();
                    email = user.getEmail();
                    userId = id;
                } else {
                    
                }
            }
            if(error!=null && error.length()>1 && !error.matches(".*,success,.*")) {
                //getting form parameters values
                name = request.getParameter("name");
                userId = request.getParameter("userId");
                email = request.getParameter("email");
                pageUrl = request.getParameter("pageUrl");
                topic = request.getParameter("topic");
                comment = request.getParameter("comment");
            }

            String[] topicList = {"General Inquiries","Bug Report","Feedback","Report Abuse"};
        %>
    <body>
        <div id="stylized" class="myform">
            <h1><bean:message key="label.feedback.heading"/></h1>
            <p>
               <bean:message key="label.feedback.description"/>&nbsp;<bean:message key="label.register.required"/>
            </p>

            <form name="feedbackform" id="feedbackform" method="post" action="sendfeedback.do" onsubmit="return validateFeedbackForm();">
            <%
                 if(error != null && error.matches(".*,error,.*")) {
            %>
            <div align="center" class="errormsg"><li><bean:message key="register.error.unable"/></li></div>
            <%
                 }
            %>
            <%
                 if(error != null && error.matches(".*,useridnotexist,.*")) {
            %>
            <div align="center" class="errormsg"><li><bean:message key="feedback.error.idnotexist"/></li></div>
            <%
                }
            %>
            <%
                 if(error != null && error.matches(".*,info,.*")) {
            %>
            <div align="center" class="errormsg"><li><bean:message key="feedback.error.error"/></li></div>
            <%
                }
            %>
            
            <label><span><bean:message key="label.register.topics"/><strong>*</strong></span>
                <select id="topic" name="topic">
                    <option value="-1"><bean:message key="label.register.selecttopic"/></option>
                    <%
                        for(int i=0;i<topicList.length;i++) {
                            if(topic.equals(topicList[i])) {
                    %>
                    <option selected value="<%= topicList[i]%>"><%= topicList[i]%></option>
                    <%
                            }else {
                    %>
                    <option value="<%= topicList[i]%>"><%= topicList[i]%></option>
                    <%
                            }
                        }
                    %>
                </select>
            </label>
            <h5 id="topicError"><bean:message key="register.error.selecttopic"/></h5>
            <%
                 if(error != null && error.matches(".*,topic,.*")) {
            %>
            <h5 id="jtopicError"><bean:message key="register.error.selecttopic"/></h5>
            <%
                }
            %>
            <label><span><bean:message key="label.feedback.name"/> :<strong>*</strong></span>
                <input id="name" type="text" name="name" value="<%= name %>" onfocus="showRequiredInfo('nameInfo');" onblur="hideRequiredInfo()"/>
            </label>
            <div id="nameInfo" class="required"><bean:message key="feedback.help.name"/></div>
            <h5 id="nameError"><bean:message key="feedback.error.name"/></h5>
            <%
                 if(error != null && error.matches(".*,name,.*")) {
            %>
            <h5 id="jnameError"><bean:message key="feedback.error.name"/></h5>
            <%
                }
            %>

            <label><span><bean:message key="label.register.email"/> :<strong>*</strong></span>
                    <input id="email" type="text" name="email" value="<%= email %>" onfocus="showRequiredInfo('emailInfo');" onblur="hideRequiredInfo()"/>
            </label>
            <div id="emailInfo" class="required"><bean:message key="feedback.help.email"/></div>
            <h5 id="emailError"><bean:message key="register.error.enteremail"/></h5>
            <h5 id="iemailError"><bean:message key="register.error.invalidemail"/></h5>
            <%
                 if(error != null && error.matches(".*,email,.*")) {
            %>
            <h5 id="jiemailError"><bean:message key="register.error.invalidemail"/></h5>
            <%
                }
            %>

            <label><span><bean:message key="label.login.userid"/> :<strong>*</strong></span>
                    <input id="userId" type="text" name="userId" value="<%= userId %>"  onfocus="showRequiredInfo('userIdInfo');" onblur="hideRequiredInfo()"/>
            </label>
            <div id="userIdInfo" class="required">
                 <bean:message key="feedback.help.userid"/>
            </div>
                    <h5 id="userIdError"><bean:message key="register.error.invaliduserid"/></h5>
            <%
                 if(error != null && error.matches(".*,userid,.*")) {
            %>
            <h5 id="juserIdError"><bean:message key="register.error.invaliduserid"/></h5>
            <%
                }
            %>

            <label><span><bean:message key="label.feedback.page"/> :<strong>&nbsp;</strong></span>
                    <input id="pageUrl" type="text" name="pageUrl" value="<%= pageUrl %>" onfocus="showRequiredInfo('urlInfo');" onblur="hideRequiredInfo()"/>
            </label>
            <div id="urlInfo" class="required"><bean:message key="feedback.help.url"/></div>

            <label><span><bean:message key="label.feedback.comment"/> :<strong>*</strong></span>
                <textarea rows="5" cols="20" id="comment" name="comment" onfocus="showRequiredInfo('commentInfo');" onblur="hideRequiredInfo()"><%= comment %></textarea>
            </label>
            <div id="commentInfo" class="required"><bean:message key="feedback.help.comment"/></div>
            <h5 id="commentError"><bean:message key="feedback.error.comment"/></h5>
            <%
                 if(error != null && error.matches(".*,comment,.*")) {
            %>
            <h5 id="jcommentError"><bean:message key="feedback.error.comment"/></h5>
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
                <input id="captchaText" style="width:85px;margin-right: 10px;" type="text" name="captchaText"  onfocus="showRequiredInfo('captchaInfo');" onblur="hideRequiredInfo()"/>

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
                <h5 id="jcaptchaError" style="display: inline"><bean:message key="register.error.captchamatch"/></h5>
                <%
                    }
                %>
                <script type="text/javascript">
                    document.getElementById('reCaptchaImg').style.display = "inline";
                    document.getElementById('reCaptchaLink').style.display = "inline";
                </script>
            <div class="spacer"></div>
            <div class="controls">
                <button type="submit"><bean:message key="label.feedback.submit"/></button>
                <button type="reset" onclick="resetFeedbackForm();"><bean:message key="label.button.reset"/></button>
            </div>
            </form>
        </div>
    </body>
</html>
