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
    <h1><%= complexContent[0] %></h1>
	
<p><%= complexContent[1] %></p>
   <p><%= complexContent[2] %> </p>
<p><%= complexContent[3] %></p>
   <p><%= complexContent[4] %></p>
<p><%= complexContent[5] %></p>
<div class="boojho"><p><%= complexContent[6] %></p>
</div>
	
<h2><%= complexContent[7] %></h2>
<p><%= complexContent[8] %></p>
<div class="images"><img src="images_chemical_effects_VIII/figure_1_a.JPG" width="300px"><img src="images_chemical_effects_VIII/figure_1_b.JPG" width="300px"></div>
<div style="float:left;width:49%;text-align:center;"><%= simpleContent[0] %></div>
<div style="float:left;width:49%;text-align:center;"><%= simpleContent[1] %></div>
<div class="images"><%= complexContent[9] %></div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend>
    <p><%= complexContent[10] %></p>
</fieldset>

<p><%= complexContent[11] %></p>

<div class="caution"><%= complexContent[12] %></div>


<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[3] %></legend>
    <p><%= complexContent[13] %></p>
<div class="images"><img src="images_chemical_effects_VIII/figure_2.JPG"><br><%= complexContent[14] %> </div>
</fieldset>

<p><%= complexContent[15] %>
</p>

<p><%= complexContent[16] %></p>
<p> <%= complexContent[17] %>
</p>

<div class="info">
    <p><%= complexContent[18] %> 
<div class="images"><img src="images_chemical_effects_VIII/figure_3.JPG"><br><%= simpleContent[4] %></div>
</div>	
<p>   <%= complexContent[19] %>
</p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[5] %></legend>
    <p><%= complexContent[20] %>
<div class="images"><img src="images_chemical_effects_VIII/figure_4.JPG"><br><%= complexContent[21] %></div>
    <p><%= complexContent[22] %>
   </p><p><%= complexContent[23] %> 
  </p><p> <%= complexContent[24] %></p>
</fieldset>

<h5><strong><%= complexContent[25] %></h5>
<table>
<tr class="gray-th">
<th><%= simpleContent[6] %></th>
<th><%= simpleContent[7] %></th>
<th><%= complexContent[26] %></th>
<th><%= complexContent[27] %></th>
</tr>
<tr class="gray-td">
<td><%= translatableContent[0] %></td>
<td><%= simpleContent[8] %></td>
<td><%= simpleContent[9] %></td>
<td><%= simpleContent[0] %></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[1] %></td>
<td><%= simpleContent[10] %></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[2] %></td>
<td><%= simpleContent[11] %></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[3] %></td>
<td><%= simpleContent[12] %></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[4] %></td>
<td><%= simpleContent[13] %></td>
<td></td>
<td></td>
</tr>
<tr class="gray-td">
<td><%= translatableContent[5] %></td>
<td><%= simpleContent[14] %></td>
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
<p><%= complexContent[28] %></p>
<div class="boojho"><p><%= complexContent[29] %></p>
</div>
<p><%= complexContent[30] %></p>
<p><%= complexContent[31] %> </p>


<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[15] %></legend>
    <p><%= complexContent[32] %> </p>
</fieldset>


<p><%= complexContent[33] %>
</p>
<div class="paheli"><p><%= complexContent[34] %></p>
</div>

<p><%= complexContent[35] %>
</p>
<div class="caution"><%= complexContent[36] %>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[16] %></legend>
    <p><%= complexContent[37] %></p>
</fieldset>

<p><%= complexContent[38] %>
</p><p><%= complexContent[39] %>
</p>

<h2><%= complexContent[40] %></h2>

<p><%= complexContent[41] %></p>


<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[17] %></legend>
    <p><%= complexContent[42] %></p>
<div class="images"><img src="images_chemical_effects_VIII/figure_5.JPG"><br><%= complexContent[43] %></div>

<p><%= complexContent[44] %>
</p>
</fieldset>

<div class="person">
<div class="person-heading"><%= complexContent[45] %></div>
<p><%= complexContent[46] %>
</p>
<div class="images"><img src="images_chemical_effects_VIII/nicholson.JPG"></div>
</div>

