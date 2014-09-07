<%-- 
    Document   : addContent
    Created on : 1 Oct, 2010, 10:48:30 AM
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
        <title>eContent : Add new Contents</title>
        <script type="text/javascript">
            function validateContentForm() {
                var topicId = document.contentform.topicId.value;
                var url = document.contentform.url.value;
                var desc = document.contentform.description.value;
                if(topicId == null || topicId == "-1") {
                    alert("Please select any topic");
                    return false;
                }
                if(url == null || url.length < 1) {
                    alert("Url can't be empty");
                    return false;
                }
                if(desc == null || desc.length < 1) {
                    alert("Description can't be empty");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <%
            String role = (String)session.getAttribute("role");
            if(role == null) {
        %>
        <h3 align="center" style="margin-top: 15px;">Please login before continue.</h3>
        <%
            } else {
        %>
        <br>
        <div id="stylized" class="myform">
            <form id="contentform" name="contentform" method="post" action="addContent.do" onsubmit="return validateContentForm();">
                <h1>Add new content</h1>
                <p>Click on the keyboard button to use the keyboard.<br>
                   Field marked with<strong>*</strong>are mandatory
                </p>
                <%
                    String error = (String)session.getAttribute("error");
                    if(error != null) {
                %>
                <div align="center" class="err"><ul><%= error %></ul></div>
                <%
                    }
                    session.removeAttribute("error");
                %>
                <label>Select Topic<strong>*</strong></label>
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
                <label>Html File URL<strong>*</strong></label>
                <input type="text" name="url" id="url"/>
                <label>Description<strong>*</strong></label>
                <input type="text" name="description" id="description"/>
                
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
