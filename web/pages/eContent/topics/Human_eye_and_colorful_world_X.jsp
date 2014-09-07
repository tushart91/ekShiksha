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
		  <p><%= complexContent[2] %></p>
		  <h2><%= complexContent[3] %></h2>
		  <p><%= complexContent[4] %></p>
		  <p><%= complexContent[5] %> </p>
		  <div class="images"><img src="images_human_eye_10/figure_1.PNG"/><br><%= complexContent[6] %></div>
		  <p><%= complexContent[7] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[8] %></legend>
    <p><%= complexContent[9] %> </p>
</fieldset>
		<h3><%= complexContent[10] %></h3>
		<p><%= complexContent[11] %></p>
		<p><%= complexContent[12] %></p>
		<p><%= complexContent[13] %></p>
	<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[14] %></legend>
	<h4 class="know-more-heading"><%= complexContent[15] %></h4>
    <p><%= complexContent[16] %></p>
	<p><%= complexContent[17] %></p>
	</fieldset>
	<h2><%= complexContent[18] %></h2>
	<p><%= complexContent[19] %></p>
	<p><%= complexContent[20] %></p>
	<h4><%= simpleContent[0] %></h4>
	<p><%= complexContent[21] %></p>
	<div class="images"><img src="images_human_eye_10/figure_2.JPG"/><br><%= complexContent[22] %>
</div>
	<h4><%= simpleContent[1] %></h4>
	<p><%= complexContent[23] %>
