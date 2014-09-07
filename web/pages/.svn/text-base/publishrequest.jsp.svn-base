<%-- 
    Document   : publishrequest
    Created on : 30 Aug, 2011, 11:12:22 AM
    Author     : rkjangir
--%>

<%@page import="ekalavya.econtent.helper.ShowContentHelper,ekalavya.econtent.helper.UserHandler" %>
<%@page import="ekalavya.econtent.helper.EContentMenuHelper" %>
<%
    String tId = request.getParameter("topicId"); //getting the topic id from the request
    String lId = request.getParameter("linkId"); //getting the link id from the request
    String userId = (String)session.getAttribute("userId"); //getting the user id from the session
    String language = (String)session.getAttribute("publisherLangId"); // getting the publisher language id from the session
    if(tId != null && lId != null && language != null && userId != null) {
        try {
            int topicId = Integer.parseInt(tId);
            int linkId  = Integer.parseInt(lId);
            int langId = Integer.parseInt(language);
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
            if(isChildTopic && !helper.isPublisherAssigned(topicId, linkId, langId)) {
                if(helper.assignPublisher(topicId, linkId, langId, userId)) {
                    out.println("true");
                } else {
                    out.println("false");
                }
            }else {
                out.println("false");
            }
        }catch(Exception e) {
            out.println("false");
        }
    }
%>
