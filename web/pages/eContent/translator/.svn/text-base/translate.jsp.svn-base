<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<jsp:useBean id="helper" class="ekalavya.econtent.helper.ContentHandler"/>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        <html:base/>
        <script type="text/javascript">
            function editText(id) {
                var value = document.getElementById(id).value;
                var click = "clk"+id.substring(6);
                var totalItem = document.getElementById('totalItem').value;
                var tid = "tvalue"+id.substring(6);
                var trans = "trans"+id.substring(6);
                for(var i=1;i<=totalItem;i++) {
                    var ctid = "tvalue"+i;
                    var translation = "trans"+i;
                    var clk = "clk"+i;
                    var vid = "value"+i;
                    if(tid==ctid) {
                        document.getElementById(click).style.display = "none";
                        document.getElementById(trans).style.display = "inline";
                        document.getElementById(tid).style.display = "none";
                    } else {
                        var text = document.getElementById(vid).value;
                        if(text==null || text=="") {
                            document.getElementById(clk).style.display = "inherit";
                            document.getElementById(translation).style.display = "none";
                            document.getElementById(ctid).style.display = "none";
                        } else {
                            document.getElementById(ctid).innerHTML = text;
                            document.getElementById(clk).style.display = "none";
                            document.getElementById(translation).style.display = "none";
                            document.getElementById(ctid).style.display = "inherit";
                        }
                        
                    }
                }
            }
            function showEditor(clk) {
                var trans = "trans"+clk.substring(3);
                document.getElementById(clk).style.display = "none";
                document.getElementById(trans).style.display = "inline";
                var totalItem = document.getElementById('totalItem').value;
                for(var i=1;i<=totalItem;i++) {
                    var click = "clk"+i;
                    var translation = "trans"+i;
                    var tid = "tvalue"+i;
                    var id = "value"+i;
                    if(clk!=click) {
                        var value = document.getElementById(id).value;
                        if(value!="") {
                            document.getElementById(tid).innerHTML = value;
                            document.getElementById(click).style.display = "none";
                            document.getElementById(tid).style.display = "inherit";
                            document.getElementById(tid).value = value;
                        } else {
                            document.getElementById(click).style.display = "inherit";
                            document.getElementById(tid).style.display = "none";
                        }
                        document.getElementById(translation).style.display = "none";
                        
                    }
                }
                function trim(s)
                {
                        var l=0; var r=s.length -1;
                        while(l < s.length && s[l] == ' ')
                        {	l++; }
                        while(r > l && s[r] == ' ')
                        {	r-=1;	}
                        return s.substring(l, r+1);
                }

            }
        </script>
        <style type="text/css">
            #translataionPanel {
                width: 98%;
                height: auto;
                background-color: #fefefe;
            }
            #translataionPanel .header {
                width: 98%;
                min-width: 98%;
                height: 30px;
                color: #fefefe;
                background-color: #ff9300;
                font-size: 12px;
                font-weight: bold;
                line-height: 30px;
                padding-left: 15px;
                border-color: #ff9300;
                border-width: 1px;
                border-style: solid;
            }
            #translataionPanel .title {
                width:98%;
                height:auto;
                border-color: #ff9300;
                border-width: 1px;
                border-style: solid;
                padding-left: 15px;
                padding-top: 5px;
                padding-bottom: 5px;
                font-size: 12px;
                font-weight: normal;
                
            }
            .original {
                padding-bottom: 5px;
                border-bottom: 1px solid #ff9300;
            }
            .translated {
                padding-top : 5px;
                color: #ff9300;
                display:none;
            }
            .translate {

                color: #ff9300;
                display:none;
            }
            .click {
                padding-top : 5px;
                color: #ff9300;
                display:inherit;
             }
            #translataionPanel .title hr{
                border: 0;
                width: 100%;
                color: #ff9300;
                background-color: #ff9300;
                height: 0.05em;
            }
            #translataionPanel .title .text{
                width: 95%;
                min-height:40px;
                margin-top: 5px;
            }
            #translataionPanel .title .text:hover{
                background-color: lightgoldenrodyellow;
            }
            #translataionPanel .title .line {
                border: 0;
                width: 100%;
                color: #ff9300;
                background-color: #ff9300;
                height: 0.05em;
                margin-top: 3px;
                margin-bottom: 3px;
            }
}
        </style>
    </head>
    <body style="background-color: white">
        
        <logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
            <div  style="color: #a71c27;">
                ERROR:  Application resources not loaded -- check servlet container
                logs for error messages.
            </div>
        </logic:notPresent>
        <%
            
            String[] simpleContent = null;
            String[] tComplexContent = null;
            String[] oComplexContent = null;
            String topicId = request.getParameter("topicId");
            String linkId = request.getParameter("linkId");
            String langId = (String)session.getAttribute("langId");
            if(langId == null) {
                langId = "1";
            }
            if(topicId != null && linkId != null && langId != null) {
                oComplexContent = helper.getComplexContentByLanguage(Integer.parseInt(topicId), Integer.parseInt(linkId),1);
                simpleContent = helper.getSimpleContent(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
                tComplexContent = helper.getComplexContentByLanguage(Integer.parseInt(topicId), Integer.parseInt(linkId), 2);
                
            }
        %>
        <form name="translationfrom" method="post" action="Welcome.do">
        <div id="translataionPanel">
            <div class="header">
                Translating Motion and Time into Hindi
            </div>
            <%
                int totalItem = 0;
                int size = oComplexContent.length;
                String[] id = new String[size];
                String[] clk = new String[size];
                String[] trans = new String[size];
                String[] tvalue = new String[size];
                for(int i=0;i<size;i++) {
                    clk[i] = "clk"+(i+1);
                    trans[i] = "trans"+(i+1);
                    id[i] = "value"+(i+1);
                    tvalue[i] = "tvalue"+(i+1);
                    totalItem++;
            %>
            
            <div class="title">
                <div id="ovalue" class="original"><%= oComplexContent[i] %> </div>
                
                <div id="<%= clk[i] %>" class="click" onclick="showEditor(this.id);">(Click here to translate into hindi)</div>
                <div id="<%= trans[i] %>" class="translate" >
                    <textarea id="<%= id[i] %>" name="<%= id[i] %>" class="text"></textarea>
                </div>
                
                <div id="<%= tvalue[i] %>" class="translated" onclick="editText(this.id);"></div>
                
            </div>

            <% } %>
            <input type="hidden" id="totalItem" name="totalItem" value="<%= totalItem %>">
        </div>
        </form>
    </body>
</html:html>
