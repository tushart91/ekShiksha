<%-- 
    Document   : privacysetting
    Created on : 30 Aug, 2011, 5:03:45 PM
    Author     : rkjangir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="ekalavya.econtent.bean.PrivacySetting" %>
<%@page  import="ekalavya.econtent.helper.UserHandler" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
    int curLanguage = 1;
    String lang = "1";
    String userId = "";
    String role = "";
    String state = "";
    String value = "";
    PrivacySetting settings = null;
    
        if(lang != null) {
        try {
            lang = (String)session.getAttribute("langId");
            userId = (String)session.getAttribute("userId");
            role = (String)session.getAttribute("role");
            curLanguage = Integer.parseInt(lang);
            UserHandler handler = new UserHandler();
            if(userId != null) {
                settings = handler.getPrivacySetting(userId);
            }
        }catch(Exception e) {
            curLanguage = 1;
            userId = "";
            role = "";
        }
    }

%>
<div id="contentbox" style="width:100%;">
<div class="verticalspace"></div>
<%
    if(settings != null && role != null && role.length()>1 && (role.equals("translator") || role.equals("reviewer") || role.equals("publisher")) && userId != null && userId.length()>1) {
%>
<form action="" method="post" name="privacysettingform" id="privacysettingform">
<% if(settings.canShowEmail()) {
        state = "show";
        value = "true";
   } else {
        state = "hide";
        value = "false";
   }
%>
<div class="viewbox">
    <div class="viewitem">Users can see your <strong>Email</strong> in your profile information.</div>
    <div class="<%=state%>" id="emailState"></div>
    <div style="clear:both"></div>
    <input type="hidden" name="emailView" id="emailView" value="<%=value%>"/>
</div>
<hr>
<% if(settings.canShowMobile()) {
        state = "show";
        value = "true";
   } else {
        state = "hide";
        value = "false";
   }
%>
<div class="viewbox">
    <div class="viewitem">Users can see your <strong>Mobile Number</strong> in your profile information.</div>
    <div class="<%=state%>" id="mobileState"></div>
    <div style="clear:both"></div>
    <input type="hidden" name="mobileView" id="mobileView" value="<%=value%>"/>
</div>
<hr>
<% if(settings.canShowQualification()) {
        state = "show";
        value = "true";
   } else {
        state = "hide";
        value = "false";
   }
%>
<div class="viewbox">
    <div class="viewitem">Users can see your <strong>Qualification</strong> in your profile information.</div>
    <div class="<%=state%>" id="qualificationState"></div>
    <div style="clear:both"></div>
    <input type="hidden" name="qualificationView" id="qualificationView" value="<%=value%>"/>
</div>
<hr>
<% if(settings.canShowProfile()) {
        state = "show";
        value = "true";
   } else {
        state = "hide";
        value = "false";
   }
%>
<div class="viewbox">
    <div class="viewitem">Users can see your <strong>Profile</strong> in your profile information.</div>
    <div class="<%=state%>" id="profileState"></div>
    <div style="clear:both"></div>
    <input type="hidden" name="profileView" id="profileView" value="<%=value%>"/>
</div>
<hr>

<div class="verticalspace"></div>
<div class="bottomaction">
    <button type="submit">Done</button>
</div>
</form>
<%
    } else {
%>
<div class="errorbox"><span class="errorspan"><bean:message key="table.detail.error"/></span></div>
<div class="verticalspace"></div>
<%
    }
%>
</div>
<div id="notaccept" class="infowrap">
    <span><bean:message key="translatetitle.form.error"/></span>
</div>
<div id="accept" class="infowrap">
    <span>Your privacy settings is successfully updated.</span>
</div>
<div id="loading" align="center" style="display:none;padding-top:10px;padding-bottom: 10px;text-align: center;width:100%;"><img src="images/loading4.gif" width="50" height="50" /></div>

