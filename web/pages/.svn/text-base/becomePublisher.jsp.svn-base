<%-- 
    Document   : becomePublisher
    Created on : 30 Aug, 2011, 11:10:20 AM
    Author     : rkjangir
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ekalavya.econtent.bean.URLBean" %>
<%@page import="ekalavya.econtent.helper.ShowContentHelper" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%
    boolean isError = false;
    String role = (String)session.getAttribute("role");
    String userId = (String)session.getAttribute("userId");
    String pLangId = (String)session.getAttribute("publisherLangId");
    String queryString = request.getParameter("queryString");
    ShowContentHelper helper = new ShowContentHelper();
    URLBean url = null;
    int topicId = 0;
    int linkId = 0;
    int publisherLangId = 0;
    if(role != null && userId != null && pLangId != null && queryString != null) {
        try {
            String[] param = queryString.split(";");
            topicId = Integer.parseInt(param[0]);
            linkId = Integer.parseInt(param[1]);
            publisherLangId = Integer.parseInt(pLangId);
            url = helper.getLink(topicId, linkId, publisherLangId);
        } catch(Exception e) {
            isError = true;
        }
    } else {
        isError = true;
    }
%>

<div id="contentbox" style="width:100%;">
<%
    if(isError) {
%>
<div class="infodiv" style="margin-top:5px;"><span><bean:message key="table.detail.error"/></span></div>
<%
    } else {
%>
<div class="infodiv" style="margin-top:5px;"><span><%= url.getDesc() %></span></div>
<div class="infodiv"><bean:message key="requesttpublish.form.infoone"/> <a href="#"><%=url.getDesc()%></a>, <bean:message key="requestpublish.form.infotwo"/></div>
<div class="action-layer">
    <button type="button" name="yes" class="actionbutton" onclick="requestTranslation('<%=topicId%>','<%=linkId%>');" id="yes"><bean:message key="requesttranslation.form.confirm"/></button>
</div>
<%
    }
%>
</div>
<div id="notaccept" class="infowrap">
    <span><bean:message key="requesttranslation.form.error"/></span>
    <ul style="list-style:circle;margin-top:5px;margin-left: 20px;">
        <li><bean:message key="translatetitle.form.errorone"/></li>
        <li><bean:message key="translatetitle.form.errortwo"/></li>
    </ul>
</div>
<div id="accept" class="infowrap">
    <span><bean:message key="requestpublish.form.success"/></span>
    <p><bean:message key="reqeustpublish.form.translatemessage"/> <a href="showReviewerPage.do?topicId=<%=topicId%>&linkId=<%=linkId%>"><bean:message key="reqeustpublish.form.publishmessage"/></a></p>
</div>
<div id="loading" align="center" style="display:none;padding-top:10px;padding-bottom: 10px;text-align: center;width:100%;"><img src="images/loading4.gif" width="50" height="50" /></div>
<script type="text/javascript">
    // function to request translation
    function requestTranslation(topicId, linkId) {
        //clearing previous messages before ajax call
        $("#accept").css("display","none");
        $("#notaccept").css("display","none");
        $("#contentbox").css("display","none");
        //showing progress message
        $("#loading").css("display","block");
        //ajax call
        $.get("pages/publishrequest.jsp",{topicId: topicId, linkId: linkId}, function(message) {
            //hiding progress message
            $("#loading").css("display","none");
            //checking result of ajax call
            if(message.match("true")) { //if successfully done
                $("#accept").css("display","block"); // showing success message
            } else { //if error occurred
                $("#notaccept").css("display","block"); // showing error message
            }
        });
    }

</script>

<style type="text/css">
    .infodiv {
        width:100%;padding-top:2px;padding-bottom:2px;display:block;font-size:12px;
    }
    .infodiv span {
        color:#B4241B;font-weight: bold;font-size: 14px;
    }
    .infowrap {
        width:100%;padding-top:5px;padding-bottom:5px;display:none;font-size:12px;
    }
    .infowrap span {
        color:#B4241B;font-weight: bold;font-size: 14px;
    }
    .infowrap ul {
        list-style:circle;margin-top:5px;margin-left: 20px;
    }
    .action-layer {
        float:left;width:100%;text-align: right;margin-top:5px;
    }
</style>