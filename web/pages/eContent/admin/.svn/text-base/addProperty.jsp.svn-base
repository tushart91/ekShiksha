<%--
    Document   : addProperty
    Created on : 6 Oct, 2010, 5:11:52 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eContent Admin : Add new property</title>
        <script type="text/javascript">
            function validatePropertyForm() {
                var key = document.propertyform.key.value;
                var value = document.propertyform.keyValue.value;
                var result = true;
                if(key == null || key.length < 1) {
                    document.getElementById("keyError").style.display = "inline";
                    document.getElementById("keyError").innerHTML="Key Can't be blank.";
                    result = false;
                }
                else if(validateKey(key)) {
                    document.getElementById("keyError").style.display = "inline";
                    document.getElementById("keyError").innerHTML="Key Can only have [a-z,A-Z and .] and must start and end with alphabet";
                    result = false;
                } else {
                    document.getElementById("keyError").style.display = "none";
                }
                if(value == null || value.length < 1) {
                    document.getElementById("keyValueError").style.display = "inline";
                    document.getElementById("keyValueError").innerHTML="Value can't be blank";
                    result = false;
                }else {
                    document.getElementById("keyValueError").style.display = "none";
                }
                return result;
            }
            function validateKey(elementValue){
                var result = true;
                //var emailPattern = /^[a-zA-Z]+[a-zA-Z.]+$/;
                var emailPattern = /^[A-Za-z]+([A-Za-z.]+)*([A-Za-z]+)$/;
                if(emailPattern.test(elementValue)) {
                    result = false;
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
            } else if(role.equals("controller") || role.equals("admin")) {
        %>
        <br>
        <div id="stylized" class="myform">
            <form id="propertyform" name="propertyform" method="post" action="addProperty.do" onsubmit="return validatePropertyForm();">
                <h1>Add new property</h1>
                <p>Field marked with<strong>*</strong>are mandatory</p>
                <%
                    String error[] = null;
                    try {
                        error = (String[])session.getAttribute("error");
                    } catch(Exception e) {
                        e.printStackTrace();
                    }
                %>
                <%
                    if(error != null && error[2]!=null) {
                %>
                <div align="center" class="errormsg"><%= error[2] %></div>
                <%
                    }
                %>
                <%
                    if(error != null && error[3]!=null) {
                %>
                <div align="center" class="successmsg"><%= error[3] %></div>
                <%
                    }
                %>

                <label for="key"><span>Property Key<strong>*</strong></span>
                <input type="text" name="key" id="key"/>
                <h5 id="keyError"></h5>
                <%
                    if(error != null && error[0]!=null) {
                %>
                <h5 id="keyError" style="display: inline"><%=error[0] %></h5>
                <%
                    }
                %>
                </label>
                <label for="keyValue"><span>Property Value<strong>*</strong></span>
                <input type="text" name="keyValue" id="value"/>
                <h5 id="keyValueError"></h5>
                <%
                    if(error != null && error[1]!=null) {
                %>
                <h5 id="keyValueError" style="display: inline"><%=error[1] %></h5>
                <%
                    }
                    session.removeAttribute("error");
                %>
                </label>
                <div class="controls">
                    <button type="submit">Add</button>
                    <button type="reset">Reset</button>
                </div>
            </form>
        </div>
       <% } %>
    </body>
</html>