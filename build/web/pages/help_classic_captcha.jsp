<%-- 
    Document   : help_classic_captcha
    Created on : 30 Aug, 2011, 3:49:59 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
      <title><bean:message key="help.captcha.title"/>ekShiksha! Captcha Help</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="../style/errors.css" media="screen" />
  </head>

  <body>
  <div id="wrap">
      <div id="top"> </div>
        <div id="header">
        <div class="logo">
        <h1><a href="../econtent.do"><bean:message key="ekshiksha.title.message"/></a></h1>
        <h2><bean:message key="ekshiksha.subtitle.message"/></h2>
        </div>
        <div class="details">
        </div>
        </div>
      <div id="content" style="height:300px;">
          <h1><bean:message key="help.captcha.heading"/>What if I can't read the confirmation code?</h1>
          <p><bean:message key="help.captcha.messageone"/>If you are having trouble seeing this image, that's normal! The text is intentionally distorted to help fight automated spam programs. If no image appears, please make sure your browser is set to display images and try again.<br><br>
         <bean:message key="help.captcha.messagetwo"/>If you are not sure what the code is, make your best guess. If you guess incorrectly, you can try a different code on the next screen after you submit the form. Codes may contain a mixture of letters and numbers, and letters are case sensitive. </p>
      </div>
      <div id="footer">
    <div style="float:left; margin-left: 275px;">Contents on this site are licensed user Creative Common  Attribution - 2.5 (India)</div>
<img style="margin-top:5px; float:left; margin-left: 5px;" src="../images/cc.gif" alt="Creative Common Attribution" height="20" width="64">
      </div>
</div>
<div id="bottom"> </div>
</body>
</html>
