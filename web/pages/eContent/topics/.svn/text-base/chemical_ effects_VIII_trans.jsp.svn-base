<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="helper" class="ekalavya.econtent.helper.ContentHandler"/>
<%
        String[][] simpleContent = null;
        String[][] complexContent = null;
        String[] translatableContent = null;
        String topicId = request.getParameter("topicId");
        String linkId = request.getParameter("linkId");
        String langId = (String)session.getAttribute("translatorLangId");
        if(langId == null) {
            langId = "1";
        }
        if(topicId != null && linkId != null && langId != null) {
            session.setAttribute("topicId", topicId);
            session.setAttribute("linkId",linkId);
            simpleContent = helper.getSimpleContentForTranslator(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            complexContent = helper.getComplexContentForTranslator(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            translatableContent = helper.getTranslatableContent(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            String[] simple = helper.getSimpleContent(Integer.parseInt(topicId), Integer.parseInt(linkId), 1);
            String[] complex = helper.getComplexContent(Integer.parseInt(topicId), Integer.parseInt(linkId), 1);
            session.setAttribute("simpleContent",simple);
            session.setAttribute("complexContent",complex);
        }
%>
<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="style/content_style.css" type="text/css">
  </head>
  <body>
<div id="contentPanel" class="contentPane">
    <h1><a title="Click to translate this content" class="regular" style="color:<%= complexContent[0][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=0&type=complex'); return false;"><%= complexContent[0][0] %></a></h1>
	
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[1][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=1&type=complex'); return false;"><%= complexContent[1][0] %></a></p>
   <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[2][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=2&type=complex'); return false;"><%= complexContent[2][0] %></a> </p>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[3][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=3&type=complex'); return false;"><%= complexContent[3][0] %></a></p>
   <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[4][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=4&type=complex'); return false;"><%= complexContent[4][0] %></a></p>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[5][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=5&type=complex'); return false;"><%= complexContent[5][0] %></a></p>
<div class="boojho"><p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[6][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=6&type=complex'); return false;"><%= complexContent[6][0] %></a></p>
</div>
	
<h2><a title="Click to translate this content" class="regular" style="color:<%= complexContent[7][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=7&type=complex'); return false;"><%= complexContent[7][0] %></a></h2>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[8][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=8&type=complex'); return false;"><%= complexContent[8][0] %></a></p>
<div class="images"><img src="images_chemical_effects_VIII/figure_1_a.JPG" width="300px"><img src="images_chemical_effects_VIII/figure_1_b.JPG" width="300px"></div>
<div style="float:left;width:49%;text-align:center;"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[0][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=465&index=0&type=simple'); return false;"><%= simpleContent[0][0] %></a></div>
<div style="float:left;width:49%;text-align:center;"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[1][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=466&index=1&type=simple'); return false;"><%= simpleContent[1][0] %></a></div>
<div class="images"><a title="Click to translate this content" class="regular" style="color:<%= complexContent[9][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=9&type=complex'); return false;"><%= complexContent[9][0] %></a></div>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[2][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=38&index=2&type=simple'); return false;"><%= simpleContent[2][0] %></a></legend>
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[10][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=10&type=complex'); return false;"><%= complexContent[10][0] %></a></p>
</fieldset>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[11][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=11&type=complex'); return false;"><%= complexContent[11][0] %></a></p>

<div class="caution"><a title="Click to translate this content" class="regular" style="color:<%= complexContent[12][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=12&type=complex'); return false;"><%= complexContent[12][0] %></a></div>


<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[3][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=39&index=3&type=simple'); return false;"><%= simpleContent[3][0] %></a></legend>
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[13][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=13&type=complex'); return false;"><%= complexContent[13][0] %></a></p>
<div class="images"><img src="images_chemical_effects_VIII/figure_2.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= complexContent[14][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=14&type=complex'); return false;"><%= complexContent[14][0] %></a> </div>
</fieldset>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[15][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=15&type=complex'); return false;"><%= complexContent[15][0] %></a>
</p>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[16][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=16&type=complex'); return false;"><%= complexContent[16][0] %></a></p>
<p> <a title="Click to translate this content" class="regular" style="color:<%= complexContent[17][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=17&type=complex'); return false;"><%= complexContent[17][0] %></a>
</p>

<div class="info">
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[18][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=18&type=complex'); return false;"><%= complexContent[18][0] %></a> 
<div class="images"><img src="images_chemical_effects_VIII/figure_3.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[4][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=467&index=4&type=simple'); return false;"><%= simpleContent[4][0] %></a></div>
</div>	
<p>   <a title="Click to translate this content" class="regular" style="color:<%= complexContent[19][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=19&type=complex'); return false;"><%= complexContent[19][0] %></a>
</p>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[5][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=41&index=5&type=simple'); return false;"><%= simpleContent[5][0] %></a></legend>
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[20][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=20&type=complex'); return false;"><%= complexContent[20][0] %></a>
<div class="images"><img src="images_chemical_effects_VIII/figure_4.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= complexContent[21][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=21&type=complex'); return false;"><%= complexContent[21][0] %></a></div>
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[22][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=22&type=complex'); return false;"><%= complexContent[22][0] %></a>
   </p><p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[23][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=23&type=complex'); return false;"><%= complexContent[23][0] %></a> 
  </p><p> <a title="Click to translate this content" class="regular" style="color:<%= complexContent[24][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=24&type=complex'); return false;"><%= complexContent[24][0] %></a></p>
</fieldset>

<h5><strong><a title="Click to translate this content" class="regular" style="color:<%= complexContent[25][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=25&type=complex'); return false;"><%= complexContent[25][0] %></a></h5>
<table>
<tr class="gray-th">
<th><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[6][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=468&index=6&type=simple'); return false;"><%= simpleContent[6][0] %></a></th>
<th><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[7][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=228&index=7&type=simple'); return false;"><%= simpleContent[7][0] %></a></th>
<th><a title="Click to translate this content" class="regular" style="color:<%= complexContent[26][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=26&type=complex'); return false;"><%= complexContent[26][0] %></a></th>
<th><a title="Click to translate this content" class="regular" style="color:<%= complexContent[27][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=27&type=complex'); return false;"><%= complexContent[27][0] %></a></th>
</tr>
<tr class="gray-td">
<td><%= translatableContent[0] %></td>
<td><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[8][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=469&index=8&type=simple'); return false;"><%= simpleContent[8][0] %></a></td>
<td><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[9][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=389&index=9&type=simple'); return false;"><%= simpleContent[9][0] %></a></td>
<td><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[0][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=465&index=0&type=simple'); return false;"><%= simpleContent[0][0] %></a></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[1] %></td>
<td><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[10][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=470&index=10&type=simple'); return false;"><%= simpleContent[10][0] %></a></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[2] %></td>
<td><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[11][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=471&index=11&type=simple'); return false;"><%= simpleContent[11][0] %></a></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[3] %></td>
<td><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[12][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=472&index=12&type=simple'); return false;"><%= simpleContent[12][0] %></a></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[4] %></td>
<td><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[13][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=473&index=13&type=simple'); return false;"><%= simpleContent[13][0] %></a></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[5] %></td>
<td><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[14][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=474&index=14&type=simple'); return false;"><%= simpleContent[14][0] %></a></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[6] %></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[7] %></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[8] %></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[9] %></td>
<td></td>
<td></td>
<td></td>
</tr>
</table>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[28][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=28&type=complex'); return false;"><%= complexContent[28][0] %></a></p>
<div class="boojho"><p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[29][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=29&type=complex'); return false;"><%= complexContent[29][0] %></a></p>
</div>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[30][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=30&type=complex'); return false;"><%= complexContent[30][0] %></a></p>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[31][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=31&type=complex'); return false;"><%= complexContent[31][0] %></a> </p>


<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[15][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=42&index=15&type=simple'); return false;"><%= simpleContent[15][0] %></a></legend>
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[32][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=32&type=complex'); return false;"><%= complexContent[32][0] %></a> </p>
</fieldset>


<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[33][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=33&type=complex'); return false;"><%= complexContent[33][0] %></a>
</p>
<div class="paheli"><p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[34][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=34&type=complex'); return false;"><%= complexContent[34][0] %></a></p>
</div>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[35][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=35&type=complex'); return false;"><%= complexContent[35][0] %></a>
</p>
<div class="caution"><a title="Click to translate this content" class="regular" style="color:<%= complexContent[36][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=36&type=complex'); return false;"><%= complexContent[36][0] %></a>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[16][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=43&index=16&type=simple'); return false;"><%= simpleContent[16][0] %></a></legend>
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[37][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=37&type=complex'); return false;"><%= complexContent[37][0] %></a></p>
</fieldset>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[38][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=38&type=complex'); return false;"><%= complexContent[38][0] %></a>
</p><p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[39][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=39&type=complex'); return false;"><%= complexContent[39][0] %></a>
</p>

<h2><a title="Click to translate this content" class="regular" style="color:<%= complexContent[40][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=40&type=complex'); return false;"><%= complexContent[40][0] %></a></h2>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[41][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=41&type=complex'); return false;"><%= complexContent[41][0] %></a></p>


<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[17][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=44&index=17&type=simple'); return false;"><%= simpleContent[17][0] %></a></legend>
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[42][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=42&type=complex'); return false;"><%= complexContent[42][0] %></a></p>
<div class="images"><img src="images_chemical_effects_VIII/figure_5.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= complexContent[43][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=43&type=complex'); return false;"><%= complexContent[43][0] %></a></div>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[44][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=44&type=complex'); return false;"><%= complexContent[44][0] %></a>
</p>
</fieldset>

<div class="person">
<div class="person-heading"><a title="Click to translate this content" class="regular" style="color:<%= complexContent[45][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=45&type=complex'); return false;"><%= complexContent[45][0] %></a></div>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[46][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=46&type=complex'); return false;"><%= complexContent[46][0] %></a>
</p>
<div class="images"><img src="images_chemical_effects_VIII/nicholson.JPG"></div>
</div>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[47][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=47&type=complex'); return false;"><%= complexContent[47][0] %></a></p>


<div class="boojho">
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[48][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=48&type=complex'); return false;"><%= complexContent[48][0] %></a>
</p>

 <div class="images"><img src="images_chemical_effects_VIII/figure_6.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= complexContent[49][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=49&type=complex'); return false;"><%= complexContent[49][0] %></a></div>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[50][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=50&type=complex'); return false;"><%= complexContent[50][0] %></a></p>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[51][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=51&type=complex'); return false;"><%= complexContent[51][0] %></a></p>

</div>

<h2><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[18][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=475&index=18&type=simple'); return false;"><%= simpleContent[18][0] %></a></h2>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[52][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=52&type=complex'); return false;"><%= complexContent[52][0] %></a></p>
    <p> <a title="Click to translate this content" class="regular" style="color:<%= complexContent[53][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=53&type=complex'); return false;"><%= complexContent[53][0] %></a></p>




<fieldset class="activity">
    <legend class="activity-legend"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[19][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=45&index=19&type=simple'); return false;"><%= simpleContent[19][0] %></a></legend>
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[54][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=54&type=complex'); return false;"><%= complexContent[54][0] %></a> </p>
<div class="images"><img src="images_chemical_effects_VIII/figure_7.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= complexContent[55][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=55&type=complex'); return false;"><%= complexContent[55][0] %></a></div>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[56][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=56&type=complex'); return false;"><%= complexContent[56][0] %></a></p>
</fieldset>

 <div class="boojho"><p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[57][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=57&type=complex'); return false;"><%= complexContent[57][0] %></a></p>
</div>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[58][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=58&type=complex'); return false;"><%= complexContent[58][0] %></a></p>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[59][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=59&type=complex'); return false;"><%= complexContent[59][0] %></a></p>
 <div class="boojho"><p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[60][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=60&type=complex'); return false;"><%= complexContent[60][0] %></a></p>
</div>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[61][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=61&type=complex'); return false;"><%= complexContent[61][0] %></a></p>
 
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[62][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=62&type=complex'); return false;"><%= complexContent[62][0] %></a>
  </p><p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[63][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=63&type=complex'); return false;"><%= complexContent[63][0] %></a>
</p>

<div class="images"><img src="images_chemical_effects_VIII/figure_8.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= complexContent[64][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=64&type=complex'); return false;"><%= complexContent[64][0] %></a></div>

<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[65][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=65&type=complex'); return false;"><%= complexContent[65][0] %></a></p>
<p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[66][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=66&type=complex'); return false;"><%= complexContent[66][0] %></a>
</p>

<div class="info">
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[67][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=67&type=complex'); return false;"><%= complexContent[67][0] %></a></p>
</div>



<div class="keywords">
<div class="keywords-heading"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[20][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=54&index=20&type=simple'); return false;"><%= simpleContent[20][0] %></a></div>
    <ul class="keywords-list">
    <li><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[21][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=476&index=21&type=simple'); return false;"><%= simpleContent[21][0] %></a></li>
    <li><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[22][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=477&index=22&type=simple'); return false;"><%= simpleContent[22][0] %></a></li>
    <li><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[23][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=478&index=23&type=simple'); return false;"><%= simpleContent[23][0] %></a></li>
    <li><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[24][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=479&index=24&type=simple'); return false;"><%= simpleContent[24][0] %></a></li>
    <li><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[25][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=480&index=25&type=simple'); return false;"><%= simpleContent[25][0] %></a></li>
   </ul>
</div>

<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><a title="Click to translate this content" class="regular" style="color:<%= complexContent[68][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=68&type=complex'); return false;"><%= complexContent[68][0] %></a></legend>
    <ul class="what-learnt-list">
    <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[69][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=69&type=complex'); return false;"><%= complexContent[69][0] %></a></li>
    <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[70][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=70&type=complex'); return false;"><%= complexContent[70][0] %></a></li>
    <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[71][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=71&type=complex'); return false;"><%= complexContent[71][0] %></a></li>
    <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[72][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=72&type=complex'); return false;"><%= complexContent[72][0] %></a></li>
    </ul>
</fieldset>

<fieldset class="exercise">
    <legend class="exercise-legend"><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[26][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=68&index=26&type=simple'); return false;"><%= simpleContent[26][0] %></a></legend>
    <ul class="exercise-list">
	<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[73][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=73&type=complex'); return false;"><%= complexContent[73][0] %></a>
             <ul class="exercise-sub-list">
                <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[74][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=74&type=complex'); return false;"><%= complexContent[74][0] %></a></li>
		<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[75][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=75&type=complex'); return false;"><%= complexContent[75][0] %></a></li>
		<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[76][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=76&type=complex'); return false;"><%= complexContent[76][0] %></a></li>
		<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[77][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=77&type=complex'); return false;"><%= complexContent[77][0] %></a> </li>
            </ul> 
	</li>
	<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[78][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=78&type=complex'); return false;"><%= complexContent[78][0] %></a></li>
	<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[79][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=79&type=complex'); return false;"><%= complexContent[79][0] %></a>
		<div class="images"><img src="images_chemical_effects_VIII/figure_9.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[27][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=112&index=27&type=simple'); return false;"><%= simpleContent[27][0] %></a></div>
	</li>
	<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[80][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=80&type=complex'); return false;"><%= complexContent[80][0] %></a>
	<div class="images"><img src="images_chemical_effects_VIII/figure_10.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[28][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=88&index=28&type=simple'); return false;"><%= simpleContent[28][0] %></a></div>
	</li>
	<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[81][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=81&type=complex'); return false;"><%= complexContent[81][0] %></a>
	<ul class="roman-small">
	<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[82][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=82&type=complex'); return false;"><%= complexContent[82][0] %></a></li>
	<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[83][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=83&type=complex'); return false;"><%= complexContent[83][0] %></a></li>
	<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[84][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=84&type=complex'); return false;"><%= complexContent[84][0] %></a></li>
	<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[85][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=85&type=complex'); return false;"><%= complexContent[85][0] %></a></li>
	</ul> 
	</li>

<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[86][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=86&type=complex'); return false;"><%= complexContent[86][0] %></a></li>
<li> <a title="Click to translate this content" class="regular" style="color:<%= complexContent[87][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=87&type=complex'); return false;"><%= complexContent[87][0] %></a></li>
<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[88][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=88&type=complex'); return false;"><%= complexContent[88][0] %></a></li>
<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[89][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=89&type=complex'); return false;"><%= complexContent[89][0] %></a></li>
<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[90][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=90&type=complex'); return false;"><%= complexContent[90][0] %></a></li>
<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[91][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=91&type=complex'); return false;"><%= complexContent[91][0] %></a></li>
<li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[92][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=92&type=complex'); return false;"><%= complexContent[92][0] %></a></li>
</fieldset>

<div class="project">      
<div class="project-heading"> <a title="Click to translate this content" class="regular" style="color:<%= complexContent[93][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=93&type=complex'); return false;"><%= complexContent[93][0] %></a></div>
   <ul class="project-list">
   <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[94][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=94&type=complex'); return false;"><%= complexContent[94][0] %></a></li>
   <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[95][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=95&type=complex'); return false;"><%= complexContent[95][0] %></a></li>
   <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[96][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=96&type=complex'); return false;"><%= complexContent[96][0] %></a></li>
   <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[97][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=97&type=complex'); return false;"><%= complexContent[97][0] %></a></li>
   <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[98][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=98&type=complex'); return false;"><%= complexContent[98][0] %></a></li>
   <li><a title="Click to translate this content" class="regular" style="color:<%= complexContent[99][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=99&type=complex'); return false;"><%= complexContent[99][0] %></a>
   
<div class="images"><img src="images_chemical_effects_VIII/figure_11.JPG"><br><a title="Click to translate this content" class="regular" style="color:<%= simpleContent[29][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=246&index=29&type=simple'); return false;"><%= simpleContent[29][0] %></a></div>
</li>
</div>


<fieldset class="know-more">
    <legend class="know-more-legend"><a title="Click to translate this content" class="regular" style="color:<%= complexContent[100][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=100&type=complex'); return false;"><%= complexContent[100][0] %></a></legend>
    <p><a title="Click to translate this content" class="regular" style="color:<%= complexContent[101][1] %>" href="translateIt.do" target="name" onclick="modalWin('translateIt.do?contentId=101&type=complex'); return false;"><%= complexContent[101][0] %></a></p>
<div class="images"><img src="images_chemical_effects_VIII/signal.JPG"></div>
</fieldset>
</div>
 </body>
</html>

