<%-- 
    Document   : manageusers
    Created on : 14 Sep, 2011, 2:22:08 PM
    Author     : rkjangir
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ekalavya.econtent.helper.UserHandler,ekalavya.econtent.bean.User"%>
<%@page import="ekalavya.econtent.helper.EContentAdminHelper"%>
<%@page import="ekalavya.econtent.helper.EContentMenuHelper,ekalavya.econtent.bean.LanguageBean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
            String url = "manageusers.do";
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
        <title>ekShiksha : Manage Users</title>
        <style>
            .dropdown {
                border: 1px solid #7CB8E2;
                background-color:  #F7F9FC;
                min-width: 100px;
                padding: 2px 5px 2px 2px;/*top right bottom left*/
            }
            .dropdown option {
                padding-left: 5px;
                padding-right: 5px;
            }
        </style>
    </head>
    <body>
        <%
            UserHandler handler = new UserHandler();
            EContentAdminHelper helper = new EContentAdminHelper();
            EContentMenuHelper menuHelper = new EContentMenuHelper();
            String[] roles = {"translator","reviewer","publisher","admin","controller","user","sitetranslator"};
            String[][] status = {{"true","Confirmed"},{"false","Unconfirmed"}};
            ArrayList langList = menuHelper.getAvailableLanguage();
            int selectedLanguage = -1;
            String selectedRole = "select";
            String selectedStatus = "select";
            User[] users = null;
            try {
                selectedRole = request.getParameter("role");
                selectedStatus = request.getParameter("status");
                String selLanguage = request.getParameter("langId");
                if(selLanguage == null) {
                    selLanguage = "-1";
                }
                selectedLanguage = Integer.parseInt(selLanguage);
                if(selectedRole != null && !selectedRole.equals("select")) {
                    users = handler.getUsers(selectedRole);
                } else if(selectedLanguage > 0) {
                    users = handler.getUsers(selectedLanguage);
                } else if(selectedStatus != null && !selectedStatus.equals("select")) {
                    users = handler.getUsers(Boolean.parseBoolean(selectedStatus));
                } else {
                    users = handler.getUsers();
                }
            }catch(Exception e) {
            }
        %>
        <h2 align="center">Manage Users</h2>
        <div style="margin-bottom: 3px;"><span style=" font-weight: bold;">Display By :</span>&nbsp;&nbsp;
             <select id="byRole" class="dropdown" onchange="displayByRole();">
                <option value="select">Select Role</option>
                <%
                    for(int i=0;i<roles.length;i++) {
                        if(selectedRole != null && roles[i].equals(selectedRole)) {
                %>
                <option selected="true" value="<%= roles[i] %>"><%= roles[i] %></option>
                <%
                        } else {
                %>
                <option value="<%= roles[i] %>"><%= roles[i] %></option>
                <%
                        }
                    }
                %>
            </select>&nbsp;&nbsp;
            <select id="byLanguage" class="dropdown">
                <option value="-1">Select Language</option>
                <%
                    for(int i=0;i<langList.size();i++) {
                        LanguageBean lBean = (LanguageBean)langList.get(i);
                        if(selectedLanguage == lBean.getLanguageId()) {
                %>
                <option selected="true" value="<%= lBean.getLanguageId() %>"><%= lBean.getDescription() %></option>
                <%
                        } else {
                %>
                <option value="<%= lBean.getLanguageId() %>"><%= lBean.getDescription() %></option>
                <%
                        }
                    }
                %>
            </select>&nbsp;&nbsp;
            <select id="byStatus" class="dropdown">
                <option value="select">Select Status</option>
                <%
                    for(int i=0;i<status.length;i++) {
                        if(selectedStatus != null && status[i][0].equals(selectedStatus)) {
                %>
                <option selected="true" value="<%= status[i][0] %>"><%= status[i][1] %></option>
                <%
                        } else {
                %>
                <option value="<%= status[i][0] %>"><%= status[i][1] %></option>
                <%
                        }
                    }
                %>
            </select>&nbsp;&nbsp;
            <button class="linkbutton" id="allUsers">All Users</button>
            <!--<span style="float: right; font-weight: bold;">Record Per Page :
                <select class="dropdown" style=" min-width: 50px;">
                <option>20</option>
                <option>30</option>
                <option>40</option>
            </select></span>-->
            
        </div>
        <table id="report"  width="100%" cellpadding="0" cellspacing="0">
                <thead>
                    <tr>
                        <th width="3%" >S.No.</th>
                        <th width="30%">User Id</th>
                        <th width="12%">Role</th>
                        <th width="25%">Email</th>
                        <th width="15%">Language</th>
                        <th width="10%">Status</th>
                        <th width="5%"></th>
                    </tr>
                </thead>
                <tbody>
                <%
                if(users !=null && users.length>0) {
                    String cssClass = "";
                    int count = 0;
                    for(int i=0;i<users.length;i++) {
                        if(i%2 == 0) {
                            cssClass="even";
                        } else {
                            cssClass="odd";
                        }
                %>
                    <tr id="row<%=i+1%>">
                        <td class="<%= cssClass %>"><%= i+1 %></td>
                        <td class="<%= cssClass %>"><%= users[i].getUserId() %></td>
                        <td class="<%= cssClass %>"><%= users[i].getRole() %></td>
                        <td class="<%= cssClass %>"><%= users[i].getEmail() %></td>
                        <td class="<%= cssClass %>"><%= helper.getLanguageDesc(users[i].getLangId()) %></td>
                        <td class="<%= cssClass %>">
                            <%
                                if(users[i].isVerified()) {
                                    out.print("Confirmed");
                                } else {
                                    out.print("Unconfirmed");
                                }
                            %>
                        </td>
                        <td class="<%= cssClass %>"><div class="arrow"></div></td>
                    </tr>
                    <tr id="subrow<%=i+1%>">
                        <td  colspan="7" class="hidden<%= cssClass %>">
                            <div style="padding:10px;float:left;width:98%;margin-bottom: 0px;">
                                <div style="width:50%;margin-bottom:5px;float: left;">
                                    <span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">First Name : </span>
                                    <%= users[i].getFirstName() %>
                                </div>
                                <div style="width:50%;margin-bottom:5px;float: left;">
                                    <span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Last Name : </span>
                                    <%= users[i].getLastName() %>
                                </div>
                                <div style="width:50%;margin-bottom:5px;float: left;">
                                    <span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Display Name : </span>
                                    <%= users[i].getDisplayName() %>
                                </div>
                                <div style="width:50%;margin-bottom:5px;float: left;">
                                    <span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Qualification : </span>
                                    <%= users[i].getQualification() %>
                                </div>
                                <div style="width:50%;margin-bottom:5px;float: left;">
                                    <span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Mobile : </span>
                                    <%= users[i].getMobile() %>
                                </div>
                                <div style="width:50%;margin-bottom:5px;float: left;">
                                    <span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Max Translation : </span>
                                    <%= users[i].getMaxTranslation() %>
                                </div>
                                <div style="width:50%;margin-bottom:5px;float: left;">
                                    <span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Last Login : </span>
                                    <%= users[i].getLastLogin() %>
                                </div>
                                <div style="width:50%;margin-bottom:5px;float: left;">
                                    <span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Topic : </span>
                                    <%
                                        if(users[i].getTopicId() > 0) {
                                        out.print(menuHelper.getTopic(users[i].getTopicId(), 1).getTopicName());
                                        } else {
                                            out.print("N/A");
                                        }
                                    %>
                                </div>
                                <div style="margin-bottom:5px;width:100%;">
                                    <span style="color:#B4241B;font-weight: bold;font-size: 100% !important;">Profile : </span>
                                    <%= users[i].getProfile() %>
                                </div>
                                <div style="margin-bottom: 0px;margin-top: 15px;">
                                    <button id="block" class="linkbutton">Block</button>&nbsp;&nbsp;
                                    <button id="delete" class="linkbutton">Delete</button>&nbsp;&nbsp;
                                    <button id="updateTopic" class="linkbutton">Update Topic</button>&nbsp;&nbsp;
                                    <button id="updateLanguage" class="linkbutton">Update Language</button>&nbsp;&nbsp;
                                    <%
                                        if(users[i].getRole().equals("translator")) {
                                    %>
                                    <button id="updateMaxTranslator" class="linkbutton">Update Max Translation</button>
                                    <%
                                        }
                                    %>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
                <%
                        count++;
                    }
                %>
                <tfoot>
                    <tr>
                        <th colspan="7">Total User : <%= count %></th>
                    </tr>
                </tfoot>
                <%
                } else {
                %>
                <tbody>
                    <tr>
                        <td class="odd" colspan="7">No record found.</td>
                    </tr>
                </tbody>
                <%
                }
                %>
                
         </table>
    </body>
</html>
<% } else {
        String path = "manageusers.do";
        session.setAttribute("currentAction",path);
%>
<h3 align="center" style="margin-top: 15px;">Please login before continue.</h3>
<%
   }
%>
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
        
        $("#byRole").change(function() {
            var str = "";
            $("#byRole option:selected").each(function () {
                str = $(this).attr("value");
            });
            var url = "manageusers.do"
            var queryString = "?role="+str;
            url += queryString;
            $(location).attr('href',url);
        });
        $("#byLanguage").change(function() {
            var str = "";
            $("#byLanguage option:selected").each(function () {
                str = $(this).attr("value");
            });
            var url = "manageusers.do"
            var queryString = "?langId="+str;
            url += queryString;
            $(location).attr('href',url);
        });
        $("#byStatus").change(function() {
            var str = "";
            $("#byStatus option:selected").each(function () {
                str = $(this).attr("value");
            });
            var url = "manageusers.do"
            var queryString = "?status="+str;
            url += queryString;
            $(location).attr('href',url);
        });
        $("#allUsers").click(function() {
            var url = "manageusers.do";
            $(location).attr('href',url);
        });
    });
</script>
