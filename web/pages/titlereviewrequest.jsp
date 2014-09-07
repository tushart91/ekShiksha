<%-- 
    Document   : titlereviewrequest
    Created on : 29 Aug, 2011, 12:40:57 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@page import="ekalavya.econtent.helper.ShowContentHelper" %>
<%@page import="ekalavya.econtent.helper.UserHandler" %>
<%@page import="ekalavya.econtent.helper.EContentMenuHelper" %>
<%
    request.setCharacterEncoding("utf-8");
    boolean success = false;
    String tId = request.getParameter("topicId");
    String lId = request.getParameter("linkId");
    String translatedTitle = request.getParameter("translatedTitle");
    String role = (String)session.getAttribute("role");
    String userId = (String)session.getAttribute("userId");
    String rLangId = (String)session.getAttribute("reviewerLangId");
    String unicode = "";
    if(tId != null && lId != null && translatedTitle != null && role != null && userId != null && rLangId != null && role.equals("reviewer")) {
        try {
            int topicId = Integer.parseInt(tId);
            int linkId = Integer.parseInt(lId);
            int language = Integer.parseInt(rLangId);
            ShowContentHelper helper=  new ShowContentHelper();
            UserHandler handler = new UserHandler();
            EContentMenuHelper menuHelper = new EContentMenuHelper();
            int userTopicId = handler.getUserTopic(userId);
            boolean isChildTopic = false;
            if(userTopicId == topicId) {
                isChildTopic = true;
            } else {
                isChildTopic = menuHelper.isChild(userTopicId, topicId);
            }
            if(isChildTopic && helper.searchAuthorizedReviewer(topicId, linkId, userId)) {
                success = helper.translateTitle(topicId, linkId, language, translatedTitle, 3);
            } else {
                success = false;
            }
        }catch(Exception e) {
            success = false;
        }
    }
    out.print(success);
%>