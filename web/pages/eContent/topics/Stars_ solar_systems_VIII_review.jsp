<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="helper" class="ekalavya.econtent.helper.ContentHandler"/>
<%
        String[][] simpleContent = null;
        String[][] complexContent = null;
        String[] translatableContent = null;
        String topicId = request.getParameter("topicId");
        String linkId = request.getParameter("linkId");
        String langId = (String)session.getAttribute("reviewerLangId");
        if(langId == null) {
            langId = "1";
        }
        if(topicId != null && linkId != null && langId != null) {
            session.setAttribute("topicId", topicId);
            session.setAttribute("linkId",linkId);
            simpleContent = helper.getSimpleContentForReviewer(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            complexContent = helper.getComplexContentForReviewer(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            translatableContent = helper.getTranslatableContent(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            session.setAttribute("simpleContent",simpleContent);
            session.setAttribute("complexContent",complexContent);
        }
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="style/content_style.css" type="text/css">
  </head>
  <body>
<div id="contentPanel" class="contentPane">
      <h1><a title="Click to review this content" class="regular" style="color:<%= complexContent[0][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=0&type=complex'); return false;"><%= complexContent[0][0] %></a></h1>
      <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[1][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=1&type=complex'); return false;"><%= complexContent[1][0] %></a></p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_1.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[2][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=2&type=complex'); return false;"><%= complexContent[2][0] %></a></div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[3][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=3&type=complex'); return false;"><%= complexContent[3][0] %></a> 
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[4][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=4&type=complex'); return false;"><%= complexContent[4][0] %></a>
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[5][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=5&type=complex'); return false;"><%= complexContent[5][0] %></a>
   </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[6][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=6&type=complex'); return false;"><%= complexContent[6][0] %></a></p>
   
<h2><a title="Click to review this content" class="regular" style="color:<%= complexContent[7][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=7&type=complex'); return false;"><%= complexContent[7][0] %></a></h2>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[0][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=38&index=0&type=simple'); return false;"><%= simpleContent[0][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[8][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=8&type=complex'); return false;"><%= complexContent[8][0] %></a></p>
</fieldset>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[9][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=9&type=complex'); return false;"><%= complexContent[9][0] %></a></p>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[10][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=10&type=complex'); return false;"><%= complexContent[10][0] %></a></p>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[11][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=11&type=complex'); return false;"><%= complexContent[11][0] %></a></p>
<div class="paheli">
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[12][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=12&type=complex'); return false;"><%= complexContent[12][0] %></a></p>
</div>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[13][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=13&type=complex'); return false;"><%= complexContent[13][0] %></a></p></div>
<div class="images"><img src="images_stars_solar_system_VIII/figure_2.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[14][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=14&type=complex'); return false;"><%= complexContent[14][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[15][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=15&type=complex'); return false;"><%= complexContent[15][0] %></a></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_3.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[16][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=16&type=complex'); return false;"><%= complexContent[16][0] %></a></div>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[1][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=39&index=1&type=simple'); return false;"><%= simpleContent[1][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[17][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=17&type=complex'); return false;"><%= complexContent[17][0] %></a></p>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[18][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=18&type=complex'); return false;"><%= complexContent[18][0] %></a></p>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[19][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=19&type=complex'); return false;"><%= complexContent[19][0] %></a></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_4_a.JPG" style="margin-right:20px;" height="250px"><img src="images_stars_solar_system_VIII/figure_4_b.JPG"  height="250px"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[20][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=20&type=complex'); return false;"><%= complexContent[20][0] %></a>  </div>
</fieldset>

<div class="images"><img src="images_stars_solar_system_VIII/figure_5.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[21][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=21&type=complex'); return false;"><%= complexContent[21][0] %></a></div>

<div class="paheli">
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[22][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=22&type=complex'); return false;"><%= complexContent[22][0] %></a></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_6.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[23][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=23&type=complex'); return false;"><%= complexContent[23][0] %></a></div>
</div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[24][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=24&type=complex'); return false;"><%= complexContent[24][0] %></a>
    </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[25][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=25&type=complex'); return false;"><%= complexContent[25][0] %></a></p>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[26][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=26&type=complex'); return false;"><%= complexContent[26][0] %></a></p>
</div>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[2][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=41&index=2&type=simple'); return false;"><%= simpleContent[2][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[27][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=27&type=complex'); return false;"><%= complexContent[27][0] %></a></p>
</fieldset>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[28][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=28&type=complex'); return false;"><%= complexContent[28][0] %></a></p>
<h4><a title="Click to review this content" class="regular" style="color:<%= complexContent[29][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=29&type=complex'); return false;"><%= complexContent[29][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[30][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=30&type=complex'); return false;"><%= complexContent[30][0] %></a></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_7.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[31][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=31&type=complex'); return false;"><%= complexContent[31][0] %></a></div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[32][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=32&type=complex'); return false;"><%= complexContent[32][0] %></a></p>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[33][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=33&type=complex'); return false;"><%= complexContent[33][0] %></a></p>
</div>
<div class="paheli"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[34][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=34&type=complex'); return false;"><%= complexContent[34][0] %></a></p>
</div>

<fieldset class="know-more">
    <legend class="know-more-legend"><a title="Click to review this content" class="regular" style="color:<%= complexContent[35][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=35&type=complex'); return false;"><%= complexContent[35][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[36][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=36&type=complex'); return false;"><%= complexContent[36][0] %></a></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_8.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[37][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=37&type=complex'); return false;"><%= complexContent[37][0] %></a></div>
</fieldset>
<h2><a title="Click to review this content" class="regular" style="color:<%= complexContent[38][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=38&type=complex'); return false;"><%= complexContent[38][0] %></a></h2>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[39][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=39&type=complex'); return false;"><%= complexContent[39][0] %></a>
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[40][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=40&type=complex'); return false;"><%= complexContent[40][0] %></a>
</p>
<fieldset class="what-learnt">
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[41][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=41&type=complex'); return false;"><%= complexContent[41][0] %></a></p>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[42][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=42&type=complex'); return false;"><%= complexContent[42][0] %></a></p>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[43][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=43&type=complex'); return false;"><%= complexContent[43][0] %></a></p>
</fieldset>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[44][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=44&type=complex'); return false;"><%= complexContent[44][0] %></a></p>
</div>
<div class="paheli"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[45][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=45&type=complex'); return false;"><%= complexContent[45][0] %></a></p>
</div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[46][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=46&type=complex'); return false;"><%= complexContent[46][0] %></a>
   </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[47][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=47&type=complex'); return false;"><%= complexContent[47][0] %></a>
  </p><p> <a title="Click to review this content" class="regular" style="color:<%= complexContent[48][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=48&type=complex'); return false;"><%= complexContent[48][0] %></a>
</P>


<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[3][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=42&index=3&type=simple'); return false;"><%= simpleContent[3][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[49][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=49&type=complex'); return false;"><%= complexContent[49][0] %></a></p>
</fieldset>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[50][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=50&type=complex'); return false;"><%= complexContent[50][0] %></a>
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[51][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=51&type=complex'); return false;"><%= complexContent[51][0] %></a>
</p>

<div class="paheli"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[52][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=52&type=complex'); return false;"><%= complexContent[52][0] %></a></p>
</div>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[53][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=53&type=complex'); return false;"><%= complexContent[53][0] %></a></p>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[4][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=43&index=4&type=simple'); return false;"><%= simpleContent[4][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[54][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=54&type=complex'); return false;"><%= complexContent[54][0] %></a></p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_9.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[55][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=55&type=complex'); return false;"><%= complexContent[55][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[56][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=56&type=complex'); return false;"><%= complexContent[56][0] %></a></p>
</fieldset>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[57][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=57&type=complex'); return false;"><%= complexContent[57][0] %></a>
  </p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_10.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[58][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=58&type=complex'); return false;"><%= complexContent[58][0] %></a></div>
<h2><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[5][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=481&index=5&type=simple'); return false;"><%= simpleContent[5][0] %></a></h2>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[59][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=59&type=complex'); return false;"><%= complexContent[59][0] %></a>
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[60][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=60&type=complex'); return false;"><%= complexContent[60][0] %></a></p>

<div class="paheli">
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[61][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=61&type=complex'); return false;"><%= complexContent[61][0] %></a></p>
</div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[62][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=62&type=complex'); return false;"><%= complexContent[62][0] %></a>
</p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_11.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[63][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=63&type=complex'); return false;"><%= complexContent[63][0] %></a></div>
<P><a title="Click to review this content" class="regular" style="color:<%= complexContent[64][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=64&type=complex'); return false;"><%= complexContent[64][0] %></a>
  </P><P><a title="Click to review this content" class="regular" style="color:<%= complexContent[65][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=65&type=complex'); return false;"><%= complexContent[65][0] %></a></P>
<div class="images"><img src="images_stars_solar_system_VIII/figure_12.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[66][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=66&type=complex'); return false;"><%= complexContent[66][0] %></a></div>
<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[6][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=44&index=6&type=simple'); return false;"><%= simpleContent[6][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[67][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=67&type=complex'); return false;"><%= complexContent[67][0] %></a></p>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[68][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=68&type=complex'); return false;"><%= complexContent[68][0] %></a></p>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[69][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=69&type=complex'); return false;"><%= complexContent[69][0] %></a></p>
</fieldset>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[70][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=70&type=complex'); return false;"><%= complexContent[70][0] %></a></p>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[7][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=45&index=7&type=simple'); return false;"><%= simpleContent[7][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[71][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=71&type=complex'); return false;"><%= complexContent[71][0] %></a>
</p>
</fieldset>
<div class="images"><img src="images_stars_solar_system_VIII/figure_13.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[72][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=72&type=complex'); return false;"><%= complexContent[72][0] %></a></div>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[8][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=46&index=8&type=simple'); return false;"><%= simpleContent[8][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[73][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=73&type=complex'); return false;"><%= complexContent[73][0] %></a></p>
</fieldset>
<div class="images"><img src="images_stars_solar_system_VIII/figure_14.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[74][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=74&type=complex'); return false;"><%= complexContent[74][0] %></a></div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[75][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=75&type=complex'); return false;"><%= complexContent[75][0] %></a></p>
<div class="paheli">
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[76][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=76&type=complex'); return false;"><%= complexContent[76][0] %></a></p>
</div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[77][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=77&type=complex'); return false;"><%= complexContent[77][0] %></a>
   </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[78][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=78&type=complex'); return false;"><%= complexContent[78][0] %></a> 
</p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_15.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[79][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=79&type=complex'); return false;"><%= complexContent[79][0] %></a></div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[80][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=80&type=complex'); return false;"><%= complexContent[80][0] %></a></p>



<fieldset class="know-more">
    <legend class="know-more-legend"><a title="Click to review this content" class="regular" style="color:<%= complexContent[81][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=81&type=complex'); return false;"><%= complexContent[81][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[82][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=82&type=complex'); return false;"><%= complexContent[82][0] %></a>

</p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_16.JPG"></br><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[9][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=116&index=9&type=simple'); return false;"><%= simpleContent[9][0] %></a></div>
</fieldset>

<h2><a title="Click to review this content" class="regular" style="color:<%= complexContent[83][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=83&type=complex'); return false;"><%= complexContent[83][0] %></a></h2>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[84][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=84&type=complex'); return false;"><%= complexContent[84][0] %></a>
   </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[85][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=85&type=complex'); return false;"><%= complexContent[85][0] %></a>
</p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_17.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[86][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=86&type=complex'); return false;"><%= complexContent[86][0] %></a></div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[87][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=87&type=complex'); return false;"><%= complexContent[87][0] %></a></p>

<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[88][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=88&type=complex'); return false;"><%= complexContent[88][0] %></a></p>
</div>

<fieldset class="know-more">
    <legend class="know-more-legend"><a title="Click to review this content" class="regular" style="color:<%= complexContent[89][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=89&type=complex'); return false;"><%= complexContent[89][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[90][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=90&type=complex'); return false;"><%= complexContent[90][0] %></a>
</p>
</fieldset>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[91][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=91&type=complex'); return false;"><%= complexContent[91][0] %></a></p>


<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[10][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=482&index=10&type=simple'); return false;"><%= simpleContent[10][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[92][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=92&type=complex'); return false;"><%= complexContent[92][0] %></a></p>

<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[11][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=483&index=11&type=simple'); return false;"><%= simpleContent[11][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[93][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=93&type=complex'); return false;"><%= complexContent[93][0] %></a></p>
   <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[94][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=94&type=complex'); return false;"><%= complexContent[94][0] %></a></p>
   <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[95][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=95&type=complex'); return false;"><%= complexContent[95][0] %></a>
</p>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[96][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=96&type=complex'); return false;"><%= complexContent[96][0] %></a></p>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[12][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=47&index=12&type=simple'); return false;"><%= simpleContent[12][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[97][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=97&type=complex'); return false;"><%= complexContent[97][0] %></a>
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[98][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=98&type=complex'); return false;"><%= complexContent[98][0] %></a>
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[99][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=99&type=complex'); return false;"><%= complexContent[99][0] %></a>

</p>
</fieldset>
<div class="images"><img src="images_stars_solar_system_VIII/figure_18.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[100][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=100&type=complex'); return false;"><%= complexContent[100][0] %></a></div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[101][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=101&type=complex'); return false;"><%= complexContent[101][0] %></a></p>


<div class="images"><img src="images_stars_solar_system_VIII/figure_19.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[102][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=102&type=complex'); return false;"><%= complexContent[102][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[103][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=103&type=complex'); return false;"><%= complexContent[103][0] %></a>
</p>
<div class="paheli"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[104][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=104&type=complex'); return false;"><%= complexContent[104][0] %></a></p>
</div>


<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[105][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=105&type=complex'); return false;"><%= complexContent[105][0] %></a>
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[106][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=106&type=complex'); return false;"><%= complexContent[106][0] %></a>
</p>
<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[13][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=484&index=13&type=simple'); return false;"><%= simpleContent[13][0] %></a></h4>
<div class="images"><img src="images_stars_solar_system_VIII/mercury.JPG"></br><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[13][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=484&index=13&type=simple'); return false;"><%= simpleContent[13][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[107][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=107&type=complex'); return false;"><%= complexContent[107][0] %></a>
</p>


<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[14][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=485&index=14&type=simple'); return false;"><%= simpleContent[14][0] %></a></h4>
<div class="images"><img src="images_stars_solar_system_VIII/venus.JPG"></br><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[14][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=485&index=14&type=simple'); return false;"><%= simpleContent[14][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[108][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=108&type=complex'); return false;"><%= complexContent[108][0] %></a>
   </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[109][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=109&type=complex'); return false;"><%= complexContent[109][0] %></a>
</p>


<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[15][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=48&index=15&type=simple'); return false;"><%= simpleContent[15][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[110][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=110&type=complex'); return false;"><%= complexContent[110][0] %></a>
</p>
</fieldset>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[111][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=111&type=complex'); return false;"><%= complexContent[111][0] %></a>
</p>

<div class="paheli"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[112][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=112&type=complex'); return false;"><%= complexContent[112][0] %></a></p>
</div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[113][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=113&type=complex'); return false;"><%= complexContent[113][0] %></a></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_20.JPG"><br><a title="Click to review this content" class="regular" style="color:<%= complexContent[114][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=114&type=complex'); return false;"><%= complexContent[114][0] %></a> </div>

<h4><a title="Click to review this content" class="regular" style="color:<%= complexContent[115][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=115&type=complex'); return false;"><%= complexContent[115][0] %></a></h4>
<div class="images"><img src="images_stars_solar_system_VIII/earth.JPG"></br><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[16][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=486&index=16&type=simple'); return false;"><%= simpleContent[16][0] %></a></div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[116][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=116&type=complex'); return false;"><%= complexContent[116][0] %></a></p>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[117][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=117&type=complex'); return false;"><%= complexContent[117][0] %></a></p>
</div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[118][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=118&type=complex'); return false;"><%= complexContent[118][0] %></a> 
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[119][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=119&type=complex'); return false;"><%= complexContent[119][0] %></a>
</p>
<div class="paheli"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[120][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=120&type=complex'); return false;"><%= complexContent[120][0] %></a></p></div>

<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[17][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=487&index=17&type=simple'); return false;"><%= simpleContent[17][0] %></a></H4>
<div class="images"><img src="images_stars_solar_system_VIII/marsh.JPG"></br><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[18][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=488&index=18&type=simple'); return false;"><%= simpleContent[18][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[121][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=121&type=complex'); return false;"><%= complexContent[121][0] %></a></p>

<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[19][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=489&index=19&type=simple'); return false;"><%= simpleContent[19][0] %></a></H4>
<div class="images"><img src="images_stars_solar_system_VIII/juipter.JPG"></br><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[20][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=490&index=20&type=simple'); return false;"><%= simpleContent[20][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[122][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=122&type=complex'); return false;"><%= complexContent[122][0] %></a></p>

<div class="paheli">
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[123][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=123&type=complex'); return false;"><%= complexContent[123][0] %></a></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_21.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[124][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=124&type=complex'); return false;"><%= complexContent[124][0] %></a></div>
</div>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[125][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=125&type=complex'); return false;"><%= complexContent[125][0] %></a></p>
</div>

<div class="images"><img src="images_stars_solar_system_VIII/figure_22.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[126][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=126&type=complex'); return false;"><%= complexContent[126][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[127][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=127&type=complex'); return false;"><%= complexContent[127][0] %></a></p>


<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[21][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=491&index=21&type=simple'); return false;"><%= simpleContent[21][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[128][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=128&type=complex'); return false;"><%= complexContent[128][0] %></a></p>
<div class="paheli"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[129][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=129&type=complex'); return false;"><%= complexContent[129][0] %></a></p>
</div>
<div class="images"><img src="images_stars_solar_system_VIII/figure_23.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[130][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=130&type=complex'); return false;"><%= complexContent[130][0] %></a></div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[131][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=131&type=complex'); return false;"><%= complexContent[131][0] %></a>
</p>

<h4><a title="Click to review this content" class="regular" style="color:<%= complexContent[132][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=132&type=complex'); return false;"><%= complexContent[132][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[133][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=133&type=complex'); return false;"><%= complexContent[133][0] %></a>
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[134][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=134&type=complex'); return false;"><%= complexContent[134][0] %></a>
</p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_24.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[135][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=135&type=complex'); return false;"><%= complexContent[135][0] %></a></div>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[136][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=136&type=complex'); return false;"><%= complexContent[136][0] %></a>
</p>

<h2><a title="Click to review this content" class="regular" style="color:<%= complexContent[137][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=137&type=complex'); return false;"><%= complexContent[137][0] %></a></h2>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[138][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=138&type=complex'); return false;"><%= complexContent[138][0] %></a>
</p>
<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[22][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=492&index=22&type=simple'); return false;"><%= simpleContent[22][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[139][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=139&type=complex'); return false;"><%= complexContent[139][0] %></a></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_25.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[140][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=140&type=complex'); return false;"><%= complexContent[140][0] %></a></div>

<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[23][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=493&index=23&type=simple'); return false;"><%= simpleContent[23][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[141][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=141&type=complex'); return false;"><%= complexContent[141][0] %></a>
</p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_26.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[142][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=142&type=complex'); return false;"><%= complexContent[142][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[143][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=143&type=complex'); return false;"><%= complexContent[143][0] %></a></p>

<div class="paheli">
<h4 style="text-align:center;"><a title="Click to review this content" class="regular" style="color:<%= complexContent[144][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=144&type=complex'); return false;"><%= complexContent[144][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[145][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=145&type=complex'); return false;"><%= complexContent[145][0] %></a></p>
</div>
<h4><a title="Click to review this content" class="regular" style="color:<%= complexContent[146][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=146&type=complex'); return false;"><%= complexContent[146][0] %></a></h4>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[147][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=147&type=complex'); return false;"><%= complexContent[147][0] %></a>
</p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_27.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[148][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=148&type=complex'); return false;"><%= complexContent[148][0] %></a></div>

<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[149][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=149&type=complex'); return false;"><%= complexContent[149][0] %></a>
</p>

<div class="paheli">
<h4 style="text-align:center;"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[24][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=494&index=24&type=simple'); return false;"><%= simpleContent[24][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[150][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=150&type=complex'); return false;"><%= complexContent[150][0] %></a>
</div>
<h4><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[25][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=495&index=25&type=simple'); return false;"><%= simpleContent[25][0] %></a></h4>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[151][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=151&type=complex'); return false;"><%= complexContent[151][0] %></a>
  </p><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[152][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=152&type=complex'); return false;"><%= complexContent[152][0] %></a> </p>
<p> <a title="Click to review this content" class="regular" style="color:<%= complexContent[153][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=153&type=complex'); return false;"><%= complexContent[153][0] %></a>
</p>
<div class="boojho"><p><a title="Click to review this content" class="regular" style="color:<%= complexContent[154][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=154&type=complex'); return false;"><%= complexContent[154][0] %></a></p>
</div>
<div class="images"><img src="images_stars_solar_system_VIII/figure_28.JPG"></br><a title="Click to review this content" class="regular" style="color:<%= complexContent[155][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=155&type=complex'); return false;"><%= complexContent[155][0] %></a></div>

<div class="keywords">
<div class="keywords-heading"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[26][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=54&index=26&type=simple'); return false;"><%= simpleContent[26][0] %></a></div>
    <ul class="what-learnt-list">
   <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[27][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=496&index=27&type=simple'); return false;"><%= simpleContent[27][0] %></a></li>
   <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[28][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=497&index=28&type=simple'); return false;"><%= simpleContent[28][0] %></a></li>
   <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[29][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=498&index=29&type=simple'); return false;"><%= simpleContent[29][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[30][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=499&index=30&type=simple'); return false;"><%= simpleContent[30][0] %></a></li>
   <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[31][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=500&index=31&type=simple'); return false;"><%= simpleContent[31][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[32][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=501&index=32&type=simple'); return false;"><%= simpleContent[32][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[33][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=502&index=33&type=simple'); return false;"><%= simpleContent[33][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[34][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=503&index=34&type=simple'); return false;"><%= simpleContent[34][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[35][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=504&index=35&type=simple'); return false;"><%= simpleContent[35][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[36][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=505&index=36&type=simple'); return false;"><%= simpleContent[36][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[37][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=506&index=37&type=simple'); return false;"><%= simpleContent[37][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[38][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=507&index=38&type=simple'); return false;"><%= simpleContent[38][0] %></a></li>
  <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[156][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=156&type=complex'); return false;"><%= complexContent[156][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[39][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=508&index=39&type=simple'); return false;"><%= simpleContent[39][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[40][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=509&index=40&type=simple'); return false;"><%= simpleContent[40][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[41][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=510&index=41&type=simple'); return false;"><%= simpleContent[41][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[42][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=511&index=42&type=simple'); return false;"><%= simpleContent[42][0] %></a></li>
  <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[43][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=512&index=43&type=simple'); return false;"><%= simpleContent[43][0] %></a></li>
  </ul>
</div>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><a title="Click to review this content" class="regular" style="color:<%= complexContent[157][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=157&type=complex'); return false;"><%= complexContent[157][0] %></a></legend>
    <ul class="what-learnt-list">
        <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[158][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=158&type=complex'); return false;"><%= complexContent[158][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[159][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=159&type=complex'); return false;"><%= complexContent[159][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[160][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=160&type=complex'); return false;"><%= complexContent[160][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[161][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=161&type=complex'); return false;"><%= complexContent[161][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[162][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=162&type=complex'); return false;"><%= complexContent[162][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[163][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=163&type=complex'); return false;"><%= complexContent[163][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[164][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=164&type=complex'); return false;"><%= complexContent[164][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[165][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=165&type=complex'); return false;"><%= complexContent[165][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[166][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=166&type=complex'); return false;"><%= complexContent[166][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[167][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=167&type=complex'); return false;"><%= complexContent[167][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[168][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=168&type=complex'); return false;"><%= complexContent[168][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[169][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=169&type=complex'); return false;"><%= complexContent[169][0] %></a></li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[170][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=170&type=complex'); return false;"><%= complexContent[170][0] %></a></li>
     </ul>
</fieldset>



<fieldset class="exercise">
    <legend class="exercise-legend"><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[44][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=68&index=44&type=simple'); return false;"><%= simpleContent[44][0] %></a></legend>
    <ul class="exercise-list">
<h4><a title="Click to review this content" class="regular" style="color:<%= complexContent[171][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=171&type=complex'); return false;"><%= complexContent[171][0] %></a></h4>
 <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[172][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=172&type=complex'); return false;"><%= complexContent[172][0] %></a>
            <ul class="exercise-sub-list">
                <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[45][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=513&index=45&type=simple'); return false;"><%= simpleContent[45][0] %></a></li>
                <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[46][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=514&index=46&type=simple'); return false;"><%= simpleContent[46][0] %></a></li>
                <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[47][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=515&index=47&type=simple'); return false;"><%= simpleContent[47][0] %></a></li>
                <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[48][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=516&index=48&type=simple'); return false;"><%= simpleContent[48][0] %></a></li>
            </ul>
</li>
 <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[173][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=173&type=complex'); return false;"><%= complexContent[173][0] %></a>
            <ul class="exercise-sub-list">
                <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[49][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=517&index=49&type=simple'); return false;"><%= simpleContent[49][0] %></a></li>
                <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[50][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=234&index=50&type=simple'); return false;"><%= simpleContent[50][0] %></a></li>
                <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[51][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=518&index=51&type=simple'); return false;"><%= simpleContent[51][0] %></a></li>
                <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[16][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=486&index=16&type=simple'); return false;"><%= simpleContent[16][0] %></a></li>
            </ul>  
</li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[174][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=174&type=complex'); return false;"><%= complexContent[174][0] %></a>
            <ul class="exercise-sub-list">
                 <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[175][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=175&type=complex'); return false;"><%= complexContent[175][0] %></a> </li>
				<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[176][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=176&type=complex'); return false;"><%= complexContent[176][0] %></a> </li>
				<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[177][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=177&type=complex'); return false;"><%= complexContent[177][0] %></a> </li>
				<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[178][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=178&type=complex'); return false;"><%= complexContent[178][0] %></a></li>
            </ul>  
	</li>		 
 <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[179][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=179&type=complex'); return false;"><%= complexContent[179][0] %></a>
             <ul class="exercise-sub-list">
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[180][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=180&type=complex'); return false;"><%= complexContent[180][0] %></a></li>
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[181][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=181&type=complex'); return false;"><%= complexContent[181][0] %></a></li>
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[182][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=182&type=complex'); return false;"><%= complexContent[182][0] %></a></li>
                <li> <a title="Click to review this content" class="regular" style="color:<%= complexContent[183][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=183&type=complex'); return false;"><%= complexContent[183][0] %></a></li>
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[184][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=184&type=complex'); return false;"><%= complexContent[184][0] %></a></li>
				<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[185][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=185&type=complex'); return false;"><%= complexContent[185][0] %></a></li>
            </ul>
</li>			
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[186][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=186&type=complex'); return false;"><%= complexContent[186][0] %></a>
<ul class="exercise-sub-list">
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[187][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=187&type=complex'); return false;"><%= complexContent[187][0] %></a></li>
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[188][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=188&type=complex'); return false;"><%= complexContent[188][0] %></a></li>
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[189][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=189&type=complex'); return false;"><%= complexContent[189][0] %></a></li>
                <li> <a title="Click to review this content" class="regular" style="color:<%= complexContent[190][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=190&type=complex'); return false;"><%= complexContent[190][0] %></a></li>
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[191][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=191&type=complex'); return false;"><%= complexContent[191][0] %></a></li>
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[192][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=192&type=complex'); return false;"><%= complexContent[192][0] %></a></li>  
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[193][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=193&type=complex'); return false;"><%= complexContent[193][0] %></a></li>
          </ul> 
</li>
            
	  <li> <a title="Click to review this content" class="regular" style="color:<%= complexContent[194][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=194&type=complex'); return false;"><%= complexContent[194][0] %></a>
		<table style="border:none;">
		<tr class="green-th">
		<th style="color:black;"><%= translatableContent[0] %></th>
		<th style="color:black;"><%= translatableContent[1] %></th>
		</tr>
		<tr class="green-td">
		<td style="vertical-align:top;">
			<ul style="list-style:lower-roman;">
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[52][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=519&index=52&type=simple'); return false;"><%= simpleContent[52][0] %></a></li>
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[53][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=520&index=53&type=simple'); return false;"><%= simpleContent[53][0] %></a></li>
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[54][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=521&index=54&type=simple'); return false;"><%= simpleContent[54][0] %></a></li>
			<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[195][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=195&type=complex'); return false;"><%= complexContent[195][0] %></a></li>
			</ul>		
		</td>
		<td style="vertical-align:top;">
			<ul style="list-style:lower-alpha;">
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[51][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=518&index=51&type=simple'); return false;"><%= simpleContent[51][0] %></a></li>
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[55][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=522&index=55&type=simple'); return false;"><%= simpleContent[55][0] %></a></li>
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[56][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=523&index=56&type=simple'); return false;"><%= simpleContent[56][0] %></a></li>
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[57][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=524&index=57&type=simple'); return false;"><%= simpleContent[57][0] %></a></li>
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[16][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=486&index=16&type=simple'); return false;"><%= simpleContent[16][0] %></a></li>
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[58][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=525&index=58&type=simple'); return false;"><%= simpleContent[58][0] %></a></li>
			<li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[18][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=488&index=18&type=simple'); return false;"><%= simpleContent[18][0] %></a></li>
			</ul>	
		</td>
		</tr>
		</table>
          </li>		  
		  
		 
		 
    <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[196][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=196&type=complex'); return false;"><%= complexContent[196][0] %></a></li>
    <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[197][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=197&type=complex'); return false;"><%= complexContent[197][0] %></a></li>
    <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[198][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=198&type=complex'); return false;"><%= complexContent[198][0] %></a></li>
    
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[199][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=199&type=complex'); return false;"><%= complexContent[199][0] %></a>
            <ul class="exercise-sub-list">
                <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[200][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=200&type=complex'); return false;"><%= complexContent[200][0] %></a></li>
                <li><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[58][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=525&index=58&type=simple'); return false;"><%= simpleContent[58][0] %></a></li>
	    </ul>
        </li>
	<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[201][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=201&type=complex'); return false;"><%= complexContent[201][0] %></a></li><a title="Click to review this content" class="regular" style="color:<%= complexContent[202][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=202&type=complex'); return false;"><%= complexContent[202][0] %></a></li>
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[203][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=203&type=complex'); return false;"><%= complexContent[203][0] %></a></li>
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[204][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=204&type=complex'); return false;"><%= complexContent[204][0] %></a></li>
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[205][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=205&type=complex'); return false;"><%= complexContent[205][0] %></a></li>
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[206][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=206&type=complex'); return false;"><%= complexContent[206][0] %></a></li>			
<div class="images"><img src="images_stars_solar_system_VIII/figure_29.JPG"></br><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[59][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=49&index=59&type=simple'); return false;"><%= simpleContent[59][0] %></a></div>
 </fieldset>
<div class="project">      
<div class="project-heading"> <a title="Click to review this content" class="regular" style="color:<%= complexContent[207][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=207&type=complex'); return false;"><%= complexContent[207][0] %></a></div>
   <ul class="project-list">
   <li><a title="Click to review this content" class="regular" style="color:<%= complexContent[208][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=208&type=complex'); return false;"><%= complexContent[208][0] %></a></li>
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[209][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=209&type=complex'); return false;"><%= complexContent[209][0] %></a></li>
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[210][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=210&type=complex'); return false;"><%= complexContent[210][0] %></a></li>
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[211][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=211&type=complex'); return false;"><%= complexContent[211][0] %></a>
</li>
<div class="images"><img src="images_stars_solar_system_VIII/figure_30.JPG"></br><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[60][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=50&index=60&type=simple'); return false;"><%= simpleContent[60][0] %></a></div>
<p> <a title="Click to review this content" class="regular" style="color:<%= complexContent[212][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=212&type=complex'); return false;"><%= complexContent[212][0] %></a></p>

<fieldset class="know-more">
    <legend class="know-more-legend"><a title="Click to review this content" class="regular" style="color:<%= complexContent[213][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=213&type=complex'); return false;"><%= complexContent[213][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[214][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=214&type=complex'); return false;"><%= complexContent[214][0] %></a></p>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[215][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=215&type=complex'); return false;"><%= complexContent[215][0] %></a></p>
</fieldset>

<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[216][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=216&type=complex'); return false;"><%= complexContent[216][0] %></a></li>


<h5><strong><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[61][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=126&index=61&type=simple'); return false;"><%= simpleContent[61][0] %></a></strong></h5>
<table style="border:none;">
    <tr class="green-th">
    	<th><a title="Click to review this content" class="regular" style="color:<%= complexContent[217][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=217&type=complex'); return false;"><%= complexContent[217][0] %></a></th>
	<th><a title="Click to review this content" class="regular" style="color:<%= complexContent[218][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=218&type=complex'); return false;"><%= complexContent[218][0] %></a></th>
	<th><a title="Click to review this content" class="regular" style="color:<%= complexContent[219][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=219&type=complex'); return false;"><%= complexContent[219][0] %></a></th>
	<th><a title="Click to review this content" class="regular" style="color:<%= complexContent[220][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=220&type=complex'); return false;"><%= complexContent[220][0] %></a></th>
	<th><a title="Click to review this content" class="regular" style="color:<%= complexContent[221][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=221&type=complex'); return false;"><%= complexContent[221][0] %></a></th>
    </tr>
    <tr class="green-td">
    	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[50][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=234&index=50&type=simple'); return false;"><%= simpleContent[50][0] %></a></td>
	<td><%= translatableContent[2] %></td>
	<td><%= translatableContent[3] %></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[62][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=526&index=62&type=simple'); return false;"><%= simpleContent[62][0] %></a></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[63][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=527&index=63&type=simple'); return false;"><%= simpleContent[63][0] %></a></td>
    </tr>
    <tr class="green-td">
    	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[64][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=528&index=64&type=simple'); return false;"><%= simpleContent[64][0] %></a></td>
	<td><%= translatableContent[4] %></td>
	<td><%= translatableContent[5] %></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[65][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=529&index=65&type=simple'); return false;"><%= simpleContent[65][0] %></a></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[66][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=530&index=66&type=simple'); return false;"><%= simpleContent[66][0] %></a></td>
    </tr>
    <tr class="green-td">
    	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[16][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=486&index=16&type=simple'); return false;"><%= simpleContent[16][0] %></a></td>
	<td><%= translatableContent[6] %></td>
	<td><%= translatableContent[6] %></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[67][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=531&index=67&type=simple'); return false;"><%= simpleContent[67][0] %></a></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[68][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=532&index=68&type=simple'); return false;"><%= simpleContent[68][0] %></a></td>
    </tr>
    <tr class="green-td">
    	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[18][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=488&index=18&type=simple'); return false;"><%= simpleContent[18][0] %></a></td>
	<td><%= translatableContent[7] %></td>
	<td><%= translatableContent[8] %></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[69][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=533&index=69&type=simple'); return false;"><%= simpleContent[69][0] %></a></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[70][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=534&index=70&type=simple'); return false;"><%= simpleContent[70][0] %></a></td>
    </tr>
    <tr class="green-td">
    	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[71][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=535&index=71&type=simple'); return false;"><%= simpleContent[71][0] %></a></td>
	<td><%= translatableContent[9] %></td>
	<td><%= translatableContent[10] %></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[70][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=534&index=70&type=simple'); return false;"><%= simpleContent[70][0] %></a></td>
	<td><a title="Click to review this content" class="regular" style="color:<%= complexContent[222][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=222&type=complex'); return false;"><%= complexContent[222][0] %></a></td>
    </tr>
    <tr class="green-td">
    	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[51][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=518&index=51&type=simple'); return false;"><%= simpleContent[51][0] %></a></td>
	<td><%= translatableContent[11] %></td>
	<td><%= translatableContent[12] %></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[72][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=536&index=72&type=simple'); return false;"><%= simpleContent[72][0] %></a></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[73][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=537&index=73&type=simple'); return false;"><%= simpleContent[73][0] %></a></td>
    </tr>
    <tr class="green-td">
    	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[74][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=538&index=74&type=simple'); return false;"><%= simpleContent[74][0] %></a></td>
	<td><%= translatableContent[13] %></td>
	<td><%= translatableContent[14] %></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[75][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=539&index=75&type=simple'); return false;"><%= simpleContent[75][0] %></a></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[76][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=540&index=76&type=simple'); return false;"><%= simpleContent[76][0] %></a></td>
    </tr>
    <tr class="green-td">
    	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[77][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=541&index=77&type=simple'); return false;"><%= simpleContent[77][0] %></a></td>
	<td><%= translatableContent[15] %></td>
	<td><%= translatableContent[16] %></td>
	<td><a title="Click to reviewer this content" class="regular" style="color:<%= simpleContent[78][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=542&index=78&type=simple'); return false;"><%= simpleContent[78][0] %></a></td>
	<td><%= translatableContent[17] %></td>
    </tr>
</table>
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[223][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=223&type=complex'); return false;"><%= complexContent[223][0] %></a></li>
<li><a title="Click to review this content" class="regular" style="color:<%= complexContent[224][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=224&type=complex'); return false;"><%= complexContent[224][0] %></a></li>

 <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[225][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=225&type=complex'); return false;"><%= complexContent[225][0] %></a></p>
 <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[226][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=226&type=complex'); return false;"><%= complexContent[226][0] %></a></p>
 <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[227][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=227&type=complex'); return false;"><%= complexContent[227][0] %></a></p>
 <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[228][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=228&type=complex'); return false;"><%= complexContent[228][0] %></a></p>
 <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[229][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=229&type=complex'); return false;"><%= complexContent[229][0] %></a></p>
 <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[230][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=230&type=complex'); return false;"><%= complexContent[230][0] %></a></p>
</div>  
 
 <fieldset class="know-more">
    <legend class="know-more-legend"><a title="Click to review this content" class="regular" style="color:<%= complexContent[231][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=231&type=complex'); return false;"><%= complexContent[231][0] %></a></legend>
    <p><a title="Click to review this content" class="regular" style="color:<%= complexContent[232][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=232&type=complex'); return false;"><%= complexContent[232][0] %></a></p>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[233][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=233&type=complex'); return false;"><%= complexContent[233][0] %></a></p>
<p><a title="Click to review this content" class="regular" style="color:<%= complexContent[234][1] %>" href="reviewIt.do" target="name" onclick="modalWin('reviewIt.do?contentId=234&type=complex'); return false;"><%= complexContent[234][0] %></a></p>

</fieldset>
  </div>
  </body>
</html>

