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
    <link rel="stylesheet" type="text/css" href="style/content_style.css" />
  </head>
  <body>
	<div id="contentPanel" class="contentPane">
          <h1><%= complexContent[0] %></h1>
          <p><%= complexContent[1] %></p>
		  <p><%= complexContent[2] %>
</p>
<p><%= complexContent[3] %></p>
<p><%= complexContent[4] %></p>
<p>    <%= complexContent[5] %></p>
<h2><%= complexContent[6] %></h2>
<p><%= complexContent[7] %></p>
<fieldset class="activity">
	<legend class="activity-legend"><%= simpleContent[0] %></legend>
	<ul class="activity-list">
<li><%= complexContent[8] %></li>
<li><%= complexContent[9] %></li>
<li><%= complexContent[10] %></li>
</ul>
</fieldset>

<p><%= complexContent[11] %></p>
<fieldset class="activity">
	<legend class="activity-legend"><%= simpleContent[1] %></legend>
	<ul class="activity-list">
<li><%= complexContent[12] %></li>
<li><%= complexContent[13] %></li>
<li><%= complexContent[14] %></li>
<ol type="a">
<li><%= complexContent[15] %></li>
<li><%= complexContent[16] %></li>
<li><%= complexContent[17] %></li>
<li><%= complexContent[18] %></li>
</ol>
<li><%= complexContent[19] %></li>
</ul>
</fieldset>

<p> <%= complexContent[20] %></p>
<ol type="i">
<li><%= complexContent[21] %></li>
<li><%= complexContent[22] %></li>
<li><%= complexContent[23] %></li>
</ol>

<p><%= complexContent[24] %><br>
<%= complexContent[25] %></p>  
<p>
<%= complexContent[26] %></p>
<ul>
<li><%= complexContent[27] %></li>
<li><%= complexContent[28] %></li>
<li><%= complexContent[29] %></li>
<li><%= complexContent[30] %></li>
</ul>

<div class="question">
    <div class="question-heading"><%= simpleContent[2] %></div>
    <ul class="question-list">
        <li><%= complexContent[31] %></li>
		<li><%= complexContent[32] %></li>
		<li><%= complexContent[33] %></li>
    </ul>
</div>


<h2><%= complexContent[34] %></h2>
<h3><%= complexContent[35] %></h3>
<p><%= complexContent[36] %></p>
<p><%= complexContent[37] %></p>
<div style="width:49%; float: left; font-size: small;">
				<img src="images_source_of_energy_10/Figure_1.JPG">		        
</div>
<div class="images">
<img src="images_source_of_energy_10/Figure_1_Sub.JPG"><br><%= complexContent[38] %>
</div>

<div class="think">
<div class="think-heading"><%= complexContent[39] %></div>
<p><%= complexContent[40] %></p>
</div>

<p><%= complexContent[41] %></p>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[3] %></legend>
<ul class="activity-list">
<li><%= complexContent[42] %></li>
<li><%= complexContent[43] %> <img src="images_source_of_energy_10/Symbol.JPG"><%= complexContent[44] %></li>
<li><%= complexContent[45] %></li>
<li><%= complexContent[46] %></li>
<li><%= complexContent[47] %></li>
<li><%= complexContent[48] %></li>
</ul>
</fieldset>
<div class="images">
	<img src="images_source_of_energy_10/Figure_2.JPG">		        
	<br><%= complexContent[49] %>
</div>
<p>  <%= complexContent[50] %>
</p>
<h3><%= complexContent[51] %></h3>
<p><%= complexContent[52] %>
</p>
<h3><%= complexContent[53] %></h3>
<p><%= complexContent[54] %>
</p>
<p><%= complexContent[55] %>
</p>
<p>    <%= complexContent[56] %>
</p>
<div class="images">
	<img src="images_source_of_energy_10/Figure_3.JPG">		        
	<br><%= complexContent[57] %>
</div>
<h3><%= complexContent[58] %></h3>
<h4><%= simpleContent[4] %></h4>
<p><%= complexContent[59] %>
</p>
<p><%= complexContent[60] %></p>
<p><%= complexContent[61] %></p>
<p>    <%= complexContent[62] %>
</p>
<div class="images">
	<img src="images_source_of_energy_10/Figure_4.JPG">		        
	<br><%= complexContent[63] %>
</div>
<h4><%= simpleContent[5] %></h4>
<p><%= complexContent[64] %></p>
<p><%= complexContent[65] %></p>
<div class="images">
	<img src="images_source_of_energy_10/Figure_5.JPG">		        
	<br><br><%= complexContent[66] %>
</div>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[67] %></legend>
    <p><%= complexContent[68] %></p>
</fieldset>
<p><%= complexContent[69] %>
</p>
<div class="question">
    <div class="question-heading"><%= simpleContent[2] %></div>
    <ul class="question-list">
        <li><%= complexContent[70] %></li>
		<li><%= complexContent[71] %></li>
		<li><%= complexContent[72] %></li>
    </ul>
</div>
<h2><%= complexContent[73] %></h2>
<p><%= complexContent[74] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[6] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[75] %>
			<ul class="activity-sub-list">
				<li><%= complexContent[76] %></li>
				<li><%= complexContent[77] %></li>
				<li><%= complexContent[78] %></li>
			</ul>
		</li>
		<li><%= complexContent[79] %></li>
		<li><%= complexContent[80] %></li>
    </ul>