</p>
<div class="images"><img src="images_human_eye_10/figure_3.JPG"/><br><%= complexContent[24] %>
</div>
<h4><%= simpleContent[2] %></h4>
<p><%= complexContent[25] %></p>
<p><%= complexContent[26] %></p>
<div class="question">
<div class="question-heading"><%= simpleContent[3] %></div>
<ul class="question-list">
<li><%= complexContent[27] %></li>
<li><%= complexContent[28] %></li>
<li><%= complexContent[29] %></li>
<li><%= complexContent[30] %></li>
</ul>
</div>
<div class="think">
<div class="think-heading"><%= complexContent[31] %> </div>
<div class="images"><img src="images_human_eye_10/figure_3_1.JPG"/><br><%= complexContent[32] %><br><%= complexContent[33] %><br><%= complexContent[34] %><br> <%= complexContent[35] %>
</div>
<div align="right"><%= simpleContent[4] %></div>
<p><%= complexContent[36] %></p>
<p><%= complexContent[37] %></p>
<ul class="think-list">
<li><%= complexContent[38] %></li>
<li><%= complexContent[39] %></li>
<li><%= complexContent[40] %></li>
<li><%= complexContent[41] %></li>
<li><%= complexContent[42] %></li>
</ul>
</div>
<h2><%= complexContent[43] %></h2>
<p><%= complexContent[44] %>
</p>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[5] %></legend>
<ul class="activity-list">
<li><%= complexContent[45] %></li>
<li><%= complexContent[46] %></li>
<li><%= complexContent[47] %></li>
<li><%= complexContent[48] %></li>
<li><%= complexContent[49] %></li>
<li><%= complexContent[50] %></li>
<li><%= complexContent[51] %></li>
<li><%= complexContent[52] %></li>
<li><%= complexContent[53] %></li>
<li><%= complexContent[54] %></li>
</ul>
<div class="images"><img src="images_human_eye_10/figure_4.JPG"/><br><%= complexContent[55] %></div>
</fieldset>
<p><%= complexContent[56] %></p>
<h2><%= complexContent[57] %></h2>
<p><%= complexContent[58] %></p>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[6] %></legend>
<ul class="activity-list">
<li><%= complexContent[59] %></li>
<li><%= complexContent[60] %></li>
<li><%= complexContent[61] %></li>
<li><%= complexContent[62] %></li>
<li><%= complexContent[63] %></li>
</ul>
</fieldset>
<p><%= complexContent[64] %></p>
<p><%= complexContent[65] %></p>
<div class="images"><img src="images_human_eye_10/figure_5.JPG"/><br><%= complexContent[66] %></div>
<p><%= complexContent[67] %></p>
<div class="images"><img src="images_human_eye_10/figure_6.JPG"/><br><%= complexContent[68] %></div>
<p><%= complexContent[69] %></p>
<p><%= complexContent[70] %></p>
<p><%= complexContent[71] %></p>
<div class="images"><img src="images_human_eye_10/figure_7.JPG"/><br><%= complexContent[72] %></div>
<div class="images"><img src="images_human_eye_10/figure_8.JPG"/><br><%= complexContent[73] %></div>
<h2><%= complexContent[74] %></h2>
<p><%= complexContent[75] %></p>
<h4><%= complexContent[76] %></h4>
<p><%= complexContent[77] %></p>
<div class="images"><img src="images_human_eye_10/figure_9.JPG"/><br><%= complexContent[78] %></div>
<p><%= complexContent[79] %></p>
<h4><%= complexContent[80] %></h4>
<p><%= complexContent[81] %></p>
<div class="images"><img src="images_human_eye_10/figure_10.JPG"/><br><%= complexContent[82] %>
</div>
<h2><%= complexContent[83] %></h2>
<p><%= complexContent[84] %></p>
<h3><%= complexContent[85] %></h3>
<p><%= complexContent[86] %></p>
<p><%= complexContent[87] %></p>
<h3><%= complexContent[88] %></h3>
<p><%= complexContent[89] %></p>
<p><%= complexContent[90] %></p>
<h3><%= complexContent[91] %></h3>
<p><%= complexContent[92] %></p>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[7] %></legend>
<ul class="activity-list">
<li><%= complexContent[93] %></li>
<li><%= complexContent[94] %></li>
<li><%= complexContent[95] %></li>
<li><%= complexContent[96] %></li>
</ul>
</fieldset>
<p><%= complexContent[97] %></p>
<div class="images"><img src="images_human_eye_10/figure_11.JPG"/><br><%= complexContent[98] %></div>
<p><%= complexContent[99] %></p>
<p><%= complexContent[100] %></p>
<div class="images"><img src="images_human_eye_10/figure_12.JPG"/><br><%= complexContent[101] %></div>
<fieldset class="what-learnt">
<legend class="what-learnt-legend"><%= complexContent[102] %></legend>
<ul class="what-learnt-list">
<li><%= complexContent[103] %></li>
<li><%= complexContent[104] %></li>
<li><%= complexContent[105] %></li>
<li><%= complexContent[106] %></li>
<li><%= complexContent[107] %></li>
</ul>
</fieldset>
<fieldset class="exercise">
<legend class="exercise-legend"><%= simpleContent[8] %></legend>
<ul class="exercise-list">
<li><%= complexContent[108] %>
<ul class="exercise-sub-list">
<li><%= simpleContent[9] %></li>
<li><%= simpleContent[10] %></li>
<li><%= simpleContent[11] %></li>
<li><%= simpleContent[12] %></li>
</ul>
</li>
<li><%= complexContent[109] %>
<ul class="exercise-sub-list">
<li><%= simpleContent[13] %></li>
<li><%= simpleContent[14] %></li>
<li><%= simpleContent[15] %></li>
<li><%= simpleContent[16] %></li>
</ul>
</li>
<li><%= complexContent[110] %>
<ul class="exercise-sub-list">
<li><%= simpleContent[17] %></li>
<li><%= simpleContent[18] %></li>
<li><%= simpleContent[19] %></li>
<li><%= simpleContent[20] %></li>
</ul>
</li>
<li><%= complexContent[111] %>
<ul class="exercise-sub-list">
<li><%= simpleContent[15] %></li>
<li><%= simpleContent[16] %></li>
<li><%= simpleContent[21] %></li>
<li><%= simpleContent[14] %></li>
</ul>
</li>
<li><%= complexContent[112] %></li>
<li><%= complexContent[113] %></li>
<li><%= complexContent[114] %></li>
<li><%= complexContent[115] %></li>
<li><%= complexContent[116] %></li>
<li><%= complexContent[117] %></li>
<li><%= complexContent[118] %></li>
<li><%= complexContent[119] %></li>
<li><%= complexContent[120] %></li>
</ul>
</fieldset>
</div>
  </body>
</html>

