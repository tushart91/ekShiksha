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
      <h1><%= simpleContent[0] %></h1>
      <p><%= complexContent[0] %></p><p>
  <%= complexContent[1] %> </p><p>
    <%= complexContent[2] %></p><p>
    <%= complexContent[3] %></p><p>
    <%= complexContent[4] %></p>

<div class="images"><img src="sound_VIII/figure_1.JPG"><br><%= complexContent[5] %></div>
<h2><%= complexContent[6] %></h2>
<p><%= complexContent[7] %></p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[1] %></legend>
    <p><%= complexContent[8] %> </p>
<div class="images"><img src="sound_VIII/figure_2.JPG"><br><%= complexContent[9] %> </div>
<p><%= complexContent[10] %></p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend>
    <p><%= complexContent[11] %></p>
<div class="images"><img src="sound_VIII/figure_3.JPG"><br><%= complexContent[12] %></div>
<p><%= complexContent[13] %></p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[3] %></legend>
    <p><%= complexContent[14] %></p>
<div class="images"><img src="sound_VIII/figure_4.JPG"><br><%= complexContent[15] %> </div>
<p><%= complexContent[16] %></p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[4] %></legend>
    <p><%= complexContent[17] %></p>
<div class="images"><img src="sound_VIII/figure_4.JPG"><br><%= complexContent[18] %></div>
<p><%= complexContent[19] %></p>
</fieldset>

<h5><strong><%= complexContent[20] %></h5>
<table>
<tr class="pink-th">
	<th><%= simpleContent[5] %></th>
	<th><%= simpleContent[6] %></th>
	<th><%= complexContent[21] %></th>
</tr>
<tr class="pink-td">
	<td><%= translatableContent[0] %></td>
	<td><%= simpleContent[7] %></td>
	<td><%= simpleContent[8] %></td>
</tr>
<tr class="pink-td">
	<td><%= translatableContent[1] %></td>
	<td><%= simpleContent[9] %></td>
	<td><%= simpleContent[10] %></td>
</tr>
<tr class="pink-td">
	<td><%= translatableContent[2] %></td>
	<td><%= simpleContent[11] %></td>
	<td><%= simpleContent[12] %></td>
</tr>
<tr class="pink-td">
	<td><%= translatableContent[3] %></td>
	<td><%= translatableContent[4] %></td>
	<td><%= translatableContent[4] %></td>
</tr>
<tr class="pink-td">
	<td><%= translatableContent[5] %></td>
	<td><%= translatableContent[4] %></td>
	<td><%= translatableContent[4] %></td>
</tr>
<tr class="pink-td">
	<td><%= translatableContent[6] %></td>
	<td><%= translatableContent[4] %></td>
	<td><%= translatableContent[4] %></td>
</tr>
<tr class="pink-td">
	<td><%= translatableContent[7] %></td>
	<td><%= translatableContent[4] %></td>
	<td><%= translatableContent[4] %></td>
</tr>
</table>
<p><%= complexContent[22] %></p><p>
   <%= complexContent[23] %></p>
<div class="images"><img src="sound_VIII/figure_6.JPG"><br><%= complexContent[24] %> </div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[13] %></legend>
    <p><%= complexContent[25] %></p>
<div class="images"><img src="sound_VIII/figure_7.JPG"><br><%= complexContent[26] %></div>
</fieldset>
<div class="paheli">
<p><%= complexContent[27] %></p>
</div>
<div class="boojho"><p><%= complexContent[28] %></p></div>
<h2><%= complexContent[29] %></h2>
<p><%= complexContent[30] %></p><p>
    <%= complexContent[31] %></p>
<div class="images"><img src="sound_VIII/figure_8.JPG"><br><%= complexContent[32] %> </div>
<p> <%= complexContent[33] %></p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[14] %></legend>
    <p><%= complexContent[34] %></p>
<div class="images"><img src="sound_VIII/figure_9.JPG"><br><%= complexContent[35] %></div>
</fieldset>
<div class="paheli"><p><%= complexContent[36] %></p></div>

<h2><%= complexContent[37] %></h2>
<p><%= complexContent[38] %></p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[15] %></legend>
    <p><%= complexContent[39] %></p>
<div class="images"><img src="sound_VIII/figure_10.JPG"><br><%= complexContent[40] %></div>
<p><%= complexContent[41] %></p>
<p><%= complexContent[42] %> </p>
</fieldset>
<p><%= complexContent[43] %></p><p>
    <%= complexContent[44] %></p><p>
   <%= complexContent[45] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[16] %></legend>
    <p><%= complexContent[46] %></p>
