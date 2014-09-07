<%-- 
    Document   : footer
    Created on : 19 Apr, 2012, 3:02:19 PM
    Author     : rkjangir
--%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@page import="ekalavya.econtent.helper.GeneralProcess"%>
<%
    String filePath = getServletContext().getRealPath("/")+"properties";
    String fileName = "hitcount.txt";
    String count    = GeneralProcess.read(fileName, filePath);
%>
<div class="footerbox">
<div align="center">Contents on this site are licensed under Creative Common Attribution - 2.5 (India)</div>
</div>

<div class="footer">
    <div style="color: #474747;font-size: 11px;padding-left: 3px;padding-top:5px;width:39%;float:left;letter-spacing:0.5px;">You are visitor number : <span style="font-weight: bold;color: #cb0417;"><%=count%></span></div>
    <div style="font-size: 10px;padding-top:5px;width:60%;float:right;text-align: right;">
        <a href="contactus.do"><bean:message key="ec.menu.contachus"/></a> |
        <a href="aboutus.do"><bean:message key="label.menu.aboutus"/></a> |
        <a href="feedback.do"><bean:message key="ec.menu.feedback"/></a> |
        <a href="#" >Site Map</a>
    </div>
<table width="100%">
    <tr>
        <td width="45%">
        Follow us on :
        &nbsp;<a href="http://www.facebook.com/ekshikshaindia" target="_blank"><img style="border:none;" alt="Facebook" src="images/facebook.png" height="24" width="24" align="absmiddle"></a>
        &nbsp;<a href="http://twitter.com/#!/ekShiksha" target="_blank"><img alt="Twitter" style="border:none;" src="images/twitter.png" height="24" width="24" align="absmiddle" ></a>

        </td>
        <td align="right">
            Creative Common Attribution - 2.5 (India) License <a href="http://creativecommons.org/" target="_blank"><img src="images/cc.gif" border="0" align="absmiddle" alt="Creative Common Attribution - 2.5 (India) License" /></a>
        </td>
    </tr>
</table>

</div>