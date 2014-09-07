<%--
    Document   : availableContents
    Created on : 28 Apr, 2011, 2:08:58 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@page import="java.util.Iterator,java.util.ArrayList,ekalavya.econtent.bean.URLBean" %>
<%@ page import="ekalavya.econtent.helper.ShowContentHelper,ekalavya.econtent.helper.ContentHandler" %>
<%@ page import="ekalavya.econtent.helper.UserHandler" %>
<%
        String url = "availableContents.do";
        session.setAttribute("currentAction",url);
        int count = 0;
%>
<!--[if IE]>
   <style type="text/css">
   .ekshiksha {
       background:transparent;
       filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#333333,endColorstr=#333333);
       zoom: 1;
    }
    </style>
<![endif]-->
<logic:present name="contentList" scope="session">
    <h2 align="center"><bean:message key="ec.available"/></h2>
<table id="report" width="100%" cellpadding="0" cellspacing="0">
<thead>
    <tr>
        <th width="80%"><bean:message key="table.content.topic"/></th>
        <th width="15%"><bean:message key="table.content.author"/></th>
        <th width="3%"><bean:message key="table.content.level"/></th>
        <th width="2%" ></th>
    </tr>
</thead>
<tbody>
<%
String role = (String)session.getAttribute("role");
int langId = 1;
try{
     String language = (String)session.getAttribute("langId");
     if(language == null) {
         langId = 1;
     } else {
         langId = Integer.parseInt(language);
     }
} catch(Exception e) {
     langId = 1;
}
ArrayList contentList = (ArrayList)session.getAttribute("contentList");
Iterator it = contentList.iterator();
String cssClass = "";
while(it.hasNext()) {
    URLBean bean = (URLBean)it.next();
    if(count % 2==0){
        cssClass="even";
    } else {
        cssClass="odd";
    }
%>
     <tr id="<%=count%>" lang="<%out.print("topicId="+bean.getTopicId()+"&linkId="+bean.getLinkId()+"&translatorId="+bean.getTranslatorId()+"&reviewerId="+bean.getReviewerId()+"&publisherId="+bean.getPublisherId());%>">
        <%
            if(role != null) {
                if(role.equals("translator") || role.equals("reviewer") || role.equals("publisher")) {
                    ShowContentHelper helper = new ShowContentHelper();
                    String description = helper.getLinkDescription(bean.getTopicId(), bean.getLinkId(), langId);
                    if(description != null) {
        %>
        <td class="<%= cssClass %>"><a id="showContent" href="eContent-Show.do?topicId=<%= bean.getTopicId() %>&linkId=<%= bean.getLinkId() %>"><%= description %></a></td>
        <%
                    } else {
        %>
        <td class="<%= cssClass %>"><a id="showContent" href="eContent-Show.do?topicId=<%= bean.getTopicId() %>&linkId=<%= bean.getLinkId() %>"><%= bean.getDesc() %></a></td>
        <%
                    }
                } else {
        %>
        <td class="<%= cssClass %>"><a id="showContent" href="eContent-Show.do?topicId=<%= bean.getTopicId() %>&linkId=<%= bean.getLinkId() %>"><%= bean.getDesc() %></a></td>
        <%
                }
            } else {
        %>
        <td class="<%= cssClass %>"><a id="showContent" href="eContent-Show.do?topicId=<%= bean.getTopicId() %>&linkId=<%= bean.getLinkId() %>"><%= bean.getDesc() %></a></td>
        <%
            }
        %>
        <td class="<%= cssClass %>"><%= bean.getAuthor() %></td>
        <td class="<%= cssClass %>"><%= bean.getLevel() %></td>
        <td class="<%= cssClass %>"><div id="showhide" class="arrow"></div></td>
     </tr>
     <tr>
         <td  colspan="4" class="hidden<%= cssClass %>">
             <div id="contentDetail<%=count%>" style="padding:0px;float:left;width:98%;margin-bottom: 0px;">

             </div>
         </td>
     </tr>
<%
      count++;
   }
%>

</tbody>

</logic:present>
<logic:notPresent name="contentList" scope="session">
<h2 align="center"><bean:message key="ec.notavailable"/></h2>
</logic:notPresent>
</table>



<div class="ekshiksha" id="translteTitle" style="width:435px;overflow: visible;">
    <div class="wrap">
        <h2><bean:message key="ekshiksha.dialog.translatetitle"/></h2>
        <div class="contentWrap" id="translateInfo"></div>
    </div>

</div>

<div class="ekshiksha" id="becomeTranslator">
    <div class="wrap">
        <h2><bean:message key="ekshiksha.dialog.translationrequest"/></h2>
        <div class="contentWrap" id="translationRequestInfo"></div>
    </div>

</div>
 <div class="ekshiksha" id="userInfo">
    <div class="wrap">
        <h2><bean:message key="ekshiksha.dialog.userprofile"/></h2>
        <div class="contentWrap" id="personInfo"></div>
    </div>

</div>
<div class="ekshiksha" id="reviewTitle" style="width:435px;overflow: visible;">
    <div class="wrap">
        <h2><bean:message key="ekshiksha.dialog.reviewtitle"/></h2>
        <div class="contentWrap" id="reviewInfo"></div>
    </div>

</div>
        <div class="ekshiksha" id="publishTitle" style="width:435px;overflow: visible;">
    <div class="wrap">
        <h2><bean:message key="ekshiksha.dialog.publishtitle"/></h2>
        <div class="contentWrap" id="publishInfo"></div>
    </div>

</div>
<div class="ekshiksha" id="becomeReviewer">
    <div class="wrap">
        <h2><bean:message key="ekshiksha.dialog.reviewrequest"/></h2>
        <div class="contentWrap" id="reviewRequestInfo"></div>
    </div>
</div>
<div class="ekshiksha" id="becomePublisher">
    <div class="wrap">
        <h2><bean:message key="ekshiksha.dialog.publishrequest"/></h2>
        <div class="contentWrap" id="publishRequestInfo"></div>
    </div>
</div>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery_tools_min.js"></script>
<script type="text/javascript">

        $(document).ready(function(){

            $("a#showContent").click(function() {
                var url = $(this).attr("href");
                $(location).attr('href',url);
                return false;
            });
            $("#report tr:odd").addClass("odd");

            $("#report tr:not(.odd)").hide();

            $("#report tr:first-child").show();

            $("#report tr.odd").click(function(){
                var id = $(this).attr("id");
                var detailid = "#contentDetail"+id;
                var queryString = $(this).attr("lang");
                var infoPage = "pages/showContentInfo.jsp?"+queryString;
                $(this).next("tr").toggle();
                $(this).find(".arrow").toggleClass("up");
                $(this).find(".even").toggleClass("evenmore");
                $(this).find(".odd").toggleClass("oddmore");
                $(detailid).html('<p align="center"><img src="images/loading4.gif" width="50" height="50" /></p>');
                $(detailid).load(infoPage);
            });
            //$("#report").jExpand();

        });
</script>
