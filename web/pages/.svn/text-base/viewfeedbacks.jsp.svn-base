<%-- 
    Document   : viewfeedbacks
    Created on : 12 May, 2011, 3:18:29 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ekalavya.econtent.helper.UserHandler,ekalavya.econtent.bean.Feedback"%>
<%@page import="java.util.Iterator,java.util.ArrayList"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
            String url = "viewfeedbacks.do";
            session.setAttribute("currentAction",url);
            int curLanguage = 1;
            String lang = (String)session.getAttribute("langId");
            if(lang != null) {
                try {
                    curLanguage = Integer.parseInt(lang);
                }catch(Exception e) {
                    curLanguage = 1;
                }
            }
%>
<%
    String role = (String)session.getAttribute("role");
    if(role!=null && (role.equals("controller") || role.equals("admin"))) {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ekShiksha : Manage Feedbacks</title>
        <script type="text/javascript" src="js/ajaxscript.js"></script>
    </head>
    <body>
        <%
            UserHandler handler = new UserHandler();
            ArrayList feedbacks = handler.getFeedbacks();
            Iterator it = feedbacks.iterator();
        %>
        <h2 align="center">Users Feedback</h2>
        <div class="done" id="done">
             <li>Feedback is successfully deleted.</li>
        </div>
        <div class="notdone" id="notdone">
             <li>Error occurred while performing the operation.</li>
        </div>
        <table id="report"  width="100%" cellpadding="0" cellspacing="0">
                <thead>
                    <tr>
                        <th width="5%" >S.No.</th>
                        <th>Topic</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th width="7%">Status</th>
                        <th width="5%" ></th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int i=0;
                        String cssClass = "";
                        while(it.hasNext()) {
                            Feedback feedback = (Feedback)it.next();
                            if(i%2 == 0) {
                                cssClass="even";
                            } else {
                                cssClass="odd";
                            }
                    %>
                    <tr id="row<%=++i%>">
                        <td class="<%= cssClass %>"><%= i %></td>
                        <td class="<%= cssClass %>"><%= feedback.getTopic() %></td>
                        <td class="<%= cssClass %>"><%= feedback.getName() %></td>
                        <td class="<%= cssClass %>"><%= feedback.getEmail() %></td>
                        <td class="<%= cssClass %>" id="status<%=i%>">
                            <%
                                if(feedback.getStatus()) {
                                    out.print("Read");
                                } else {
                                    out.println("Unread");
                                }
                            %>
                        </td>
                        <td class="<%= cssClass %>"><div class="arrow"></div></td>
                    </tr>
                    <tr id="subrow<%=i%>">
                        <td  colspan="7" class="hidden<%= cssClass %>">
                            <div class="done" id="done<%=i%>">
                                <li>Feedback is successfully marked as read.</li>
                            </div>
                            <div class="notdone" id="notdone<%=i%>">
                                <li>Error occurred while performing the operation.</li>
                            </div>
                           <div style="padding:10px;float:left;width:98%;margin-bottom: 0px;">
                               <div style="margin-bottom:5px;width:25%;float: left;"><span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">User Id : </span><%= feedback.getUserId() %></div>
                               <div style="margin-bottom:5px;width:50%;float: left;"><span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">IP Address : </span><%= feedback.getIpAddress() %></div>
                               <div style="margin-bottom:5px;width:25%;float: left;"><span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Time : </span><%= feedback.getTime() %></div>
                               <%
                                    if(feedback.getPageUrl() != null && feedback.getPageUrl().length()>1) {
                               %>
                               <div style="margin-bottom:5px;"><span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">URL : </span><a href="<%= feedback.getPageUrl() %>"><%= feedback.getPageUrl() %></a></div>
                               <%
                                    } 
                               %>
                               <div style="margin-bottom:5px;"><span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Comment : </span><%= feedback.getComment() %></div>
                               <div style="margin-bottom: 0px;margin-top: 15px;">
                                   <%
                                        if(!feedback.getStatus()) {
                                   %>
                                   <a class="linkbutton" href="javascript:readFeedback(<%= feedback.getId() %>,<%=i%>);" id="mark<%=i%>">Mark as read</a>&nbsp;&nbsp;
                                   <%
                                        }
                                    %>
                                   <a class="linkbutton" href="javascript:deleteFeedback(<%= feedback.getId() %>,<%=i%>);">Delete feedback</a>
                               </div>
                           </div>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
        </table>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#report tr:odd").addClass("odd");
                $("#report tr:not(.odd)").hide();
                $("#report tr:first-child").show();

                $("#report tr.odd").click(function(){
                    $(this).next("tr").toggle();
                    $(this).find(".arrow").toggleClass("up");
                    $(this).find(".even").toggleClass("evenmore");
                    $(this).find(".odd").toggleClass("oddmore");
                });
                //$("#report").jExpand();
            });
        </script>
    </body>
</html>
<% } else {
        String path = "viewfeedbacks.do";
        session.setAttribute("currentAction",path);
%>
<h3 align="center" style="margin-top: 15px;">Please login before continue.</h3>
<%
   }
%>