<div class="images"><img src="sound_VIII/figure_11.JPG"><br><%= complexContent[47] %></div>
<p><%= complexContent[48] %></p>
</fieldset>
<div class="boojho">
<p><%= complexContent[49] %></p>
</div>
<p><%= complexContent[50] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[17] %></legend>
    <p><%= complexContent[51] %></p>
<div class="images"><img src="sound_VIII/figure_12.JPG"><br><%= complexContent[52] %></div>
<p><%= complexContent[53] %></p>
</fieldset>
<p><%= complexContent[54] %></p>
<div class="images"><img src="sound_VIII/figure_13.JPG"><br><%= complexContent[55] %></div>
<p> <%= complexContent[56] %></p>
<div class="images"><img src="sound_VIII/figure_14.JPG"><br><%= complexContent[57] %> </div>
<p><%= complexContent[58] %></p>


<h2><%= complexContent[59] %></h2>
<p> <%= complexContent[60] %> </p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[18] %></legend>
    <p><%= complexContent[61] %> </p>
<div class="images"><img src="sound_VIII/figure_15.JPG"><br><%= complexContent[62] %></div>
</fieldset>
<p><%= complexContent[63] %></p>
<div class="images"><img src="sound_VIII/figure_16.JPG"><br><%= complexContent[64] %></div>
<div class="paheli">
<p><%= complexContent[65] %></p>
</div>
<h2><%= complexContent[66] %></h2>
<p><%= complexContent[67] %></p><p><%= complexContent[68] %></p><p> <%= complexContent[69] %></p><p> <%= complexContent[70] %></p>

<h4><%= complexContent[71] %> </h4>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[19] %></legend>
    <p><%= complexContent[72] %></p>
<div class="images"><img src="sound_VIII/figure_17.JPG"><br><%= complexContent[73] %></div>
<p><%= complexContent[74] %> </p><p>
   <%= complexContent[75] %></p><p>  <%= complexContent[76] %></p>
</fieldset>
<div class="paheli">
<p><%= complexContent[77] %></p>
<table style="border:none;width:60%;" cellpadding="0" cellspacing="0">
    <tr>
        <td style="border-right:1px solid black;"><%= simpleContent[20] %></td>
        <td><%= simpleContent[21] %></td>
       
    </tr>
    <tr>
        <td style="border-right:1px solid black;"><%= complexContent[78] %></td>
        <td><%= simpleContent[22] %></td>
    </tr>
    <tr>
        <td style="border-right:1px solid black;"><%= simpleContent[23] %></td>
        <td><%= simpleContent[24] %></td>
    </tr>
    <tr>
        <td style="border-right:1px solid black;"><%= simpleContent[25] %></td>
        <td><%= simpleContent[26] %></td>
    </tr>
    <tr>
        <td style="border-right:1px solid black;"><%= simpleContent[27] %></td>
        <td><%= simpleContent[28] %></td>
    </tr>
</table>
<p><%= complexContent[79] %></p>
</div>

<p><%= complexContent[80] %></p>
<p><%= complexContent[81] %></p>
<div class="boojho"><p><%= complexContent[82] %></p></div>
<p><%= complexContent[83] %></p>
<div class="images"><img src="sound_VIII/figure_18.JPG"><br><%= complexContent[84] %></div>
<p><%= complexContent[85] %></p><p>
   <%= complexContent[86] %></p>

<h2><%= complexContent[87] %> </h2>
<p><%= complexContent[88] %> </p><p>
  <%= complexContent[89] %></p>
<div class="paheli">
<p><%= complexContent[90] %></p><p><%= complexContent[91] %></p>
</div>
<h2><%= complexContent[92] %></h2>
<p><%= complexContent[93] %></p>
<p><%= complexContent[94] %> </p>
<p><%= complexContent[95] %></p>

<h2><%= complexContent[96] %></h2>
<p><%= complexContent[97] %></p><p>
   <%= complexContent[98] %></p><p>
<%= complexContent[99] %></p>
<h4><%= complexContent[100] %></h4>
<p><%= complexContent[101] %></p><p>
   <%= complexContent[102] %></p><p>  <%= complexContent[103] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= simpleContent[29] %></legend>
