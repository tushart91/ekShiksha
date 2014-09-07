<%-- 
    Document   : newheader
    Created on : 30 Mar, 2012, 12:16:50 PM
    Author     : rkjangir
--%>

<jsp:useBean id="menuObj" class="ekalavya.econtent.helper.EContentMenuHelper"/>
<jsp:useBean id="login" class="ekalavya.econtent.helper.UserHandler"/>
<%@page import="ekalavya.econtent.bean.Topic,java.util.*" %>
<%@page import="ekalavya.econtent.bean.LanguageBean,ekalavya.econtent.bean.URLBean" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@taglib uri="/tags/struts-tiles" prefix="tiles"%>
<%@taglib uri="/tags/struts-html" prefix="html"%>
<%
    if(session.getAttribute("langId") == null || session.getAttribute("langName") == null) {
        session.setAttribute("langId","1");
        session.setAttribute("langName","english");
    }
    int langId = Integer.parseInt((String)session.getAttribute("langId"));  // get the current language from the session


%>

<!-- menu -->
<div id="mbar">
	<div class="left"></div>
	<div class="center">
	    <ul>
	        <li style="padding-left:10px;"><a href="econtent.do"><bean:message key="ec.menu.econtenthome"/></a></li>
	        <li><span >|</span></li>
	        <li><a href="availableContents.do"><bean:message key="ec.menu.contents"/></a></li>
	        <li><span >|</span></li>
	        <li><a href="aboutus.do"><bean:message key="label.menu.aboutus"/></a></li>
            <li><span >|</span></li>
            <li><a href="contactus.do"><bean:message key="ec.menu.contachus"/></a></li>
            <li><span >|</span></li>
            <li><a href="feedback.do"><bean:message key="ec.menu.feedback"/></a></li>
            <li><span >|</span></li>
            <li><a href="faq.do"><bean:message key="ec.menu.faq"/></a></li>
        </ul>
	</div>
	<div class="right"></div>
</div>


<div class="welcome">
	<table width="100%">
	<tr>
	<td width="60%">
        <bean:message key="ekshiksha.title.welcome"/>,&nbsp;
        <%
            String displayName = (String)session.getAttribute("user");
            if(displayName == null || displayName.length()<1) {
                out.println("Guest");
        %>
        <%
            } else {
        %>
        <%= displayName %>&nbsp;&nbsp;
        <a href="logout.do"><bean:message key="label.logout.message"/></a>&nbsp;|&nbsp;
        <a href="myprofile.do">Profile</a>
        
        <%
            }
        %>
    </td>
	<td align="right">
        <form style="float:right;" name="localForm" action="">
            <label for="langselect"><bean:message key="ec.menu.langselect"/></label>
            <select id="langselect" class="textlang" name="myLocales" onChange="location.href=this.value">
            <%
                 ArrayList langList = (ArrayList)session.getAttribute("langList");
                 if(langList == null) {
                     langList = menuObj.getAvailableLanguage();
                     session.setAttribute("langList", langList);
                 }
                 Iterator langIt = langList.iterator();
                 while(langIt.hasNext()){
                      LanguageBean lBean = (LanguageBean)langIt.next();
                      if(langId == lBean.getLanguageId())    {
            %>
            <option selected value="changeLocale.do?method=<%= lBean.getDescription().toLowerCase() %>"><%= lBean.getLanguageName() %>&nbsp;&nbsp;(<%= lBean.getDescription() %>)</option>
            <%
                } else {
            %>
            <option value="changeLocale.do?method=<%= lBean.getDescription().toLowerCase() %>"><%= lBean.getLanguageName() %>&nbsp;&nbsp;(<%= lBean.getDescription() %>)</option>
            <%
                }
            }
            %>
            </select>
        </form>
	</td>
	</tr>
	</table>
</div>

	<!-- strip -->
<div class="border" style="background:#CCCCCC; padding:3px;">
	<div class="strip">
	<table width="100%" cellpadding="0" cellspacing="0">
	<tr>
	<td width="61%" colspan="2"><img class="png" src="images/new/logo.png" border="0" /></td>
	<td align="left" width="200px">
	<span style="font-size:16px; font-weight:bold; color:#FFFFFF;">Search</span><br />
	<input type="text" class="searchtextbox" />
	</td>
	<td align="left" style="padding-top:18px;">
	<input type="submit" value="" name="go" class="search" />
	</td>
	</tr>
	</table>
	</div>
</div>