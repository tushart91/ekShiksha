<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%

        session.setAttribute("currentAction","econtent.do");
%>
<%
    String role = (String)session.getAttribute("role");
    if(role==null) {
%>
<%-- sign up message --%>
<div class="news-cont-border">
    <div class="news-cont">
        <div class="news-text"><bean:message key="label.collaborator.message"/>&nbsp;<a href="registerMe.do"><bean:message key="label.login.singup"/></a></div>
	</div>
</div>
<div class="news-cont-border">
	<div class="news-cont">
        <div class="news-text"><bean:message key="label.signup.message"/>&nbsp;<a href="userregistration.do"><bean:message key="label.login.singup"/></a></div>
	</div>
</div>
<%
    }
%>


<%-- home page contents --%>
<div class="conthead" style="clear:both;"><bean:message key="ec.intro.heading" /></div>
<bean:message key="ec.page.intro"/>
<br>
<div id="social" class="media">
    <iframe src="http://www.facebook.com/plugins/like.php?app_id=174989942559909&amp;href=www.it.iitb.ac.in%2Fekshiksha%2Fecontent.do&amp;send=false&amp;layout=button_count&amp;width=450&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font=arial&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:90px; height:21px;padding-top:5px;" allowTransparency="true"></iframe>

    <a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
</div>
