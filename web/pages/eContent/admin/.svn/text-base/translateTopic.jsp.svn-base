<%-- 
    Document   : translateTopic
    Created on : 30 Sep, 2010, 11:22:47 AM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="ekalavya.econtent.bean.Topic"%>
<%@page import="ekalavya.econtent.bean.LanguageBean,java.util.*"%>
<jsp:useBean id="helper" class="ekalavya.econtent.helper.EContentAdminHelper"/>
<jsp:useBean id="menuObj" class="ekalavya.econtent.helper.EContentMenuHelper"/>
<%
    String role = (String)session.getAttribute("role");
    if(role!=null && (role.equals("controller") || role.equals("admin") || role.equals("sitetranslator"))) {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eContent : Translate Topics</title>
        <script type="text/javascript">
   
    function importXML()
    {
            if (document.implementation && document.implementation.createDocument)
            {
                    xmlDoc = document.implementation.createDocument("", "", null);
                    xmlDoc.onload = populateDropDown;
            }
            else if (window.ActiveXObject)
            {
                    xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
                    xmlDoc.onreadystatechange = function ()
                    {  if (xmlDoc.readyState == 4)
                            populateDropDown()
                    };
            }
            else
            {
                    alert('Your browser can\'t handle this script');
                    return;
            }
            document.getElementById("langError").style.display = "none";
            //determine url to get xml
            var param = document.form1.langId.value;
            var url = 'pages/eContent/admin/populateTopics.jsp?langId='+param;
            //load the xml
            xmlDoc.load(url);
    }


    function populateDropDown()
    {

            var browser = 'ie';
            var nameIndex = 0;
            var valueIndex = 1;
            if (document.implementation && document.implementation.createDocument)
            {
                    browser = 'firefox';
              var nameIndex = 1;
              var valueIndex = 3;
            }

          var topic = document.form1.topicId;

          //empty control
          for (var q=topic.options.length;q>=0;q--)
          {
              topic.options[q]=null;
          }

          var x = xmlDoc.getElementsByTagName('item');
          for (j=0;j<x[0].childNodes.length;j++)
          {
               if (x[0].childNodes[j].nodeType != 1) continue;
               var theData = document.createTextNode(x[0].childNodes[j].nodeName);
           }

           for (i=0;i<x.length;i++)
           {
                var name = '';
                var value = '';
                for (j=0;j<x[i].childNodes.length;j++)
                {
                   if (x[i].childNodes[j].nodeType != 1) continue;
                   var theData = document.createTextNode(x[i].childNodes[j].firstChild.nodeValue);
                   if (j==nameIndex) name = theData.nodeValue;
                   if (j==valueIndex) value = theData.nodeValue;
                }
                topic.options[i] = new Option(name, value);
           }
    }
    function validateTranslationForm() {
        var topicId = document.form1.topicId.value;
        var topicName = document.form1.topicName.value;
        var result = true;
        if(!validateLanguage()){
            result = false;
        }
        if(topicId == "-1") {
            document.getElementById("topicError").style.display = "inline";
            document.getElementById("topicError").innerHTML="Please select any topic.";
            result = false;
        }
        else {
            document.getElementById("topicError").style.display = "none";
        }
        if(topicName == null || topicName.length <1) {
            document.getElementById("tnError").style.display = "inline";
            document.getElementById("tnError").innerHTML="Topic name can't be blank.";
            result = false;
        }
        else {
            document.getElementById("tnError").style.display = "none";
        }
        return result;
   

    }
    function validateLanguage() {
        var val = document.form1.langId.value;
        if(val == "-1") {
            document.getElementById("langError").style.display = "inline";
            document.getElementById("langError").innerHTML="Please select any language.";
            return false;
        }
        return true;
    }

    function resetForm() {
        document.getElementById("topicError").style.display = "none";
        document.getElementById("tnError").style.display = "none";
        document.getElementById("langError").style.display = "none";
    }
    </script>
    </head>
               
    <body onload="importXML()">
        
        <div id="stylized" class="myform">
            <form id="form1" name="form1" method="post" action="translateTopic.do" onsubmit="return validateTranslationForm();">
                <h1>Translate Topics</h1>
                <p>Click on the keyboard button to use the keyboard.<br>
                   Field marked with<strong>*</strong>are mandatory
                </p>
                
                <%
                    String error[] = null;
                    try{
                        error = (String[])session.getAttribute("error");
                    } catch(ClassCastException cce) {
                        cce.printStackTrace();
                    }
                    session.removeAttribute("error");
                %>
                <%
                    if(error != null && error[4]!=null) {
                %>
                <div align="center" class="errormsg"><%= error[4] %></div>
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

                <label><span>Select Language<strong>*</strong></span>
                <select name="langId" id="langId" onchange="importXML()">
                    <option value="-1">Select any language</option>
                    <%
                        String currentLanguage = (String)request.getParameter("langId");
                        if(currentLanguage == null) {
                            currentLanguage = "-1";
                        }
                        ArrayList langList = menuObj.getAvailableLanguage();
                        Iterator langIt = langList.iterator();
                        while(langIt.hasNext()){
                            LanguageBean lBean = (LanguageBean)langIt.next();
                            if(currentLanguage.equals(String.valueOf(lBean.getLanguageId()))) {

                    %>
                    <option selected="true" value="<%= lBean.getLanguageId()%>"><%= lBean.getLanguageName() %>&nbsp;&nbsp;(<%= lBean.getDescription() %>)</option>
                    <%
                            }else {
                    %>
                    <option value="<%= lBean.getLanguageId()%>"><%= lBean.getLanguageName() %>&nbsp;&nbsp;(<%= lBean.getDescription() %>)</option>
                    <%
                            }
                        }
                    %>
                </select>
                <h5 id="langError"></h5>
                <%
                    if(error != null && error[0]!=null) {
                %>
                <h5 style="display: inline"><%=error[0] %></h5>
                <%
                    }
                %>
                </label>
                <label><span>Select Topic<strong>*</strong></span>
                <select name="topicId" id="topicId" onchange="">
                </select>
                <h5 id="topicError"></h5>
                <%
                    if(error != null && error[1]!=null) {
                %>
                <h5 style="display: inline"><%=error[1] %></h5>
                <%
                    }
                %>
                </label>
                <label><span>Topic Name(Regional)<strong>*</strong></span>
                <input id="testb" type="text" name="topicName" id="topicName" onfocus="VirtualKeyboard.attachInput(this)"/>
                <h5 id="tnError"></h5>
                <%
                    if(error != null && error[2]!=null) {
                %>
                <h5 style="display: inline"><%=error[2] %></h5>
                <%
                    }
                %>
                </label>
                <div class="spacer"></div>
                <div class="controls">
                    <button type="submit">Translate</button>
                    <button type="reset" onclick="resetForm();">Reset</button>
                    <button type="button" id="showkb" onclick="VirtualKeyboard.toggle('testb','td'); return false;">Keyboard</button>
                </div>
                 <br>
                <div id="td" align="center"></div>
            </form>
        </div>
        <br>
        <script type="text/javascript">
         EM.addEventListener(window,'domload',function(){
             /*
             *  open the keyboard
             */
             VirtualKeyboard.toggle('testb','td');
             var el = document.getElementById('sul')
                ,lt = VirtualKeyboard.getLayouts()
                ,dl = window.location.href.replace(/[?#].+/,"")
             for (var i=0,lL=lt.length; i<lL; i++) {
                 var cl = lt[i];
                 cl = cl[0]+" "+cl[1];
                 lt[i] = "<a href=\""+dl+"?vk_layout="+cl+"\" onclick=\"VirtualKeyboard.switchLayout(this.title);return false;\" title=\""+cl+"\" alt=\""+cl+"\" >"+cl+"</a>"
             }
             el.innerHTML += "<li>"+lt.join("</li><li>")+"</li>";
         });
     </script>
    </body>
</html>
<% } else {
        String path = "translateTopicPage.do";
        session.setAttribute("currentAction",path);
%>
<h3 align="center" style="margin-top: 15px;">Please login before continue.</h3>
<%
   }
%>