
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib uri="/tags/struts-tiles" prefix="tiles"%>
<%@taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%
    int langId = 1;
    String language = (String)session.getAttribute("langId");
    if(language != null) {
        try {
            langId = Integer.parseInt(language);
        } catch(Exception e) {
            langId = 1;
        }
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>ekShiksha : India --> One Country --> One Education</title>
<noscript>
    <style type="text/css">
        #wrap {display:none;}
    </style>
    <meta http-equiv="refresh" content="0; troubles/error.html" />
</noscript>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta NAME="DESCRIPTION" CONTENT="ekshiksha provides the science content in all the major Indian language, enhanced with simulation and lot's of interactivity."/>
<meta NAME="KEYWORDS" CONTENT="ekshiksha,ekShiksha,Education,Physics,Chemistry,Maths,Biology,Simulations,India->One Country->One Education,Interactive Learning"/>
<meta NAME="AUTHOR" CONTENT="ekShiksha"/>
<meta NAME="RATING" CONTENT="General"/>
<meta NAME="ROBOTS" CONTENT="index, follow"/>
<meta name="googlebot" content="index, follow" />
<meta property="og:title" content="ekShiksha"/>

<link rel="SHORTCUT ICON" href="images/myIcon.ico"/>
<%
    if(langId == 1) {
%>
<link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
<%
    } else if(langId == 2) {
%>
<link rel="stylesheet" type="text/css" href="style/style_hi.css" media="screen" />
<%
    } else if(langId == 3) {
%>
<link rel="stylesheet" type="text/css" href="style/style_ta.css" media="screen" />
<%
    } else if(langId == 4) {
%>
<link rel="stylesheet" type="text/css" href="style/style_mr.css" media="screen" />
<%
    } else if(langId == 5) {
%>
<link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
<%
    } else if(langId == 6) {
%>
<link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
<%
    } else if(langId == 7) {
%>
<link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
<%
    } else if(langId == 8) {
%>
<link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
<%
    } else {
%>
<link rel="stylesheet" type="text/css" href="style/style.css" media="screen" />
<%
    }
%>
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="rss-articles/" />
<script type="text/javascript" src="js/simpletreemenu.js"></script>
<link rel="stylesheet" type="text/css" href="style/simpletree.css" />
<script type="text/javascript" src="js/ekShiksha_main.js"></script>
<script type="text/javascript" src="pages/eContent/admin/vk_loader.js"></script>
</head>
<body>
    
<div id="wrap">
    <tiles:insert attribute="header" flush="false"/>
<div id="content">
<tiles:insert attribute="leftmenu" flush="false"/>

<div class="right"><tiles:insert attribute="body" flush="false"/></div>
<div style="clear: both;"></div>
</div>
<tiles:insert attribute="footer" flush="false"/>
</div>
<%
    //tracing the ip address of every user who visit the website.
    //getting the VisitorIpAddress from the session
    String ipAddress = (String)session.getAttribute("VisitorIpAddress");
    if(ipAddress == null) { //checking whether ipAddress is null or not
        //if null then
        ipAddress = request.getHeader("X-FORWARDED-FOR"); //checking for proxy
        if(ipAddress == null) { //if not proxy
            ipAddress = request.getRemoteAddr(); //getting the client ip address
        }
        session.setAttribute("VisitorIpAddress", ipAddress);
        ekalavya.econtent.helper.UserHandler handler = new ekalavya.econtent.helper.UserHandler();
        int visitorId = handler.trackVisitor(ipAddress);
        session.setAttribute("visitorId", new Integer(visitorId));
    }
%>
</body>
</html>