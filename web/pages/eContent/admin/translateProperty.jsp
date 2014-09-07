<%-- 
    Document   : translateProperty
    Created on : 7 Oct, 2010, 3:01:17 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
        <title>eContent Admin : Translate Properties</title>
        <SCRIPT LANGUAGE="JavaScript" TYPE="text/javascript">
 
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

            //determine url to get xml
            var param = document.propertyform.langId.value;
            var url = 'pages/eContent/admin/populateProperty.jsp?langId='+param;
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

          var key = document.propertyform.key;

          //empty control
          for (var q=key.options.length;q>=0;q--)
          {
              key.options[q]=null;
          }
          document.propertyform.keyValue.value="";
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
                key.options[i] = new Option(name, value);
           }
    }
    function validateTranslateForm() {
        var result = true;
        //getting all form values
        var key = document.propertyform.key.value;
        var keyValue = document.propertyform.rkeyValue.value;
        //clearing all the previous errors
        document.getElementById("langError").style.display = "none";
        document.getElementById("keyError").style.display = "none";
        document.getElementById("propertyError").style.display = "none";
        
        if(!validateLanguage()){
            result = false;
        }
        if(key == "-1") {
            document.getElementById("keyError").style.display = "inline";
            result = false;
        }

        if(keyValue == "") {
            document.getElementById("propertyError").style.display = "inline";
            result = false;
        }
        return result;


    }
    function validateLanguage() {
        var val = document.propertyform.langId.value;
        if(val == "-1") {
            document.getElementById("langError").style.display = "inline";
            return false;
        }
        return true;
    }

    function showKeyValue(key_value)
    {
	if(document.getElementById("key").value!="-1" && document.getElementById("langId").value!="-1")
	{
            xmlHttp=GetXmlHttpObject()
            if (xmlHttp==null)
            {
                alert ("Browser does not support HTTP Request")
             return
            }
                var id = document.getElementById("langId").value;
                var url="pages/eContent/admin/populateKeyValue.jsp"
                url=url+"?key="+key_value+"&langId="+id;

                xmlHttp.onreadystatechange=stateChanged
                xmlHttp.open("GET",url,true)
                xmlHttp.send(null)
         }
         else
         {
            alert("Please Select a key");
         }
    }

    function stateChanged()
    {
        document.getElementById("keyValue").value = null;
        if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete") {
           var showdata = xmlHttp.responseText;
           var keyVal = trim(showdata);
           document.getElementById("keyValue").value= keyVal;
         }
    }

    function GetXmlHttpObject()
    {
        var xmlHttp=null;
        try{
           // Firefox, Opera 8.0+, Safari
           xmlHttp=new XMLHttpRequest();
        }catch (e){
          //Internet Explorer
           try{
              xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
           }catch (e){
              xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
           }
         }
        return xmlHttp;
    }
    // Removes leading whitespaces
    function LTrim( value ) {

            var re = /\s*((\S+\s*)*)/;
            return value.replace(re, "$1");

    }

    // Removes ending whitespaces
    function RTrim( value ) {

            var re = /((\s*\S+)*)\s*/;
            return value.replace(re, "$1");

    }

    // Removes leading and ending whitespaces
    function trim(value) {

            return LTrim(RTrim(value));

    }


    </SCRIPT>
    </head>
    <body onload="importXML()">
        
        <div id="stylized" class="myform">
            <form id="propertyform" name="propertyform" method="post" action="translateProperty.do" onsubmit="return validateTranslateForm();">
                <h1>Translate Properties</h1>
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
                    String currentLanguage = (String)request.getParameter("langId");
                    if(currentLanguage == null) {
                        currentLanguage = "-1";
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
                        ArrayList langList = menuObj.getAvailableLanguage();
                        Iterator langIt = langList.iterator();
                        while(langIt.hasNext()){
                            LanguageBean lBean = (LanguageBean)langIt.next();
                            if(!lBean.getLanguageName().equalsIgnoreCase("English")) {
                                if(currentLanguage.equals(String.valueOf(lBean.getLanguageId()))) {
                    %>
                    <option selected value="<%= lBean.getLanguageId()%>"><%= lBean.getLanguageName() %>&nbsp;&nbsp;(<%= lBean.getDescription() %>)</option>
                    <%
                                }else {
                    %>
                            <option value="<%= lBean.getLanguageId()%>"><%= lBean.getLanguageName() %>&nbsp;&nbsp;(<%= lBean.getDescription() %>)</option>
                    <%
                                }
                            }
                        }
                    %>
                </select>
                <h5 id="langError">Please select any language</h5>
                <%
                    if(error != null && error[0]!=null) {
                %>
                <h5 style="display: inline"><%=error[0] %></h5>
                <%
                    }
                %>
                </label>
                <label><span>Select Key<strong>*</strong></span>
                <select name="key" id="key" onchange="showKeyValue(this.value);"></select>
                <h5 id="keyError">Please select any key</h5>
                <%
                    if(error != null && error[1]!=null) {
                %>
                <h5 style="display: inline"><%=error[1] %></h5>
                <%
                    }
                %>
                </label>
                <label><span>Property Value(English)</span>
                    <textarea id="keyValue" name="keyValue" readonly="true"></textarea></label>
                <label><span>Property Value(Regional)<strong>*</strong></span>
                <textarea id="testb" name="rkeyValue" onfocus="VirtualKeyboard.attachInput(this)"></textarea>
                <h5 id="propertyError">Property value can't be empty</h5>
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
                    <button type="reset">Reset</button>
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
        String path = "translatePropertyPage.do";
        session.setAttribute("currentAction",path);
%>
<h3 align="center" style="margin-top: 15px;">Please login before continue.</h3>
<%
   }
%>