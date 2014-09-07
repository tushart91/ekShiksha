<%--
    Document   : showContentInfo
    Created on : 12 Jul, 2011, 3:26:36 PM
    Author     : rkjangir
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="ekalavya.econtent.helper.ShowContentHelper" %>
<%@page import="ekalavya.econtent.helper.UserHandler" %>
<%@page import="ekalavya.econtent.helper.EContentMenuHelper" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%
    boolean error = false;
    String tId = request.getParameter("topicId");
    String lId = request.getParameter("linkId");
    String translatorId = request.getParameter("translatorId");
    String reviewerId = request.getParameter("reviewerId");
    String publisherId = request.getParameter("publisherId");
    if(translatorId != null && translatorId.equals("null")) {
        translatorId = null;
    }
    if(reviewerId != null && reviewerId.equals("null")) {
        reviewerId = null;
    }
    if(publisherId != null && publisherId.equals("null")) {
        publisherId = null;
    }
    ShowContentHelper show = new ShowContentHelper();
    String role = (String)session.getAttribute("role");
    String userId = (String)session.getAttribute("userId");
    int langId = 1;
    int translatorLangId= 0;
    int reviewerLangId = 0;
    int publisherLangId = 0;
    int topicId = -1;
    int linkId = -1;
    try{
         String language = (String)session.getAttribute("langId");
         if(language == null) {
             langId = 1;
         } else {
             langId = Integer.parseInt(language);
         }
         if((String)session.getAttribute("translatorLangId") != null) {
             translatorLangId = Integer.parseInt((String)session.getAttribute("translatorLangId"));
         }
         if((String)session.getAttribute("reviewerLangId") != null) {
             reviewerLangId = Integer.parseInt((String)session.getAttribute("reviewerLangId"));
         }
         if((String)session.getAttribute("publisherLangId") != null) {
             publisherLangId = Integer.parseInt((String)session.getAttribute("publisherLangId"));
         }
         topicId = Integer.parseInt(tId);
         linkId = Integer.parseInt(lId);
    } catch(Exception e) {
         langId = 1;
         error = true;
    }
