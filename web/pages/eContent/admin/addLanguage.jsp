<%-- 
    Document   : addLanguage
    Created on : 28 Sep, 2010, 6:12:20 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>eContent Admin : Add a new language</title>
        <script type="text/javascript" src="pages/eContent/admin/vk_loader.js" ></script>
        <script type="text/javascript">
            function validateLanguageForm() {
                var name = document.form.languageName.value;
                var desc = document.form.description.value;
                if(name == null || name.length < 1) {
                    alert("Language name(English) can't be empty");
                    return false;
                }
                if(desc == null || desc.length < 1) {
                    alert("Language name(Regional) can't be empty");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
        <br>
        <div id="stylized" class="myform">
            <form id="form" name="form" method="post" action="addLanguage.do" onsubmit="return validateLanguageForm();">
                <h1>Add new language</h1>
                <p>Click on the keyboard button to use the keyboard.<br>
                   Field marked with<strong>*</strong>are mandatory
                </p>
                <%
                    String error = (String)session.getAttribute("error");
                    if(error != null) {
                %>
                <div align="center" class="err"><%= error %></div>
                <%
                    }
                    session.removeAttribute("error");
                %>
                <label>Language Name(English)<strong>*</strong></label>
                <input type="text" name="languageName" id="languageName" />
                <label>Language Name(Regional)<strong>*</strong></label>
                <input id="testb" type="text" name="description" id="description" onfocus="VirtualKeyboard.attachInput(this)"/>
                <div class="spacer"></div>
                <div class="controls">
                    <button type="submit">Add</button>
                    <button type="reset">Reset</button>
                    <button type="button" id="showkb" onclick="VirtualKeyboard.toggle('testb','td'); return false;">Keyboard</button>
                </div>
                <br />
                <div id="td"></div>
            </form>
        </div>
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
