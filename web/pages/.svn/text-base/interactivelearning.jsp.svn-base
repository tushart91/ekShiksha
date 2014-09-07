<%--
    Document   : interactivelearning
    Created on : 5 Oct, 2011, 3:29:03 PM
    Author     : rkjangir
--%>
<%
        String url = "interactivelearning.do?"+request.getQueryString();
        session.setAttribute("currentAction",url);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ekShiksha : Interactive Learning</title>
        <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
        <script type="text/javascript" src="js/deployJava.js"></script>
        <script type="text/javascript" src="js/plugin_detect.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                if(detectJava()) {
                    $("#pluginmessage").hide();
                } else {
                    $("#pluginmessage").show();
                }
            });

        </script>
        <style type="text/css">
            #pluginmessage a {
                color: #fefefe;
                font-size: 12px;
                font-weight: bold;
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        
        <table style="display: none;" id="pluginmessage" width="100%" cellpadding="0" cellspacing="0">
            <thead>
                <tr>
                    <th>
                        There is no Java Virtual Machine installed on this system. You may need to install the <a href="http://www.oracle.com/technetwork/java/javase/downloads/index.html" target="_blank">Java JRE</a> to see the applets.
                    </th>
                </tr>
            </thead>
        </table>
        <%
            String topic = request.getParameter("topic");
            if(topic != null && topic.equals("maths")) {
        %>

        <h2 align="center">ekShiksha : Interactive Learning for Maths</h2>
        <table id="report" width="100%" cellpadding="0" cellspacing="0">
            <thead>
                <tr>
                    <th width="5%">S.No.</th>
                    <th width="30%">Title</th>
                    <th width="41%">Description</th>
                    <th width="20%">Author</th>
                    <th width="4%" ></th>
                </tr>
            </thead>
            <tbody>
                
                <tr>
                    <td class="odd">1</td>
                    <td class="odd">Four Digit Addition</td>
                    <td class="odd">Learn four digit addition&nbsp;<a href="#">more</a></td>
                    <td class="odd"><a class="author" href="#">Avinash Awate</a></td>
                    <td class="odd"><a href="javascript:void(0);" onClick="window.open('maths/FourDigitAddition.html','mywindow','width=800,height=800,resizable=0,status=0,toolbar=0')"><span class="play" title="Play"></span></a></td>
                </tr>
               
            </tbody>
        </table>
        <%
            } else if(topic != null && topic.equals("chemistry")) {
        %>
        <h2 align="center">ekShiksha : Interactive Learning for Chemistry</h2>
        <table id="report" width="100%" cellpadding="0" cellspacing="0">
            <thead>
                <tr>
                    <th width="5%">S.No.</th>
                    <th width="30%">Title</th>
                    <th width="41%">Description</th>
                    <th width="20%">Author</th>
                    <th width="4%" ></th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
        <%
            } else if(topic != null && topic.equals("physics")) {
        %>
        <h2 align="center">ekShiksha : Interactive Learning for Physics</h2>
        <table id="report" width="100%" cellpadding="0" cellspacing="0">
            <thead>
                <tr>
                    <th width="5%">S.No.</th>
                    <th width="30%">Title</th>
                    <th width="41%">Description</th>
                    <th width="20%">Author</th>
                    <th width="4%" ></th>
                </tr>
            </thead>
            <tbody>
                
            </tbody>
        </table>
        <%
            } else if(topic != null && topic.equals("english")) {
        %>
        <h2 align="center">ekShiksha : Interactive Learning for English</h2>
        <table id="report" width="100%" cellpadding="0" cellspacing="0">
            <thead>
                <tr>
                    <th width="5%">S.No.</th>
                    <th width="30%">Title</th>
                    <th width="41%">Description</th>
                    <th width="20%">Author</th>
                    <th width="4%" ></th>
                </tr>
            </thead>
            <tbody>
                
            </tbody>
        </table>
        <%
            } else {
        %>
        <h2 align="center">Unable to find contents.</h2>
        <%
            }
        %>
    </body>
</html>