%>
<%
    if(error) {
%>
<p align="center" style="color:#B4241B;font-weight: bold;font-size: 100% !important;"><bean:message key="table.detail.error"/></p>
<%
    } else {
%>
<!-- Displaying information of translator, reviewer and publishers details of each topic -->
             <!-- Displaying translator, reviewer and publisher information -->
             <%
                /* Display translator information */
                if(translatorId != null && translatorId.length() > 1) { // if translator is assigned
             %>
             <div class="person-info"><span><bean:message key="table.title.translator"/> : </span><a class="user-info" rel="#userInfo" href="pages/viewUser.jsp?userId=<%= translatorId %>"><%=translatorId %></a></div>
             <%
                } else { // if translator is not assigned
             %>
             <div class="person-info"><span><bean:message key="table.title.translator"/> : </span><bean:message key="table.title.notassigned"/></div>
             <%
                }
                /* Display reviewer information */
                if(reviewerId != null && reviewerId.length() > 1) { // if reviewer is assigned
             %>
             <div class="person-info"><span><bean:message key="table.title.reviewer"/> : </span><a class="user-info" rel="#userInfo" href="pages/viewUser.jsp?userId=<%= reviewerId %>"><%= reviewerId %></a></div>
             <%
                } else { // if reviewer is not assigned
             %>
             <div class="person-info"><span><bean:message key="table.title.reviewer"/> : </span><bean:message key="table.title.notassigned"/></div>
             <%
                }
                /* Display publisher information */
                if(publisherId != null && publisherId.length() > 1) { // if publisher is assigned
             %>
             <div class="person-info"><span><bean:message key="table.title.publisher"/> : </span><a class="user-info" rel="#userInfo" href="pages/viewUser.jsp?userId=<%= publisherId %>"><%= publisherId %></a></div>
             <%
                } else { // if publisher is not assigned
             %>
             <div class="person-info"><span><bean:message key="table.title.publisher"/> : </span><bean:message key="table.title.notassigned"/></div>
             <%
                }
             %>

             <%
                if(role != null && userId != null) {
                    if(role.equals("translator")) { // show functionality if user is translator
                        if(translatorLangId == langId) { // if the current selected language is equal to translator language
                            if(translatorId != null && translatorId.length() > 1) { // if translator is assigned
                                if(show.searchAuthorizedTranslation(topicId, linkId, userId)) {
                                    // if the current user is authorized to translate this content
             %>
             <div class="action-div">
                <button name="translateTitle" class="linkbutton" rel="#translteTitle" id="<%= topicId %>;<%= linkId %>"><bean:message key="table.button.translatetitle"/></button>&nbsp;&nbsp;
                <button class="linkbutton" id="translateIt" name="showTranslationPage.do?topicId=<%=topicId %>&linkId=<%= linkId %>"><bean:message key="table.button.translatetopic"/></button>
             </div>
             <%
                                }
                            } else { // if translator is not assigned
                                if(show.getTranslationLimit(userId) - show.countUserTranslation(userId) > 0) {
                                    // if translator is allowed to translate more content
                                    UserHandler handler = new UserHandler();
                                    EContentMenuHelper helper = new EContentMenuHelper();
                                    int userTopicId = handler.getUserTopic(userId);
                                    boolean isChildTopic = false;
                                    if(userTopicId == topicId) {
                                        isChildTopic = true;
                                    } else {
                                        isChildTopic = helper.isChild(userTopicId, topicId);
                                    }
                                    if(isChildTopic) {
             %>
             <div class="action-div">
                <button name="becomeTranslator" class="linkbutton" rel="#becomeTranslator" id="<%= topicId %>;<%= linkId %>"><bean:message key="table.button.requesttranslation"/></button>
             </div>
             <%
                                    }
                                }
                            }
                        }
                    } else if(role.equals("reviewer")) { // show functionality if user is reviewer
                        if(reviewerLangId == langId) {
                            if(reviewerId != null && reviewerId.length() > 1) {
                                if(show.searchAuthorizedReviewer(topicId, linkId, userId)) {
             %>
             <div class="action-div">
                 <button name="reviewTitle" class="linkbutton" rel="#reviewTitle" id="<%= topicId %>;<%= linkId %>"><bean:message key="table.button.reviewtitle"/></button>
                 <button id="reviewIt" class="linkbutton" name="showReviewerPage.do?topicId=<%=topicId %>&linkId=<%= linkId %>"><bean:message key="table.button.reviewit"/></button>
             </div>
             <%
                                }
                            } else {
                                // if translator is allowed to translate more content
                                    UserHandler handler = new UserHandler();
                                    EContentMenuHelper helper = new EContentMenuHelper();
                                    int userTopicId = handler.getUserTopic(userId);
                                    boolean isChildTopic = false;
                                    if(userTopicId == topicId) {
                                        isChildTopic = true;
                                    } else {
                                        isChildTopic = helper.isChild(userTopicId, topicId);
                                    }
                                    if(isChildTopic) {
             %>
             <!--<div class="action-div">
                 <button name="becomeReviewer" class="linkbutton" rel="#becomeReviewer" id="<%= topicId %>;<%= linkId %>"><bean:message key="table.button.requestreview"/></button>
             </div>-->
             <%
                                    }
                            }
                        }
                    } else if(role.equals("publisher")) { // show functionality if user is publisher
                        if(publisherLangId == langId) {
                            if(publisherId != null && publisherId.length() > 1) {
                                if(show.searchAuthorizedPublisher(topicId, linkId, userId)) {
             %>
             <div class="action-div">
                 <button name="publishTitle" class="linkbutton" rel="#publishTitle" id="<%= topicId %>;<%= linkId %>"><bean:message key="table.button.requestpublish"/></button>
                 <button id="publishIt" class="linkbutton" name="showPublisherPage.do?topicId=<%=topicId %>&linkId=<%= linkId %>"><bean:message key="table.button.publishtopic"/></button>
             </div>
             <%
                                }
                            } else {
                                // if translator is allowed to translate more content
                                    UserHandler handler = new UserHandler();
                                    EContentMenuHelper helper = new EContentMenuHelper();
                                    int userTopicId = handler.getUserTopic(userId);
                                    boolean isChildTopic = false;
                                    if(userTopicId == topicId) {
                                        isChildTopic = true;
                                    } else {
                                        isChildTopic = helper.isChild(userTopicId, topicId);
                                    }
                                    if(isChildTopic) {
             %>
             <!--<div class="action-div">
                <button name="becomePublisher" class="linkbutton" rel="#becomePublisher" id="<%= topicId %>;<%= linkId %>"><bean:message key="table.button.becomepublisher"/></button>
             </div>-->
             <%
                                    }
                            }
                        }
                    }
                }
             %>
             
<%
        }