</fieldset>
<p><%= complexContent[81] %>
</p>
<div class="think">
<div class="think-heading"><%= complexContent[82] %></div>
<p>
<%= complexContent[83] %>
</p>
</div>

<h3><%= complexContent[84] %></h3>
<p><%= complexContent[85] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[86] %></legend>
   <p><%= complexContent[87] %></p>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[7] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[88] %></li>
<li><%= complexContent[89] %></li>
<li><%= complexContent[90] %></li>
<li><%= complexContent[91] %></li>
    </ul>
</fieldset>

<p><%= complexContent[92] %>
</p>
<div class="images">
	<img src="images_source_of_energy_10/Figure_6.JPG">		        
	<br><br><%= complexContent[93] %>
</div>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[8] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[94] %></li>
<li><%= complexContent[95] %></li>
<li><%= complexContent[96] %></li>

    </ul>
</fieldset>
<p><%= complexContent[97] %>
</p>
<p>     <%= complexContent[98] %>
</p>
<p><%= complexContent[99] %>
</p>
<h3><%= complexContent[100] %></h3>
<h4><%= simpleContent[9] %></h4>
<p><%= complexContent[101] %>
</p>
<h4><%= simpleContent[10] %></h4>
<p><%= complexContent[102] %>
</p>
<h4><%= complexContent[103] %></h4>
<p><%= complexContent[104] %>
</p>
<p><%= complexContent[105] %></p>
<h3><%= complexContent[106] %></h3>
<p><%= complexContent[107] %></p>
<h3><%= complexContent[108] %></h3>
<p><%= complexContent[109] %>
</p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[110] %></legend>
    <p>
	<%= complexContent[111] %>
</p>
</fieldset>

<p><%= complexContent[112] %></p>
<p><%= complexContent[113] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[114] %></legend>
	<h4 class="know-more-heading"><%= simpleContent[11] %></h4>
    <p>
        <%= complexContent[115] %><br>
                                     <sup><%= complexContent[116] %>
    </p>
	<p><%= complexContent[117] %>
</p>
<p><%= complexContent[118] %>
</p>
<p><%= complexContent[119] %>
</p>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[12] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[120] %></li>
<li><%= complexContent[121] %>
</li>
<li><%= complexContent[122] %></li>
    </ul>
</fieldset>
<div class="question">
    <div class="question-heading"><%= simpleContent[2] %></div>
    <ul class="question-list">
        <li><%= complexContent[123] %></li>
<li><%= complexContent[124] %></li>
<li><%= complexContent[125] %></li>
<li><%= complexContent[126] %></li>
    </ul>
</div>
<h2><%= complexContent[127] %></h2>
<p><%= complexContent[128] %>
</p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[13] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[129] %></li>
<li><%= complexContent[130] %></li>
    </ul>
</fieldset>
<div class="question">
    <div class="question-heading"><%= simpleContent[2] %></div>
    <ul class="question-list">
        <li><%= complexContent[131] %></li>
<li><%= complexContent[132] %></li>
    </ul>
</div>
<h2><%= complexContent[133] %></h2>
<p><%= complexContent[134] %>
</p>
<p><%= complexContent[135] %>
</p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[14] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[136] %>
		<ul class="activity-sub-list">
			<li><%= complexContent[137] %></li>
<li><%= complexContent[138] %></li>
		</ul>
		</li>
		<li><%= complexContent[139] %>
		</li>
    </ul>
</fieldset>
<div class="question">
    <div class="question-heading"><%= simpleContent[2] %></div>
    <ul class="question-list">
        <li><%= complexContent[140] %></li>
<li><%= complexContent[141] %></li>
    </ul>
</div>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[142] %></legend>
    <ul class="what-learnt-list">
		<li><%= complexContent[143] %></li>
<li><%= complexContent[144] %>
</li>
<li><%= complexContent[145] %>
</li>
<li><%= complexContent[146] %>
</li>
<li><%= complexContent[147] %></li>
	</ul>
</fieldset>
<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[15] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[148] %>
   <ul class="exercise-sub-list">
   <li><%= complexContent[149] %></li>
   <li><%= complexContent[150] %></li>
   <li><%= complexContent[151] %></li>
   <li><%= complexContent[152] %></li>
   </ul>
</li>
<li><%= complexContent[153] %>
	<ul class="exercise-sub-list">
   <li><%= simpleContent[16] %></li>
   <li><%= simpleContent[17] %></li>
   <li><%= simpleContent[18] %></li>
   <li><%= simpleContent[19] %></li>
   </ul>
</li>
<li><%= complexContent[154] %>

	<ul class="exercise-sub-list">
   <li><%= simpleContent[20] %></li>
   <li><%= simpleContent[21] %></li>
   <li><%= simpleContent[18] %></li>
   <li><%= simpleContent[22] %></li>
   </ul>
</li>
<li><%= complexContent[155] %></li>
<li><%= complexContent[156] %></li>
<li><%= complexContent[157] %>
	<ul class="exercise-sub-list">
   <li><%= simpleContent[23] %></li>
   <li><%= simpleContent[24] %></li>
   <li><%= simpleContent[25] %></li>
   </ul>
</li>
<li><%= complexContent[158] %>
	<ul class="exercise-sub-list">
   <li><%= complexContent[159] %></li>
   <li><%= complexContent[160] %></li>
   </ul>
</li>
<%= complexContent[161] %>
<li><%= complexContent[162] %></li>
<li><%= complexContent[163] %>
</li>
<li><%= complexContent[164] %>
</li>
    </ul>
</fieldset>
</div>
</body>
</html>