<p><%= complexContent[47] %></p>


<div class="boojho">
<p><%= complexContent[48] %>
</p>

 <div class="images"><img src="images_chemical_effects_VIII/figure_6.JPG"><br><%= complexContent[49] %></div>
<p><%= complexContent[50] %></p>
<p><%= complexContent[51] %></p>

</div>

<h2><%= simpleContent[18] %></h2>

<p><%= complexContent[52] %></p>
    <p> <%= complexContent[53] %></p>




<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[19] %></legend>
    <p><%= complexContent[54] %> </p>
<div class="images"><img src="images_chemical_effects_VIII/figure_7.JPG"><br><%= complexContent[55] %></div>
<p><%= complexContent[56] %></p>
</fieldset>

 <div class="boojho"><p><%= complexContent[57] %></p>
</div>
<p><%= complexContent[58] %></p>
<p><%= complexContent[59] %></p>
 <div class="boojho"><p><%= complexContent[60] %></p>
</div>
<p><%= complexContent[61] %></p>
 
<p><%= complexContent[62] %>
  </p><p><%= complexContent[63] %>
</p>

<div class="images"><img src="images_chemical_effects_VIII/figure_8.JPG"><br><%= complexContent[64] %></div>

<p><%= complexContent[65] %></p>
<p><%= complexContent[66] %>
</p>

<div class="info">
    <p><%= complexContent[67] %></p>
</div>



<div class="keywords">
<div class="keywords-heading"><%= simpleContent[20] %></div>
    <ul class="keywords-list">
    <li><%= simpleContent[21] %></li>
    <li><%= simpleContent[22] %></li>
    <li><%= simpleContent[23] %></li>
    <li><%= simpleContent[24] %></li>
    <li><%= simpleContent[25] %></li>
   </ul>
</div>

<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[68] %></legend>
    <ul class="what-learnt-list">
    <li><%= complexContent[69] %></li>
    <li><%= complexContent[70] %></li>
    <li><%= complexContent[71] %></li>
    <li><%= complexContent[72] %></li>
    </ul>
</fieldset>

<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[26] %></legend>
    <ul class="exercise-list">
	<li><%= complexContent[73] %>
             <ul class="exercise-sub-list">
                <li><%= complexContent[74] %></li>
		<li><%= complexContent[75] %></li>
		<li><%= complexContent[76] %></li>
		<li><%= complexContent[77] %> </li>
            </ul> 
	</li>
	<li><%= complexContent[78] %></li>
	<li><%= complexContent[79] %>
		<div class="images"><img src="images_chemical_effects_VIII/figure_9.JPG"><br><%= simpleContent[27] %></div>
	</li>
	<li><%= complexContent[80] %>
	<div class="images"><img src="images_chemical_effects_VIII/figure_10.JPG"><br><%= simpleContent[28] %></div>
	</li>
	<li><%= complexContent[81] %>
	<ul class="roman-small">
	<li><%= complexContent[82] %></li>
	<li><%= complexContent[83] %></li>
	<li><%= complexContent[84] %></li>
	<li><%= complexContent[85] %></li>
	</ul> 
	</li>

<li><%= complexContent[86] %></li>
<li> <%= complexContent[87] %></li>
<li><%= complexContent[88] %></li>
<li><%= complexContent[89] %></li>
<li><%= complexContent[90] %></li>
<li><%= complexContent[91] %></li>
<li><%= complexContent[92] %></li>
</fieldset>

<div class="project">      
<div class="project-heading"> <%= complexContent[93] %></div>
   <ul class="project-list">
   <li><%= complexContent[94] %></li>
   <li><%= complexContent[95] %></li>
   <li><%= complexContent[96] %></li>
   <li><%= complexContent[97] %></li>
   <li><%= complexContent[98] %></li>
   <li><%= complexContent[99] %>
   
<div class="images"><img src="images_chemical_effects_VIII/figure_11.JPG"><br><%= simpleContent[29] %></div>
</li>
</div>


<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[100] %></legend>
    <p><%= complexContent[101] %></p>
<div class="images"><img src="images_chemical_effects_VIII/signal.JPG"></div>
</fieldset>
</div>
 </body>
</html>

