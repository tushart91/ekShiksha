<%-- 
    Document   : newleftmenu
    Created on : 29 Mar, 2012, 6:08:20 PM
    Author     : rkjangir
--%>
<jsp:useBean id="menuObj" class="ekalavya.econtent.helper.EContentMenuHelper"/>
<jsp:useBean id="login" class="ekalavya.econtent.helper.UserHandler"/>
<%@page import="ekalavya.econtent.bean.Topic,java.util.*" %>
<%@page import="ekalavya.econtent.bean.LanguageBean,ekalavya.econtent.bean.URLBean" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@taglib uri="/tags/struts-tiles" prefix="tiles"%>
<%@taglib uri="/tags/struts-html" prefix="html"%>
<%
    if(session.getAttribute("langId") == null || session.getAttribute("langName") == null) {
        session.setAttribute("langId","1");
        session.setAttribute("langName","english");
    }
    int langId = Integer.parseInt((String)session.getAttribute("langId"));  // get the current language from the session


%>
<div class="leftbox">
    <div class="lnav">
	    <div class="heading"><bean:message key="ec.menu.content"/></div>
		   <div>
			   <ul style="padding-left:0px;padding-bottom: 20px;" id="treemenu1" class="treeview">

                    <%

                       String html= (String)session.getAttribute("topicsList");
                       if(html == null) {
                            ArrayList topics = menuObj.getAllTopics(langId); // get all topics in list based on language
                            html = menuObj.displayMenu(topics,0, 1,true); // build the menu using the above fetched topics
                            session.setAttribute("topicsList", html);
                       }
                    %>
                    <%= html %>


                </ul>

                <script type="text/javascript">
                //ddtreemenu.createTree(treeid, enablepersist, opt_persist_in_days (default is 1))
                ddtreemenu.createTree("treemenu1", true)

                </script>
		    </div>
    </div>
    <div class="lnav" >
		<div class="heading"><bean:message key="label.ilearning.heading"/></div>
		<div>
			<ul class="treeview" style="padding-left:0px;padding-bottom: 20px;">
                <li><a href="interactivelearning.do?topic=chemistry">Chemistry</a></li>
                <li><a href="interactivelearning.do?topic=maths">Maths</a></li>
                <li><a href="interactivelearning.do?topic=physics">Physics</a></li>
                <li><a href="interactivelearning.do?topic=english">English</a></li>
               </ul>
		</div>
	</div>
