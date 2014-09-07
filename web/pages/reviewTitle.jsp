<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="ekalavya.econtent.bean.URLBean" %>
<%@page import="ekalavya.econtent.helper.ShowContentHelper" %>
<%@page import="ekalavya.econtent.helper.ContentHandler" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
    boolean isError = false;
    boolean isTranslated = true;
    String role = (String)session.getAttribute("role");
    String userId = (String)session.getAttribute("userId");
    String rLangId = (String)session.getAttribute("reviewerLangId");
    String queryString = request.getParameter("queryString");
    ShowContentHelper helper = new ShowContentHelper();
    ContentHandler handler = new ContentHandler();
    int originalLanguage = 0;
    URLBean url = null;
    String translatedTitle = "";
    int topicId = 0;
    int linkId = 0;
    int reviewerLanguage = 0;
    if(role != null && userId != null && rLangId != null && queryString != null) {
        try {
            String[] param = queryString.split(";");
            topicId = Integer.parseInt(param[0]);
            linkId = Integer.parseInt(param[1]);
            reviewerLanguage = Integer.parseInt(rLangId);
            originalLanguage = handler.getOriginalLanguage(topicId, linkId);
            url = helper.getLink(topicId, linkId, originalLanguage);
            translatedTitle = helper.getLinkDescription(topicId, linkId, reviewerLanguage, 2);
            if(translatedTitle == null || translatedTitle.length() < 1) {
                translatedTitle = url.getDesc();
                isTranslated = false;
            }
        } catch(Exception e) {
            isError = true;
        }
    } else {
        isError = true;
    }
%>
<div id="contentbox" style="width:100%;">
<%
    if(isError) {
%>
<div class="infodiv" style="margin-top:5px;"><span><bean:message key="table.detail.error"/></span></div>
<%
    } else {
%>
    
    <form name="reviewTitleRequest" action="pages/titlereviewrequest.jsp" method="post" id="reviewTitleRequest" style="margin-top:10px;">
        <%
            if(!isTranslated) {
        %>
        <div  style="color:#a71c27;;margin-left: 10px;"><bean:message key="reviewtitle.form.nottranslated"/></div>
        <%
            }
        %>
        <div class="inputrow">
            <span><bean:message key="translatetitle.form.original"/> : <strong>*</strong></span>
            <textarea id="originalTitle" readonly="true"><%= url.getDesc() %></textarea>
        </div>
        <div class="inputrow">
            <span><bean:message key="reviewtitle.form.translatedtitle"/> : <strong>*</strong></span>
            <textarea id="translatedTitle" id="translatedTitle"><%= translatedTitle %></textarea>
            <div id="reivewTitleError" class="errormsg"><bean:message key="translatetitle.form.blanktitle"/></div>
        </div>
        <input type="hidden" name="topicId" id="topicId" value="<%=topicId%>"/>
        <input type="hidden" name="linkId" id="linkId" value="<%=linkId%>"/>
        <div style="text-align:center;width:100%;" align="center">
            <div id="kb"></div>
        </div>
        <div class="action-layer">
             <button class="actionbutton" type="submit" id="submit"><bean:message key="reviewtitle.form.review"/></button>&nbsp;
             <button class="actionbutton" type="reset" id="reset" ><bean:message key="label.button.reset"/></button>&nbsp;
             <button class="actionbutton" onclick="VirtualKeyboard.toggle('translatedTitle','kb'); return false;" type="button">Keyboard</button>
        </div>

    </form>
<%
    }
%>
</div>
<div id="notaccept" class="infowrap">
    <span><bean:message key="translatetitle.form.error"/></span>
    <ul style="list-style:circle;margin-top:5px;margin-left: 20px;">
        <li><bean:message key="translatetitle.form.errorone"/></li>
        <li><bean:message key="translatetitle.form.errortwo"/></li>
    </ul>
</div>
<div id="accept" class="infowrap">
    <span><bean:message key="reviewtitle.form.success"/></span>
</div>
<div id="loading" align="center" style="display:none;padding-top:10px;padding-bottom: 10px;text-align: center;width:100%;"><img src="images/loading4.gif" width="50" height="50" /></div>
<script type="text/javascript" charset="utf-8">
    $(document).ready(function() {
        $("#translatedTitle").focus();
        $("#reviewTitleRequest").submit( function() {
           //Get the data from all the fields
           var topicId = $('input#topicId').val();
           var linkId = $('input#linkId').val();
           var translatedTitle = $('textarea#translatedTitle').val();
           //clearing previous errors
           $("#reivewTitleError").hide();
           $("#translatedTitle").removeClass("error");
           //Simple validation to make sure user entered something
            //If error found, show error message
           if(translatedTitle == "") {
               $("#reviewTitleError").show();
               $("#translatedTitle").addClass("error");
               $("#translatedTitle").focus();
               return false;
           }else {
               //organize the data properly
                var data = "topicId=" + topicId + "&linkId=" + linkId + "&translatedTitle="
                + translatedTitle;
               //start the ajax
               $.ajax({
                  //this is the jsp file that processes the data
                  url: "pages/titlereviewrequest.jsp",
                  //POST method is used
                  type: "POST",
                  //pass the data
                  data : data,
                  //Do not cache the page
                  cache : false,
                  //success
                  success : function(html) {
                      //trim the white spaces from the result
                    html = $.trim(html);
                    //hide the form
                    $("#reviewTitleRequest").hide();
                    //if result is true
                    if(html == "true") {
                        //show the success message
                        $("#accept").fadeIn();
                    } else { //if result is false
                        //show the error message
                        $("#notaccept").fadeIn();
                    }
                  }
               });
           }
           //cancel the submit button default behaviours
           return false;
        });

        $("#reset").click(function() {
            //reset the error messages
            $("#reviewTitleError").hide();
            $("#translatedTitle").removeClass("error");
            $("#translatedTitle").focus();
        });
    });

</script>
<style>
    .inputrow {
        width:100%;
        margin-bottom: 5px;
        display:block;
    }
    .inputrow span {
        width:30%;
        display: inline-block;
        text-align: right;
        vertical-align: top;
        padding-right: 5px;
        font-size: 12px;
        color: #686666;
        padding-top:2px;
    }
    .inputrow span strong {
        color: #a71c27;
    }
    .inputrow textarea {
        width:67%;
        _width:65%;
        height:45px;
        border:1px solid #afafaf;
    }
    .inputrow textarea:hover {
        border:1px solid #3e3e3e;
    }
    .inputrow textarea.active {
        border:1px solid #3e3e3e;
    }
    .inputrow textarea.error {
        background-color: #fff5f5;
        border: 1px solid #ffb8b8;
        color: #010101;
    }
    .inputrow textarea.normal {
        border:1px solid #afafaf;
        background-color: #fefefe;
    }
    .inputrow .errormsg {
        color: #a71c27;
        font-size: 12px;
        margin-left: 32%;
        display:none;
    }
    .infowrap {
        width:100%;padding-top:5px;padding-bottom:5px;display:none;font-size:12px;
    }
    .infowrap span {
        color:#B4241B;font-weight: bold;font-size: 14px;
    }
    .infowrap ul {
        list-style:circle;margin-top:5px;margin-left: 20px;
    }
    .action-layer {
        float:left;width:100%;text-align: right;margin-top:5px;
    }

</style>