<%--
    Document   : translator
    Created on : 16 May, 2011, 4:35:50 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
    int topicId = 0;
    int linkId = 0;
    int langId = 0;
    int contentId = 0;
    String content = null;
    String translated = null;
    String type = null;
    String role = null;
    try {
        topicId = Integer.parseInt((String)session.getAttribute("topicId"));
        linkId = Integer.parseInt((String)session.getAttribute("linkId"));
        langId = Integer.parseInt((String)session.getAttribute("publisherLangId"));
        contentId = Integer.parseInt(request.getParameter("contentId"));
        type = request.getParameter("type");
        role = (String)session.getAttribute("role");
        String[][] simpleContent = (String[][])session.getAttribute("simpleContent");
        String[][] complexContent = (String[][])session.getAttribute("complexContent");
        if(type!=null && type.equals("simple")) {
            int index = Integer.parseInt(request.getParameter("index"));
            content = simpleContent[index][2];
            translated = simpleContent[index][0];
        } else if(type!=null && type.equals("complex")) {
            content = complexContent[contentId][2];
            translated = complexContent[contentId][0];
        }
    }catch(Exception e) {
        System.out.println(e);
%>
<br>
    <h3 align="center">There may be some problem while publishing this content or you are not logged in. Please login now or try after some time.</h3>
    <p align="center"> Click here to<a href="javascript:window.close();"> close </a>the window.</p>
<%
    return;}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Publisher Page</title>
        <link rel="stylesheet" type="text/css" href="style/cssform.css" />
        <script type="text/javascript" src="pages/eContent/admin/vk_loader.js" ></script>
        <script type="text/javascript">

            function getXMLObject()  //XML OBJECT
            {
               var xmlHttp = false;
               try {
                 xmlHttp = new ActiveXObject("Msxml2.XMLHTTP")  // For Old Microsoft Browsers
               }
               catch (e) {
                 try {
                   xmlHttp = new ActiveXObject("Microsoft.XMLHTTP")  // For Microsoft IE 6.0+
                 }
                 catch (e2) {
                   xmlHttp = false   // No Browser accepts the XMLHTTP Object then false
                 }
               }
               if (!xmlHttp && typeof XMLHttpRequest != 'undefined') {
                 xmlHttp = new XMLHttpRequest();        //For Mozilla, Opera Browsers
               }
               return xmlHttp;  // Mandatory Statement returning the ajax object created
            }

            var xmlhttp = new getXMLObject();	//xmlhttp holds the ajax object

            function ajaxFunction() {
              var translated = document.publish.translated.value;
              if(translated=="") {
                  alert("Translated and Reviewed content can not be empty.");
                  return false;
              }else {
                  if(xmlhttp) {
                    xmlhttp.open("POST","pages/eContent/publisher/publishContent.jsp",true);
                    xmlhttp.onreadystatechange  = handleServerResponse;
                    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                  }
              }

            }

            function handleServerResponse() {

            }

            function markDefault() {
                var translated = document.publish.translated.value;
                if(translated=="") {
                    alert("Translated and Reviewed content can not be empty.");
                }else {
                    document.publish.setdefault.value = "yes";
                    document.publish.submit();
                }
            }
        </script>

    </head>
    <body>
    <%
        if(role == null || role.trim().isEmpty() || !role.equals("publisher")) {
    %>
    <br>
    <h3 align="center">Please login to publish content.</h3>
    <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
    <%
        } else if(content==null) {
    %>
    <br>
    <h3 align="center">There may be some error while reviewing this content. Please try after some time.</h3>
    <p align="center">Click here to<a href="javascript:window.close();"> close </a>the window.</p>
    <%
        }else {
    %>
    <div id="container">
        <form name ="publish" method="post" action="pages/eContent/publisher/publishContent.jsp" onsubmit="return ajaxFunction();">
        <fieldset>

        <legend>Publish It</legend>
        <div style="color:#036;padding-left:12px; padding-bottom: 5px;">Click keyboard button to use the virtual keyboard</div>
        <div style="color:#036;padding-left:12px; padding-bottom: 5px;">Please ignore any HTML tags if comes inside text you are publishing. If you found anything wrong or abusive text in reviewed text, please either correct it or set to original.</div>
        <div class="fm-opt">
          <label for="original">Original Text:</label>
          <textarea name="original" cols="10" rows="5" id="original" title="Original Text to be translated" readonly="true"><%= content %></textarea>
        </div>

        <div class="fm-opt">
          <label for="translated">Translated and Reviewed Text:</label>

          <textarea name="translated" cols="10" rows="5" id="translated" title="Translated Text" onfocus="VirtualKeyboard.attachInput(this)"><%= translated %></textarea>
        </div>
        <input type="hidden" name="topicId" value="<%=topicId %>">
        <input type="hidden" name="linkId" value="<%=linkId %>">
        <input type="hidden" name="langId" value="<%=langId%>">
        <input type="hidden" name="contentId" value="<%=contentId%>">
        <input type="hidden" name="type" value="<%= type %>">
        <input type="hidden" name="setdefault" value="no">
        <div id="td" style="margin-left:60px;"></div>
        </fieldset>
        <div id="fm-submit" class="fm-req">
          <input name="Submit" value="Mark as Published" type="submit"/>
          <input name="Button" value="Set Original" type="button" onclick="javascript:markDefault();"/>
          <input name="Button" value="Cancel" type="Button" onclick="javascript:window.close();"/>
          <input name="Keyboard" value="Keyboard" type="Button" onclick="VirtualKeyboard.toggle('translated','td'); return flase"/>

        </div>
        <br>

      </form>
    </div>

    <%
        }
    %>
    </body>
</html>