<%
    String role = (String)session.getAttribute("role");
    if(role==null) {  /* if user is not logged in */
%>

<%-- login box  --%>
<div class="lnav" id="login">
    <div class="heading"><bean:message key="label.signin.msg"/></div>

    <form id="loginform" name="loginform" action="login.do" method="post" onsubmit="return validateLoginForm();">
    <label for="userid"><bean:message key="label.login.userid"/>:</label>
    <input type="text" id="userid" name="userid" class="text"/>
    <label for="password"><bean:message key="label.login.password"/>:</label>
    <input type="password" id="password" name="password"  class="text"/>
    <div id="error" class="error"><bean:message key="label.login.blankerror"/></div>
    <%
        String error = null;
        try {
            error = (String)session.getAttribute("error");
        }catch(ClassCastException cce) {
            cce.printStackTrace();
        }
        session.removeAttribute("error");
        if(error != null && error.length() > 1) {
    %>
    <div id="jerror" class="jerror"><bean:message key="label.login.loginerror"/></div>
    <%
        }
    %>
    <div align="center">
        <input type="submit" value="<bean:message key="label.button.login"/>" class="submit" />&nbsp;&nbsp;
        <input type="reset" value="<bean:message key="label.button.reset"/>" class="submit" onclick="resetLoginForm();" />
    </div>
    <h5><a href="accountrecovery.do"><bean:message key="label.login.notaccess"/></a></h5>
    </form>
</div>
<%
    } else {  /* if user is logged in */
%>
<%-- User control panel --%>
    <div class="lnav">
        <div class="heading"><bean:message key="label.menu.controlpanel"/></div>
        <%
               if(role.equals("controller")) {
        %>

        <ul class="treeview"  style="padding-left:0px;padding-bottom: 20px;">
            <li><a href="translateTopicPage.do">Translate Topic</a></li>
            <li><a href="translatePropertyPage.do">Translate Property</a></li>
            <li><a href="profile.do"><bean:message key="label.profile.profilesetting"/></a></li>
            <li><a href="changepassword.do"><bean:message key="label.profile.changepassword"/></a></li>
            <li><a href="logout.do"><bean:message key="label.logout.message"/></a></li>
        </ul>
        <%
               } else if(role.equals("translator")) {
                     int topicId = 0;
                     try {
                          topicId = Integer.parseInt((String)session.getAttribute("translatorTopic"));
                     }catch(Exception e) {
                          e.printStackTrace();
                          topicId = 0;
                     }
         %>

         <ul class="treeview" id="treemenu2"  style="padding-left:0px;padding-bottom: 20px;">
            <li><a href="#"><bean:message key="label.translate.message"/></a>
                <ul>
                    <%
                        String userId = (String)session.getAttribute("userId");
                        //ArrayList docUrls = (ArrayList)session.getAttribute("userTranslation");
                        ArrayList docUrls = new ArrayList();
                        docUrls =menuObj.getTranslatableDocument(userId);
                        //session.setAttribute("userTranslation", docUrls);
                        Iterator it = docUrls.iterator();
                        while(it.hasNext()) {
                            URLBean url = (URLBean)it.next();
                    %>
                    <li><a href="showTranslationPage.do?topicId=<%= url.getTopicId() %>&linkId=<%= url.getLinkId() %>"><%= url.getDesc() %></a></li>
                    <%
                        }
                    %>
                </ul>

            </li>
            <li><a href="profile.do"><bean:message key="label.profile.profilesetting"/></a></li>
            <li><a id="privacysetting" rel="#privacydialog" href="#">Privacy Setting</a></li>
            <li><a href="changepassword.do"><bean:message key="label.profile.changepassword"/></a></li>
            <li><a href="logout.do"><bean:message key="label.logout.message"/></a></li>
         </ul>
        <%
               } else if(role.equals("reviewer")) {
        %>

        <ul class="treeview" id="treemenu2"  style="padding-left:0px;padding-bottom: 20px;">
            <li><a href="#"><bean:message key="label.review.message"/></a>
                <ul>
                    <%
                        String userId = (String)session.getAttribute("userId");
                        ArrayList docUrls = (ArrayList)session.getAttribute("userReview");
                        if(docUrls == null ) {
                            docUrls =menuObj.getReviewableDocument(userId);
                            session.setAttribute("userReview", docUrls);
                        }
                        Iterator it = docUrls.iterator();
                        while(it.hasNext()) {
                            URLBean url = (URLBean)it.next();
                    %>
                    <li><a href="showReviewerPage.do?topicId=<%= url.getTopicId() %>&linkId=<%= url.getLinkId() %>"><%= url.getDesc() %></a></li>
                    <%
                        }
                    %>
                </ul>
            </li>
            <li><a href="profile.do"><bean:message key="label.profile.profilesetting"/></a></li>
            <li><a id="privacysetting" rel="#privacydialog" href="pages/privacysetting.jsp">Privacy Setting</a></li>
            <li><a href="changepassword.do"><bean:message key="label.profile.changepassword"/></a></li>
            <li><a href="logout.do"><bean:message key="label.logout.message"/></a></li>
        </ul>
        <%
               } else if(role.equals("publisher")) {
        %>

        <ul class="treeview" id="treemenu2"  style="padding-left:0px;padding-bottom: 20px;">
            <li><a href="#"><bean:message key="label.publish.message"/></a>
                <ul>
                    <%
                        String userId = (String)session.getAttribute("userId");
                        ArrayList docUrls = (ArrayList)session.getAttribute("userPublish");
                        if(docUrls == null ) {
                            docUrls =menuObj.getPublishableDocument(userId);
                            session.setAttribute("userPublish", docUrls);
                        }
                        Iterator it = docUrls.iterator();
                        while(it.hasNext()) {
                            URLBean url = (URLBean)it.next();
                    %>
                    <li><a href="showPublisherPage.do?topicId=<%= url.getTopicId() %>&linkId=<%= url.getLinkId() %>"><%= url.getDesc() %></a></li>
                    <%
                        }
                    %>
                </ul>
            </li>
            <li><a href="profile.do"><bean:message key="label.profile.profilesetting"/></a></li>
            <li><a href="changepassword.do"><bean:message key="label.profile.changepassword"/></a></li>
            <li><a id="privacysetting" rel="#privacydialog" href="pages/privacysetting.jsp">Privacy Setting</a></li>
            <li><a href="logout.do"><bean:message key="label.logout.message"/></a></li>
        </ul>
        <%
               }else if(role.equals("admin")){
        %>

        <ul class="treeview"  style="padding-left:0px;padding-bottom: 20px;">
            <li><a href="addPropertyPage.do">Add Property</a></li>
            <li><a href="addHtmlContent.do">Add Html Content</a></li>
            <li><a href="viewfeedbacks.do">View Feedback</a></li>
            <li><a href="manageusers.do">Manage Users</a></li>
            <li><a href="profile.do"><bean:message key="label.profile.profilesetting"/></a></li>
            <li><a href="changepassword.do"><bean:message key="label.profile.changepassword"/></a></li>
            <li><a href="logout.do"><bean:message key="label.logout.message"/></a></li>
        </ul>
        <%
               } else if(role.equals("user")) {
        %>

        <ul class="treeview"  style="padding-left:0px;padding-bottom: 20px;">
            <li><a href="profile.do"><bean:message key="label.profile.profilesetting"/></a></li>
            <li><a href="changepassword.do"><bean:message key="label.profile.changepassword"/></a></li>
            <li><a id="privacysetting" rel="#privacydialog" href="pages/privacysetting.jsp">Privacy Setting</a></li>
            <li><a href="logout.do"><bean:message key="label.logout.message"/></a></li>
        </ul>
        <%
               } else if(role.equals("sitetranslator")) {
        %>

        <ul class="treeview"  style="padding-left:0px;padding-bottom: 20px;">
            <li><a href="translateTopicPage.do">Translate Topic</a></li>
            <li><a href="translatePropertyPage.do">Translate Property</a></li>
            <li><a href="logout.do"><bean:message key="label.logout.message"/></a></li>
        </ul>
        <%
               }

        %>
        <script type="text/javascript">
                ddtreemenu.createTree("treemenu2", true)
        </script>
    </div>
<%-- User control panel ends here --%>
<% } %>