<p><%= complexContent[104] %></p>
</fieldset>
<div class="keywords">
<div class="keywords-heading"><%= simpleContent[30] %></div>
    <ul class="what-learnt-list">
        <li><%= simpleContent[31] %></li>
        <li><%= simpleContent[32] %></li>
        <li><%= simpleContent[33] %></li>
        <li><%= simpleContent[34] %></li>
        <li><%= simpleContent[35] %></li>
        <li><%= simpleContent[36] %></li>
        <li><%= simpleContent[37] %></li>
        <li><%= simpleContent[38] %></li>
        <li><%= simpleContent[39] %></li>
        <li><%= simpleContent[40] %></li>
        <li><%= simpleContent[41] %></li>
        <li><%= simpleContent[42] %></li>
        <li><%= simpleContent[43] %></li>
        <li><%= simpleContent[44] %></li>
   </ul>
</div>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[105] %></legend>
    <ul class="what-learnt-list">
          <li><%= complexContent[106] %></li>
          <li><%= complexContent[107] %></li>
          <li><%= complexContent[108] %></li>
          <li><%= complexContent[109] %></li>
          <li><%= complexContent[110] %></li>
          <li><%= complexContent[111] %></li>
          <li><%= complexContent[112] %></li>
          <li><%= complexContent[113] %></li>
          <li><%= complexContent[114] %></li>
          <li><%= complexContent[115] %></li>
          <li><%= complexContent[116] %></li>
          <li><%= complexContent[117] %></li>
          <li><%= complexContent[118] %></li>
     </ul>
</fieldset>

<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[45] %></legend>
    <ul class="exercise-list">

 <li><%= complexContent[119] %> <br><%= complexContent[120] %></li>
            <ul class="exercise-sub-list">
                <li><%= simpleContent[46] %></li>
                <li><%= simpleContent[47] %></li>
                <li><%= simpleContent[48] %> </li>
                <li><%= complexContent[121] %></li>
            </ul>
 <li><%= complexContent[122] %></li>
            <ul class="exercise-sub-list">
                <li><%= simpleContent[49] %></li>
                <li><%= simpleContent[50] %></li>
                <li><%= simpleContent[51] %></li>
                <li><%= simpleContent[52] %></li>
            </ul>  
<li><%= complexContent[123] %></li>
            <ul class="exercise-sub-list">
                <li><%= complexContent[124] %></li>
                <li><%= complexContent[125] %></li>
                <li><%= complexContent[126] %></li>
                <li><%= complexContent[127] %></li>
                <li><%= complexContent[128] %></li>
                <li><%= complexContent[129] %></li>  
                <li><%= complexContent[130] %></li>
          </ul>  
 <li><%= complexContent[131] %>
             <ul class="exercise-sub-list">
                <li><%= complexContent[132] %></li>
                <li><%= complexContent[133] %></li>
                <li><%= complexContent[134] %></li>
                <li><%= complexContent[135] %></li>
                <li><%= complexContent[136] %></li>
            </ul>         
 
         
  <li><%= complexContent[137] %></li> 
  <li><%= complexContent[138] %></li>
  <li><%= complexContent[139] %></li>
            <ul class="exercise-sub-list">
                <li><%= simpleContent[53] %></li>
                <li><%= simpleContent[54] %></li>
                <li><%= simpleContent[11] %></li>
            </ul>  
    <li><%= complexContent[140] %></li>
    <li><%= complexContent[141] %></li>
    <li><%= complexContent[142] %></li>
    <li><%= complexContent[143] %></li>     
    <li><%= complexContent[144] %></li>
    <li><%= complexContent[145] %></li> 
</fieldset>

<div class="project">      
<div class="project-heading"> <%= complexContent[146] %></div>
   <ul class="project-list">
     <li><%= complexContent[147] %></li> 
     <li><%= complexContent[148] %></li>
     <li><%= complexContent[149] %></li>
     <li><%= complexContent[150] %></li>
<div class="images"><img src="sound_VIII/figure_19.JPG"><br><%= simpleContent[55] %></div>
<li> <%= complexContent[151] %></li>
<div class="images"><img src="sound_VIII/figure_20.JPG"><br><%= simpleContent[56] %></div>
<li><%= complexContent[152] %></li>
</div>

<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[153] %></legend>
    <p>
        <%= complexContent[154] %></p>
<div class="images"><img src="sound_VIII/fort.JPG"><br></div>
</fieldset>
</div>
  </body>
</html>

