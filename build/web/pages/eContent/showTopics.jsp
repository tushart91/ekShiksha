<%-- 
    Document   : showTopics
    Created on : 15 Sep, 2010, 4:08:34 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="ekalavya.econtent.helper.ShowContentHelper,ekalavya.econtent.helper.ContentHandler" %>
<%@ page import="ekalavya.econtent.helper.UserHandler" %>
<script type="text/javascript" src="js/ajaxscript.js"></script>
<%
    int langId=0;
    int topicId=0;
    int linkId=0;
    int tlangId = 0;
    ShowContentHelper show = new ShowContentHelper();
    ContentHandler handler = new ContentHandler();
    UserHandler userHandler = new UserHandler();
    boolean isError = false;
    try{
        String language = (String)session.getAttribute("langId");
        if(language == null) {
            langId = 1;
        } else {
            langId = Integer.parseInt(language);
        }               
        topicId = Integer.parseInt((String)request.getParameter("topicId"));
        linkId = Integer.parseInt((String)request.getParameter("linkId"));

    } catch(Exception e) {
        //out.println("<h6>Currently we are not able to show contents to you. Sorry for inconvience.</h6>");
        isError = true;
    }
    String url = null;
    String path = null;
    String docPath = null;
    if(!isError) {
        docPath = show.getUrl(linkId, topicId, langId);
        url = "/pages/eContent/topics/"+docPath;
        path = "eContent-Show.do?topicId="+topicId+"&linkId="+linkId;
        session.setAttribute("currentAction",path);
    }
%>
<%
    String role = (String)session.getAttribute("role");
    String userId = (String)session.getAttribute("userId");
    String tlanguage = (String)session.getAttribute("translatorLangId"); // getting the translator language id from the session
    if(role!=null && userId != null &&  !isError && (handler.getOriginalLanguage(topicId, linkId))!=userHandler.getUserLanguage(userId)) {
        if(role.equals("publisher")) {
            if(show.searchAuthorizedPublisher(topicId, linkId, userId)) {
%>
<div><a class="linkbutton" href="showPublisherPage.do?topicId=<%= topicId %>&linkId=<%= linkId %>">Publish this content.</a> </div>
<%
            } else if(!show.isPublisherAssigned(topicId, linkId, langId)){
%>
<h2 style="font-size:12px;font-weight: bold; display:none;" align="center" id="prejected" ><div align="center">Error! You may have exceeded the publishing limit per user or this topic does not come under your topic tree.</div></h2>
<h2 align="center" id="paccepted" style="font-size:13px; font-weight: bold;display:none;"><div align="center">Your request to become a publisher of this content is accepted.</div></h2>
<div id="pmessage"><a class="linkbutton" href="#">Become the publisher of this content</a></div>
<%
            }
%>

<%
        } else if(role.equals("reviewer")) {
            if(show.searchAuthorizedReviewer(topicId, linkId, userId)) {
%>
<div><a class="linkbutton" href="showReviewerPage.do?topicId=<%= topicId %>&linkId=<%= linkId %>">Review this content.</a></div>
<%
            }else if(!show.isReviewerAssigned(topicId, linkId, langId)){
%>
<h2 style="font-size:12px;font-weight: bold; display:none;" align="center" id="rrejected" ><div align="center">Error! You may have exceeded the reviewing limit per user or this topic does not come under your topic tree.</div></h2>
<h2 align="center" id="raccepted" style="font-size:13px; font-weight: bold;display:none;"><div align="center">Your request to become a reviewer of this content is accepted.</div></h2>
<div id="rmessage"><a class="linkbutton" href="#">Become the reviewer of this content</a></div>
<%
            }
%>
<%
        } else if(role.equals("translator")) {
            tlangId = Integer.parseInt(tlanguage);
            if(show.searchAuthorizedTranslation(topicId, linkId, userId)) {
%>
<div><a class="linkbutton" href="showTranslationPage.do?topicId=<%= topicId %>&linkId=<%= linkId %>">Translate this content.</a></div>
<%
            } else if(!show.isTranslatorAssigned(topicId, linkId, tlangId)){
%>
<h2 style="font-size:12px;font-weight: bold; display:none;" align="center" id="rejected" ><div align="center">Error! You may have exceeded the translation limit per user or this topic does not come under your topic tree.</div></h2>
<h2 align="center" id="accepted" style="font-size:13px; font-weight: bold;display:none;"><div align="center">Your request to become a translator of this content is accepted.</div></h2>
<div id="message"><a class="linkbutton" href="javascript:requestTranslation('<%=topicId%>','<%=linkId%>');">Become the translator of this content</a></div>
<%
            }
%>
<%
        }
    }
%>
<%
    if(!isError && docPath!=null) {
%>
<jsp:include page="<%= url %>"/>
<%
    } else {
%>
<h6>Currently we are not able to show contents to you. Sorry for inconvenience.</h6>
<%
    }
%>