<%-- Subscribe to newsletter form --%>
<%--
    <div class="lnav" id="login">
        <div class="heading"><bean:message key="label.subscribe.heading"/></div>
        <form id="newsletterform" name="newsletterform" action="" method="post">
            <label for="nlemail"><bean:message key="label.register.email"/>:</label>
        <input type="text" id="nlemail" name="nlemail" class="text"/>
        <div id="nlemailNullError" class="error"><bean:message key="register.error.enteremail"/></div>
        <div id="nlemailInvalidError" class="error"><bean:message key="register.error.invalidemail"/></div>
        <div align="center">
            <input type="submit" id="subscribe" value="<bean:message key="label.subscribe.submit"/>" class="submit" />
        </div>
        </form>
            <div id="accept" class="success"><bean:message key="message.newsletter.success"/></div>
        <div id="notaccept" class="success"><bean:message key="message.newsletter.error"/></div>
        <div id="emailexist" class="success"><bean:message key="message.newsletter.subscribed"/></div>
    </div>
--%>
<%-- Subscribe to newsletter form ends here --%>
    </div>


<script type="text/javascript" src="js/jquery_tools_min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("form#newsletterform").submit(function() {
           //clearing previous errors
           $("#success").hide();
           $("#nlemailNullError").hide();
           $("#nlemailInvalidError").hide();
           $("#accept").hide();
           $("#notaccept").hide();
           var nlemail = $('input#nlemail').val();
           if(nlemail == "" || ($.trim(nlemail).length < 1)) {
               $("#nlemailNullError").show();
           } else {
               if(emailValidator(nlemail)) {
                   //organising data properly
                   var data = "email="+nlemail;
                   $.ajax({
                      //this is the php file that processes the data and send mail
                      url: "pages/subscribenewsletter.jsp",
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
                        $("#newsletterform").hide();
                        //if result is true
                        if(html == "true") {
                            //show the success message
                            $("#accept").fadeIn();
                        } else if(html == "exist") {
                            $("#emailexist").fadeIn();
                        }else { //if result is false
                            //show the error message
                            $("#notaccept").fadeIn();
                        }
                      }
                   });
               } else {
                   $("#nlemailInvalidError").show();
               }
           }
           $('input#nlemail').val("");
           return false;
        });

        var olay = $("a#privacysetting").overlay({
                top: 140,
		mask: {
                    // you might also consider a "transparent" color for the mask
                    color: '#fff',
                    // load mask a little faster
                    loadSpeed: 200,
                    // very transparent
                    opacity: 0.5
                },
                closeOnClick: false,
		onBeforeLoad: function() {

			// grab wrapper element inside content
			var wrap = this.getOverlay().find("#privacySettingInfo");
                        // load the page specified in the trigger
                        wrap.html('<p style="margin-top:20px;margin-bottom:10px;" align="center"><img src="images/loading4.gif" width="50" height="50" /></p>');
			wrap.load("pages/privacysetting.jsp");
		}
	});

    });
</script>
<div class="ekshiksha" id="privacydialog" style="width:500px;overflow: visible;">
    <div class="wrap">
        <h2>ekShiksha : Privacy Setting</h2>
        <div style="margin: -10px;padding-left:0px;padding-right: 0px;" class="contentWrap" id="privacySettingInfo"></div>
    </div>

</div>