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
    int langId = 0; // to store the language id
    int topicId = 0; // to store the topic id
    int linkId = 0; // to store the link id
    String userId = null; // to store the user id of the person who is logged in
    try{
        userId = (String)session.getAttribute("userId"); //getting the user id from the session
        String language = (String)session.getAttribute("translatorLangId"); // getting the translator language id from the session
        if(language == null) { //checking whether the translator language id is null or not
            langId = 1; //if null set it to 1 (english)
        } else {
            langId = Integer.parseInt(language); // else parse the language string to its integer value
        }
        topicId = Integer.parseInt((String)request.getParameter("topicId")); //getting topic id from the request
        linkId = Integer.parseInt((String)request.getParameter("linkId")); //getting link id from the request
    } catch(Exception e) { //catching exception
        isError = true; //if exception occurred set isError to true
    }
    ShowContentHelper show = new ShowContentHelper(); //creating object of ShowContentHelper class
    String url = null; //to store the real path of the jsp document to be included in this page
    String path = null; //to store the full path to show the document
    String docPath = null; //to store the url of a document
    if(!isError) {
        docPath = show.getTranslatorUrl(linkId, topicId, langId, userId);
        url = "/pages/eContent/topics/"+docPath;
        path = "showTranslationPage.do?topicId="+topicId+"&linkId="+linkId;
        session.setAttribute("currentAction",path); //setting current path into session
        session.setAttribute("topicId", String.valueOf(topicId)); //setting current topic id into session
        session.setAttribute("linkId", String.valueOf(linkId)); //setting current link id into session
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
        var childWin = window.open(url,'name','height=550,width=600,location=no,toolbar=no,directories=no,status=no,continued from previous linemenubar=no,scrollbars=no,resizable=no ,modal=yes').focus();
        
}
</script>
<%
    String role = (String)session.getAttribute("role"); //getting role of the user who is logged in
    if(isError) { //checking whether there is any Error
%>
<h3 align="center" style="margin-top: 15px;">There may be some problem while showing the contents. Please try after some time.</h3>
<%
    } else if(docPath==null) { //checking whether document path is null or not
%>
<h3 align="center" style="margin-top: 15px;">Contents are not available.</h3>
<%
    } else if(role!=null && role.equals("translator")) { //checking whether user is logged in as a translator or not
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