%>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery_tools_min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        var olay = $("a.user-info").overlay({
                top: 100,
		mask: {
                    // you might also consider a "transparent" color for the mask
                    color: '#fff',
                    // load mask a little faster
                    loadSpeed: 200,
                    // very transparent
                    opacity: 0.5
                },
                closeOnClick: false,
		onBeforeLoad: function() {

			// grab wrapper element inside content
			var wrap = this.getOverlay().find("#personInfo");
                        // load the page specified in the trigger
                        wrap.html('<p align="center"><img src="images/loading4.gif" width="50" height="50" /></p>');
			wrap.load(this.getTrigger().attr("href"));
		}
	});

        //function for become translator and translate title button
        var triggers = $("button.linkbutton").overlay ({
           top: 70,
           // some mask tweaks suitable for modal dialogs
           mask: {
              // you might also consider a "transparent" color for the mask
              color: '#fff',
              // load mask a little faster
              loadSpeed: 200,
              // very transparent
              opacity: 0.5
           },
           closeOnClick: false,
           onBeforeLoad: function() {
			// grab wrapper element inside content
			var wrap;
                        // load the page specified in the trigger
                        var action = this.getTrigger().attr("name");
                        var queryString = this.getTrigger().attr("id");
                        var url = "";
                        if(action == "translateTitle") {
                            url = "pages/translateTitle.jsp?queryString="+queryString;
                            wrap = this.getOverlay().find("#translateInfo");
                        } else if(action == "becomeTranslator") {
                            url = "pages/becomeTranslator.jsp?queryString="+queryString;
                            wrap = this.getOverlay().find("#translationRequestInfo");
                        } else if(action == "reviewTitle") {
                            url = "pages/reviewTitle.jsp?queryString="+queryString;
                            wrap = this.getOverlay().find("#reviewInfo");
                        } else if(action == "becomeReviewer") {
                            url = "pages/becomeReviewer.jsp?queryString="+queryString;
                            wrap = this.getOverlay().find("#reviewRequestInfo");
                        } else if(action == "publishTitle") {
                            url = "pages/publishTitle.jsp?queryString="+queryString;
                            wrap = this.getOverlay().find("#publishInfo");
                        } else if(action="becomePublisher") {
                            url = "pages/becomePublisher.jsp?queryString="+queryString;
                            wrap = this.getOverlay().find("#publishRequestInfo");
                        }
                        wrap.html('<p align="center"><img src="images/loading4.gif" width="50" height="50" /></p>');
                        wrap.load(url);
	    }
        });
        //function for TranslateIt button
        $("button#translateIt").click(function() {
            var url = $(this).attr("name");
            $(location).attr('href',url);
        });

        //function for ReviewIt button
        $("button#reviewIt").click(function() {
            var url = $(this).attr("name");
            $(location).attr('href',url);
        });

        //function for PublishIt button
        $("button#publishIt").click(function() {
            var url = $(this).attr("name");
            $(location).attr('href',url);
        });
    });

</script>
<style type="text/css">
    .person-info {
        margin-bottom:5px;margin-left:15px;float: left;
    }
    .person-info span {
        color:#B4241B;font-weight: bold;font-size: 100% !important;
    }
    .action-div {
        float:left;width:100%;margin-top: 10px;margin-bottom: 5px;margin-left: 15px;
    }
    .action-layer {
        float:left;width:100%;text-align: right;
    }
</style>