<script type="text/javascript">
    $(document).ready(function(){
        $(".show").click(function() {
            var cls = $(this).attr("class");
            var id = $(this).attr("id");
            if(cls == "show") {
                $(this).removeClass("show");
                $(this).addClass("hide");
                if(id == "emailState") {
                    $("input#emailView").val("false");
                } else if(id == "mobileState") {
                    $("input#mobileView").val("false");
                } else if(id == "qualificationState") {
                    $("input#qualificationView").val("false");
                } else if(id == "profileState") {
                    $("input#profileView").val("false");
                }
            } else if(cls == "hide"){
                $(this).removeClass("hide");
                $(this).addClass("show");
                if(id == "emailState") {
                    $("input#emailView").val("true");
                } else if(id == "mobileState") {
                    $("input#mobileView").val("true");
                } else if(id == "qualificationState") {
                    $("input#qualificationView").val("true");
                } else if(id == "profileState") {
                    $("input#profileView").val("true");
                }
            }
        });
        
        $(".hide").click(function() {
            var cls = $(this).attr("class");
            var id = $(this).attr("id");
            if(cls == "show") {
                $(this).removeClass("show");
                $(this).addClass("hide");
                if(id == "emailState") {
                    $("input#emailView").val("false");
                } else if(id == "mobileState") {
                    $("input#mobileView").val("false");
                } else if(id == "qualificationState") {
                    $("input#qualificationView").val("false");
                } else if(id == "profileState") {
                    $("input#profileView").val("false");
                }
            } else if(cls == "hide"){
                $(this).removeClass("hide");
                $(this).addClass("show");
                if(id == "emailState") {
                    $("input#emailView").val("true");
                } else if(id == "mobileState") {
                    $("input#mobileView").val("true");
                } else if(id == "qualificationState") {
                    $("input#qualificationView").val("true");
                } else if(id == "profileState") {
                    $("input#profileView").val("true");
                } 
            }
        });

        $("form#privacysettingform").submit(function() {
                var emailView = $("input#emailView").val();
                var mobileView = $("input#mobileView").val();
                var qualificationView = $("input#qualificationView").val();
                var profileView = $("input#profileView").val();
                var data = "emailView="+emailView+"&mobileView="+mobileView+"&qualificationView="+qualificationView+"&profileView="+profileView;
                $("#privacysettingform").hide();
                $("#loading").css("display","block");
                $.ajax({
                      //this is the jsp file that processes the data and send mail
                      url: "pages/updateprivacysettings.jsp",
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
                        $("#loading").css("display","none");
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
                return false;
        });
    });
</script>
<style>
   .ekshiksha hr {
        clear:both;height:1px;border:0px; background-color: #eaeaea;margin:0px 20px 0px 20px;
    }
    .ekshiksha .verticalspace {
        height:20px;
    }
    .ekshiksha .viewbox {
        padding:5px 5px 5px 5px;
        margin: 0px 20px 0px 20px;
    }
    .ekshiksha .viewitem {
        float:left;
        width: 80%;
        font-weight: lighter;
    }
    .ekshiksha .viewbox .show {
        background-image: url(images/show.png);
        background-repeat: no-repeat;
        width: 55px;
        height:27px;
        float:right;
        cursor: pointer;
    }
    .ekshiksha .viewbox .hide {
        background-image: url(images/hide.png);
        width: 55px;
        height:27px;
        float:right;
        cursor: pointer;
    }

    .ekshiksha .viewbox:hover {
        background-color: #f3f3f3;
    }
    
    .ekshiksha .errorbox {
        padding:10px 5px 10px 5px;
        text-align: center;
    }
    .ekshiksha .errorspan {
        color:#B4241B;
        font-weight: bold;
        font-size: 14px;
        width: 54px;
        height: 27px;

    }
    .ekshiksha .viewbox strong {
        font-size: 12px;
        font-weight: bold;

    }
    
    .ekshiksha .bottomaction {
        border-top: 1px solid #e5e5e5;
        text-align: right;
        background-color: #f4f4f4;
        padding: 7px 10px 7px 7px;
    }
    .ekshiksha .bottomaction button {
        padding:2px 2px 2px 2px;
        color:white;
        font-weight: bold;
        vertical-align: middle;
        background-color:#7CB8E2;
        cursor: pointer;
        border:1px outset #67b8ff;
    }
    .ekshiksha .infowrap {
        padding-top:5px;padding-bottom:15px;display:none;font-size:12px;
        margin-left: 20px;
    }
    .ekshiksha .infowrap span {
        color:#B4241B;font-weight: bold;font-size: 14px;
    }
    .ekshiksha .infowrap ul {
        list-style:circle;margin-top:5px;margin-left: 20px;
    }
</style>
