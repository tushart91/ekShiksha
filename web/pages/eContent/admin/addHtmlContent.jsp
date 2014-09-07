<%-- 
    Document   : addHtmlContent
    Created on : 29 Dec, 2010, 11:04:05 AM
    Author     : rkjangir
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="helper" class="ekalavya.econtent.helper.EContentAdminHelper"/>
<%@page import="ekalavya.econtent.bean.Topic"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eContent : Add new html content</title>
        <script type="text/javascript">
            function validateContentForm() {
                var topicId = document.contentform.topicId.value;
                var url = document.contentform.url.value;
                var desc = document.contentform.description.value;
                var author = document.contentform.author.value;
                var level = document.contentform.level.value;
                var result = true;
                if(topicId == null || topicId == "-1") {
                    document.getElementById("topicError").style.display = "inline";
                    document.getElementById("topicError").innerHTML="Please select any topic.";
                    result = false;
                }else {
                    document.getElementById("topicError").style.display = "none";
                }
                if(url == null || url.length < 1) {
                    document.getElementById("fileError").style.display = "inline";
                    document.getElementById("fileError").innerHTML="Please choose any file.";
                    result = false;
                }else {
                    document.getElementById("fileError").style.display = "none";
                }
                if(desc == null || desc.length < 1) {
                    document.getElementById("descError").style.display = "inline";
                    document.getElementById("descError").innerHTML="Please provide a description of content.";
                    result = false;
                }else {
                    document.getElementById("descError").style.display = "none";
                }
                if(author == null || author.length < 1) {
                    document.getElementById('authorError').style.display = "inline";
                    document.getElementById('authorError').innerHTML = "Please provide author of this document."
                }
                return result;
            }
        </script>
    </head>
    <body>
        <%
            String role = (String)session.getAttribute("role");
            if(role == null || !(role.equals("controller") || role.equals("admin"))) {
        %>
        <h3 align="center" style="margin-top: 15px;">Please login before continue.</h3>
        <%
            } else if(role.equals("controller") || role.equals("admin")){
        %>
        <br>
        <div id="stylized" class="myform">
            <form id="contentform" name="contentform" method="post" action="addHtmlContentAction.do" enctype="multipart/form-data" onsubmit="return validateContentForm();">
                <h1>Add new content</h1>
                <p>Click on the keyboard button to use the keyboard.<br>
                   Field marked with<strong>*</strong>are mandatory
                </p>
                <%
                    String error[] = null;
                    try {
                        error = (String[])session.getAttribute("error");
                    } catch(Exception e) {
                        e.printStackTrace();
                    }
                    session.removeAttribute("error");
                %>
                <%
                    if(error != null && error[3]!=null) {
                %>
                <div align="center" class="errormsg"><%= error[3] %></div>
                <%
                    }
                %>
                <%
                    if(error != null && error[4]!=null) {
                %>
                <div align="center" class="successmsg"><%= error[4] %></div>
                <%
                    }
                %>
                <label><span>Select Topic<strong>*</strong></span>
                <select name="topicId" id="topicId" onchange="">
                    <option value="-1">Select any topic</option>
                    <%
                        Topic[] topics = helper.getChildTopic();
                        if(topics != null && topics.length>0) {
                            for(int i=0;i<topics.length;i++) {
                    %>
                    <option value="<%= topics[i].getTopicId() %>"><%= topics[i].getTopicName() %></option>
                    <%
                            }
                        }
                    %>
                </select>
                <h5 id="topicError"></h5>
                <%
                    if(error != null && error[0]!=null) {
                %>
                <h5 style="display: inline"><%=error[0] %></h5>
                <%
                    }
                %>
                </label>
                <label><span>Html File <strong>*</strong></span>
                <input type="file" name="url" id="url"/>
                <h5 id="fileError"></h5>
                <%
                    if(error != null && error[1]!=null) {
                %>
                <h5 style="display: inline"><%=error[1] %></h5>
                <%
                    }
                %>
                </label>
                <label><span>Description<strong>*</strong></span>
                <input type="text" name="description" id="description"/>
                <h5 id="descError"></h5>
                <%
                    if(error != null && error[2]!=null) {
                %>
                <h5 style="display: inline"><%=error[2] %></h5>
                <%
                    }
                %>
                </label>
                <label><span>Author<strong>*</strong></span>
                <input type="text" name="author" id="author"/>
                <h5 id="authorError"></h5>
                <%
                    if(error != null && error[5]!=null) {
                %>
                <h5 style="display: inline"><%= error[2] %></h5>
                <%
                    }
                %>
                </label>
                <label><span>Level</span>
                <input type="text" name="level" id="level"/>
                </label>
                
                <div class="spacer"></div>
                <div class="controls">
                    <button type="submit">Add Content</button>
                    <button type="reset">Reset</button>
                </div>
                <br />
                <div id="td"></div>
            </form>
        </div>
        <br>
     <% } %>
    </body>
</html>
