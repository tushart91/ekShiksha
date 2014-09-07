<%--
    Document   : showTranslationTopics
    Created on : 20 Jan, 2011, 4:11:46 PM
    Author     : rkjangir
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="ekalavya.econtent.helper.ShowContentHelper" %>

<%
    boolean isError = false;
    int langId = 0;
    int topicId = 0;
    int linkId = 0;
    String userId = null;
    try{
        userId = (String)session.getAttribute("userId");
        String language = (String)session.getAttribute("translatorLangId");
        if(language == null) {
            langId = 1;
        } else {
            langId = Integer.parseInt(language);
        }
        topicId = Integer.parseInt((String)request.getParameter("topicId"));
        linkId = Integer.parseInt((String)request.getParameter("linkId"));
    } catch(Exception e) {
        isError = true;
    }
    ShowContentHelper show = new ShowContentHelper();
    String url = null;
    String path = null;
    String docPath = null;
    if(!isError) {
        docPath = show.getReviewerUrl(linkId, topicId, userId);
        url = "/pages/eContent/topics/"+docPath;
        path = "showReviewerPage.do?topicId="+topicId+"&linkId="+linkId;
        session.setAttribute("currentAction",path);
        session.setAttribute("topicId", String.valueOf(topicId));
        session.setAttribute("linkId", String.valueOf(linkId));
    }

%>
 <style type="text/css">
.regular{
    font-family:"Lucida Grande", Tahoma, Arial, Verdana, sans-serif;
    font-size:12px;
    text-decoration:none;
    cursor:pointer;
}
.regular:hover {
    font-family:"Lucida Grande", Tahoma, Arial, Verdana, sans-serif;
    font-size:12px;
    text-decoration:none;
    cursor:pointer;
    color:inherit;
}
.regular:visited {
    color:inherit;
    text-decoration: none;
}

</style>
<script type="text/javascript">
    function modalWin(url) {
        var childWin = window.open(url,'name','height=600,width=600,location=no,toolbar=no,directories=no,status=no,continued from previous linemenubar=no,scrollbars=no,resizable=no ,modal=yes').focus();

}
</script>
<%
    String role = (String)session.getAttribute("role");
    if(isError) {
%>
<h3 align="center" style="margin-top: 15px;">There may be some problem while showing the contents. Please try after some time.</h3>
<%
    } else if(docPath==null) {
%>
<h3 align="center" style="margin-top: 15px;">Contents are not available.</h3>
<%
    } else if(role!=null && role.equals("reviewer")) {
%>
<p align="center" style="border-bottom:2px solid #21bef7;font-size: 12px;font-weight: bold;">
    <strong style="color:red;margin-left: 5px;">Red</strong> - Not translated &nbsp;|
    <strong style="color:orange;margin-left: 5px;">Orange</strong> - Translated &nbsp;|
    <strong style="color:gold;margin-left: 5px;">Yellow</strong> - Reviewed &nbsp;|
    <strong style="color:green;margin-left: 5px;">Green</strong> - Published &nbsp;|
</p>
<jsp:include page="<%= url %>"/>
<%
    } else  {
%>
<h3 align="center" style="margin-top: 15px;">Please login before continue.</h3>
<%
    }
%>