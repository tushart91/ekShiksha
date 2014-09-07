<%-- 
    Document   : titlepublishrequest
    Created on : 30 Aug, 2011, 11:26:43 AM
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
    String reviewedTitle = request.getParameter("publishedTitle");
    String role = (String)session.getAttribute("role");
    String userId = (String)session.getAttribute("userId");
    String pLangId = (String)session.getAttribute("publisherLangId");
    if(tId != null && lId != null && reviewedTitle != null && role != null && userId != null && pLangId != null && role.equals("publisher")) {
        try {
            int topicId = Integer.parseInt(tId);
            int linkId = Integer.parseInt(lId);
            int language = Integer.parseInt(pLangId);
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
            if(isChildTopic && helper.searchAuthorizedPublisher(topicId, linkId, userId)) {
                success = helper.translateTitle(topicId, linkId, language, reviewedTitle, 4);
                if(success) {
                    success = helper.publishTitle(reviewedTitle, topicId, linkId, language);
                }
            } else {
                success = false;
            }
        }catch(Exception e) {
            success = false;
        }
    }
    out.print(success);
%>
