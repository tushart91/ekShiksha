<%-- 
    Document   : titletranslationrequest
    Created on : 26 Jul, 2011, 2:29:39 PM
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
    String tLangId = (String)session.getAttribute("translatorLangId");
    String unicode = "";
    if(tId != null && lId != null && translatedTitle != null && role != null && userId != null && tLangId != null && role.equals("translator")) {
        try {
            int topicId = Integer.parseInt(tId);
            int linkId = Integer.parseInt(lId);
            int language = Integer.parseInt(tLangId);
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
            if(isChildTopic && helper.searchAuthorizedTranslation(topicId, linkId, userId)) {
                success = helper.translateTitle(topicId, linkId, language, translatedTitle, 2);
            } else {
                success = false;
            }
        }catch(Exception e) {
            success = false;
        }
    }
    out.print(success);
%>