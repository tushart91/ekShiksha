<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="helper" class="ekalavya.econtent.helper.ContentHandler"/>
<%
        String[] simpleContent = null;
        String[] complexContent = null;
        String[] translatableContent = null;
        String topicId = request.getParameter("topicId");
        String linkId = request.getParameter("linkId");
        String langId = (String)session.getAttribute("langId");
        if(langId == null) {
            langId = "1";
        }
        if(topicId != null && linkId != null && langId != null) {
            session.setAttribute("topicId", topicId);
            session.setAttribute("linkId",linkId);
            simpleContent = helper.getSimpleMixedContent(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            translatableContent = helper.getTranslatableContent(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            complexContent = helper.getComplexMixedContent(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
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
<h1><%= complexContent[0] %></h1>
<p><%= complexContent[1] %></p>
<h2><%= simpleContent[0] %></h2>
<p><%= complexContent[2] %></p>

<h4><%= complexContent[3] %></h4>
<p><%= complexContent[4] %>
</p>

<div class="boojho"><p><%= complexContent[5] %></p></div>
<div class="paheli"><p><%= complexContent[6] %></p></div>
<p><%= complexContent[7] %></p>
<p><%= complexContent[8] %></p>
<h2><%= complexContent[9] %></h2>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[1] %></legend>
<p><%= complexContent[10] %></p>
</fieldset>

<p><%= complexContent[11] %>

</p><p><%= complexContent[12] %>
</p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend>
<p><%= complexContent[13] %></p>
</fieldset>

<h5><strong><%= simpleContent[3] %></strong></h5>
<table>
<tr class="pink-th">
	<th><%= simpleContent[4] %></th>
	<th><%= complexContent[14] %></th>
	<th><%= complexContent[15] %></th>
	<th><%= complexContent[16] %></th>
</tr>
<tr class="pink-td">
	<td><%= simpleContent[5] %></td>
	<td><%= complexContent[17] %></td>
	<td></td>
	<td></td>
</tr>
<tr class="pink-td">
	<td><%= simpleContent[6] %></td>
	<td><%= complexContent[18] %></td>
	<td></td>
	<td></td>
</tr>
<tr class="pink-td">
	<td><%= simpleContent[7] %></td>
	<td><%= simpleContent[8] %></td>
	<td></td>
	<td></td>
</tr>
<tr class="pink-td">
	<td><%= simpleContent[9] %></td>
	<td><%= complexContent[19] %></td>
	<td></td>
	<td></td>
</tr>
<tr class="pink-td">
	<td>&nbsp;</td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr class="pink-td">
	<td>&nbsp;</td>
	<td></td>
	<td></td>
	<td></td>
</tr>
</table>
<h2><%= complexContent[20] %></h2>
<p><%= complexContent[21] %></p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[10] %></legend>
	<ul class="exercise-sub-list">
	<li><%= complexContent[22] %></li>
	<div class="images"><img src="images_natural_VIII/figure_1.JPG"><br><%= complexContent[23] %></div>
	<p><%= complexContent[24] %></p>
	<div class="images"><img src="images_natural_VIII/figure_2.JPG"><br><%= complexContent[25] %></div>
 	<p><%= complexContent[26] %></p>

	<li><%= complexContent[27] %></li>
	</ul>
	<div class="images"><img src="images_natural_VIII/figure_3.JPG"><br><%= complexContent[28] %></div>
</fieldset>
<p><%= complexContent[29] %> 
</p><p><%= complexContent[30] %>
</p><p><%= complexContent[31] %>
</p><p><%= complexContent[32] %>
</p><p><%= complexContent[33] %>
</p><p><%= complexContent[34] %>
 </p><p><%= complexContent[35] %>
</p><p><%= complexContent[36] %>
 </p><p><%= complexContent[37] %>
  </p><p><%= complexContent[38] %>
  </p>
<h2><%= complexContent[39] %></h2>
  
  
 <fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[11] %></legend>
<p><%= complexContent[40] %></p>
<div class="images"><img src="images_natural_VIII/figure_4.JPG"><br><%= complexContent[41] %></div>
</fieldset>
 
  <p><%= complexContent[42] %></p>
<p><%= complexContent[43] %></p>
<p><%= complexContent[44] %></p>
  
 <div class="info"> 
  <%= complexContent[45] %>
 </div>
 <h2><%= complexContent[46] %></h2> 
  
<p><%= complexContent[47] %>
</p><p><%= complexContent[48] %></p>

<div class="images"><img src="images_natural_VIII/figure_5.JPG"><br><%= complexContent[49] %> </div>
<p><%= complexContent[50] %></p>

<h2><%= complexContent[51] %></h2>
<p><%= complexContent[52] %></p>
<ul style="list-style:circle;">
<li><%= complexContent[53] %></li>
<li><%= complexContent[54] %></li>
</ul>
<h4><%= complexContent[55] %></h4>
<p><%= complexContent[56] %></p>
<h4><%= complexContent[57] %></h4>
<h4><%= simpleContent[12] %></h4>


<p><%= complexContent[58] %>
 </p><p> <%= complexContent[59] %>
  </p><p><%= complexContent[60] %>
  </p><p><%= complexContent[61] %></p>
<div class="images"><img src="images_natural_VIII/figure_6.JPG"><br><%= complexContent[62] %> </div> 

<h4><%= complexContent[63] %></h4>
<p><%= complexContent[64] %></p>
<p><%= complexContent[65] %></p>

<h4><%= simpleContent[13] %></h4>
<p><%= complexContent[66] %>
  </p><p> <%= complexContent[67] %>
</p>
<h2><%= simpleContent[14] %></h2>
<p><%= complexContent[68] %></p>
<p><%= complexContent[69] %></p>
<div class="images"><img src="images_natural_VIII/figure_7.JPG"><br><%= complexContent[70] %></div>
<p><%= complexContent[71] %></p>
<p><%= complexContent[72] %></p>

 <fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[15] %></legend>
<p><%= complexContent[73] %></p>
</fieldset>
<p><%= complexContent[74] %></p>
<h4><%= complexContent[75] %></h4>

<p><%= complexContent[76] %>
</p>
<div class="images"><img src="images_natural_VIII/figure_8.JPG"><br><%= complexContent[77] %></div>
<p><%= complexContent[78] %>
</p>
 <fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[16] %></legend>
<p><%= complexContent[79] %></p>
</fieldset>
<h4><%= complexContent[80] %></h4>
<div class="boojho"><p><%= complexContent[81] %></p></div>
<p><%= complexContent[82] %>
</p>
<div class="paheli"><p><%= complexContent[83] %></p></div>
<p>  <%= complexContent[84] %>
</p>
<div class="images"><img src="images_natural_VIII/figure_9.JPG"><br><%= complexContent[85] %></div>

<p><%= complexContent[86] %>
</p>
<div class="images"><img src="images_natural_VIII/figure_10.JPG"><br><%= complexContent[87] %></div>
<p><%= complexContent[88] %></p>
<div class="images"><img src="images_natural_VIII/figure_11.JPG"><br><%= complexContent[89] %></div>
<div class="boojho"><p><%= complexContent[90] %></p></div>
<p><%= complexContent[91] %></p>
<div class="paheli"><p><%= complexContent[92] %></p></div>

<p><%= complexContent[93] %></p>
<p><%= complexContent[94] %></p>

<div class="images"><img src="images_natural_VIII/figure_12.JPG"><br><%= complexContent[95] %></div>
<p><%= complexContent[96] %></p>

<div class="paheli">
<p><%= complexContent[97] %> </p>

<div class="images"><img src="images_natural_VIII/figure_13.JPG"><br><%= complexContent[98] %></div>
<div class="images"><img src="images_natural_VIII/figure_14.JPG"><br><%= complexContent[99] %></div>
</div>

<div class="paheli">
<p><%= complexContent[100] %></p>
</div>

<h4><%= complexContent[101] %></h4>
<p><%= complexContent[102] %>
</p><p><%= complexContent[103] %>
</p>

<ul>
<li><%= complexContent[104] %></li>
<li><%= complexContent[105] %></li>
<li><%= complexContent[106] %></li>
<li><%= complexContent[107] %></li>
<li><%= complexContent[108] %></li>
</ul>

<p><%= complexContent[109] %>
</p><p><%= complexContent[110] %>
</p>
<h4><%= complexContent[111] %></h4>
<ul>
<li><%= complexContent[112] %></li>
<li><%= complexContent[113] %></li>
<li><%= complexContent[114] %></li>
</ul>

<h4><%= complexContent[115] %></h4>
<ul>
<li><%= complexContent[116] %></li>
<li><%= complexContent[117] %></li>
</ul>
<div class="keywords">
<div class="keywords-heading"><%= simpleContent[17] %></div>
    <ul class="keywords-list">
        <li><%= simpleContent[18] %></li>
        <li><%= simpleContent[19] %></li>
        <li><%= simpleContent[20] %></li>
        <li><%= simpleContent[21] %></li>
        <li><%= simpleContent[22] %></li>
        <li><%= simpleContent[23] %></li>
        <li><%= simpleContent[24] %></li>
        <li><%= simpleContent[25] %></li>
        <li><%= simpleContent[26] %></li>
        <li><%= simpleContent[27] %></li>
        <li><%= simpleContent[28] %></li>
        <li><%= simpleContent[29] %></li>
        <li><%= simpleContent[30] %></li>
	<li><%= simpleContent[31] %></li>
	<li><%= simpleContent[32] %></li>
	<li><%= simpleContent[33] %></li>
	<li><%= simpleContent[34] %></li>
   </ul>
</div>

<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[118] %></legend>
    <ul class="what-learnt-list">
          <li><%= complexContent[119] %></li>
          <li><%= complexContent[120] %></li>
          <li><%= complexContent[121] %></li>
          <li><%= complexContent[122] %></li>
          <li><%= complexContent[123] %></li>
          <li><%= complexContent[124] %></li>
          <li><%= complexContent[125] %></li>
	  <li><%= complexContent[126] %></li>
	  <li><%= complexContent[127] %></li>
	  <li><%= complexContent[128] %></li>
	  <li><%= complexContent[129] %></li>
	  <li><%= complexContent[130] %></li>
	  <li><%= complexContent[131] %></li>
	  <li><%= complexContent[132] %></li>
	  <li><%= complexContent[133] %></li>
	  <li><%= complexContent[134] %></li>
	</ul>
</fieldset>



<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[35] %></legend>
    <ul class="exercise-list">

 <li><%= complexContent[135] %> <br><%= complexContent[136] %>
            <ul class="exercise-sub-list">
                <li><%= complexContent[137] %></li>
                <li> <%= complexContent[138] %></li>
                <li><%= complexContent[139] %> </li>
                <li><%= complexContent[140] %></li>
            </ul>
</li>
<li>	<%= complexContent[141] %>
            <ul class="exercise-sub-list">
                <li><%= complexContent[142] %></li>
                <li> <%= complexContent[143] %></li>
                <li><%= complexContent[144] %></li>
                <li> <%= complexContent[145] %></li>
            </ul>  
</li>
<li><%= complexContent[146] %>
            <ul class="exercise-sub-list">
                <li><%= complexContent[147] %></li>
                <li><%= complexContent[148] %></li>
                <li> <%= complexContent[149] %></li>
                <li><%= complexContent[150] %></li>
               
          </ul>  
</li>         
<li><%= complexContent[151] %></li>
<li> <%= complexContent[152] %></li>
<li><%= complexContent[153] %></li>
<li><%= complexContent[154] %></li>
<li><%= complexContent[155] %></li>
<li><%= complexContent[156] %></li>
<li><%= complexContent[157] %></li>
<li><%= complexContent[158] %></li>
<li><%= complexContent[159] %></li>
</fieldset>


<div class="project">      
<div class="project-heading"> <%= complexContent[160] %></div>
   <ul class="project-list">
     <li><%= complexContent[161] %></li> 
     <li><%= complexContent[162] %></li>
    <div class="images"><img src="images_natural_VIII/figure_15.JPG"><br><%= simpleContent[36] %></div>
     <li> <%= complexContent[163] %></li>
    <div class="caution"><%= complexContent[164] %></div>
    <li><%= complexContent[165] %></li>
   </ul>
</div>
</div>
<body>
</html>


























