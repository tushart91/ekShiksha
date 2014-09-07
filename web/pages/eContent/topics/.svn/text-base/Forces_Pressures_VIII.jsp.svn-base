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
<h1 align="center"><%= complexContent[0] %> </h1>
<p><%= complexContent[1] %></p>
<p><%= complexContent[2] %></p>
<p><%= complexContent[3] %></p>
<h2><%= complexContent[4] %></h2>
<p><%= complexContent[5] %></p>
<div class="images"><img src="images_force_pressure_VIII/figure_1.JPG"><br><%= complexContent[6] %></div>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[0] %></legend>
<p><%= complexContent[7] %></p>
</fieldset>
<h5><strong><%= complexContent[8] %></h5>
<table>
  <tr class="pink-th">
    <th rowspan="2"><%= simpleContent[1] %></th>
    <th rowspan="2"><%= complexContent[9] %></th>
    <th colspan="4" rowspan="2"><%= complexContent[10] %></th>
    <th colspan="2"><%= complexContent[11] %></th>
  </tr>
  <tr class="pink-th">
    <th><%= simpleContent[2] %></th>
    <th><%= simpleContent[3] %></th>
  </tr>
  <tr class="pink-td">
    <td><%= translatableContent[0] %></td>
    <td><%= complexContent[12] %></td>
    <td><%= simpleContent[4] %></td>
    <td><%= simpleContent[5] %></td>
    <td><%= simpleContent[6] %></td>
    <td><%= translatableContent[1] %></td>
    <td><%= simpleContent[7] %></td>
    <td><%= simpleContent[7] %></td>
  </tr>
  <tr class="pink-td">
    <td><%= translatableContent[2] %></td>
    <td><%= complexContent[13] %></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="pink-td">
    <td><%= translatableContent[3] %></td>
    <td><%= complexContent[14] %></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="pink-td">
    <td><%= translatableContent[4] %></td>
    <td><%= complexContent[15] %></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="pink-td">
    <td><%= translatableContent[5] %></td>
    <td><%= complexContent[16] %></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="pink-td">
    <td><%= translatableContent[6] %></td>
    <td><%= complexContent[17] %></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="pink-td">
    <td><%= translatableContent[7] %></td>
    <td><%= complexContent[18] %></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<p><%= complexContent[19] %></p>
<p><%= complexContent[20] %></p>
<div class="boojho">
<p><%= complexContent[21] %></p>
</div>
<h2><%= complexContent[22] %></h2>
<p><%= complexContent[23] %></p>
<p><%= complexContent[24] %></p>
<div class="images"><img src="images_force_pressure_VIII/figure_2.JPG"><br><%= complexContent[25] %></div>
<div class="images"><img src="images_force_pressure_VIII/figure_3_a.JPG" style="margin-right:15px;"><img src="images_force_pressure_VIII/figure_3_b.JPG"><br>
<%= complexContent[26] %>
</div>
<div class="images"><img src="images_force_pressure_VIII/figure_3_c.JPG"><br><%= complexContent[27] %></div>
<p><%= complexContent[28] %> </p>
<h2><%= complexContent[29] %></h2>
<p><%= complexContent[30] %></p>
<p><%= complexContent[31] %></p>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[8] %></legend>
<p><%= complexContent[32] %></p>
<p><%= complexContent[33] %></p>
<div class="images"><img src="images_force_pressure_VIII/figure_4.JPG"><br><%= complexContent[34] %></div>
</fieldset>
<div class="images"><img src="images_force_pressure_VIII/figure_5.JPG"><br><%= complexContent[35] %></div>
<p><%= complexContent[36] %></p>
<p><%= complexContent[37] %></p>
<p><%= complexContent[38] %></p>
<div class="paheli">
<p><%= complexContent[39] %></p>
</div>
<p><%= complexContent[40] %></p>
<p><%= complexContent[41] %></p>
<div class="boojho">
<p><%= complexContent[42] %></p>
</div>
<h2><%= complexContent[43] %></h2>
<p><%= complexContent[44] %></p>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[9] %></legend>
<p><%= complexContent[45] %></p>
<p><%= complexContent[46] %></p>
<div class="images"><img src="images_force_pressure_VIII/figure_6.JPG"><br><%= complexContent[47] %></div>
</fieldset>
<p><%= complexContent[48] %></p>
<p><%= complexContent[49] %></p>
<div class="boojho">
<p><%= complexContent[50] %></p>
</div>
<div class="images"><img src="images_force_pressure_VIII/figure_7.JPG"><br><%= complexContent[51] %></div>
<p><%= complexContent[52] %></p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[10] %></legend>
    <p><%= complexContent[53] %></p>
	<div class="images"><img src="images_force_pressure_VIII/figure_8_a.JPG" style="margin-right:20px;"><img src="images_force_pressure_VIII/figure_8_b.JPG"><br><%= complexContent[54] %></div>
</fieldset>
<p><%= complexContent[55] %></p>
<p><%= complexContent[56] %></p>
<div class="paheli">
<h4 style="text-align:center"><%= complexContent[57] %></h4>
<p><%= complexContent[58] %></p>
</div>
<p><%= complexContent[59] %></p>
<p>  <%= complexContent[60] %></p>
<h2><%= complexContent[61] %> </h2>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[11] %></legend>
    <p><%= complexContent[62] %></p>
</fieldset>
<p><%= complexContent[63] %></p>
<p><%= complexContent[64] %>
<ul style="margin-top:0px;margin-left:20px;">
	<li><%= complexContent[65] %></li>
	<li><%= complexContent[66] %></li>
	<li><%= complexContent[67] %></li>
	<li><%= complexContent[68] %></li>
	<li><%= complexContent[69] %></li>
</ul>
</p>

<table>
  <tr class="pink-th">
    <th rowspan="3"><%= complexContent[70] %></th>
    <th rowspan="3"><%= complexContent[71] %></th>
    <th rowspan="3"><%= simpleContent[12] %></th>
    <th colspan="4"><%= complexContent[72] %></th>
  </tr>
  <tr class="pink-th">
    <th colspan="2"><%= complexContent[73] %></th>
    <th colspan="2"><%= complexContent[74] %></th>
  </tr>
  <tr class="pink-th">
    <th><%= simpleContent[7] %></th>
    <th><%= simpleContent[13] %></th>
    <th><%= simpleContent[7] %></th>
    <th><%= simpleContent[13] %></th>
  </tr>
  <tr class="pink-td">
    <td><%= complexContent[75] %></td>
    <td><%= complexContent[76] %></td>
    <td><img src="images_force_pressure_VIII/tbl_image1.JPG"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="pink-td">
    <td><%= complexContent[77] %></td>
    <td><%= complexContent[78] %></td>
    <td><img src="images_force_pressure_VIII/tbl_image2.JPG"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="pink-td">
    <td><%= complexContent[79] %></td>
    <td><%= complexContent[80] %></td>
    <td><img src="images_force_pressure_VIII/tbl_image3.JPG"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr class="pink-td">
    <td><%= complexContent[81] %></td>
    <td><%= complexContent[82] %> </td>
    <td><img src="images_force_pressure_VIII/tbl_image4.JPG"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

<p><%= complexContent[83] %></p>
<h2><%= complexContent[84] %></h2>
<h4><%= simpleContent[14] %></h4>
<p><%= complexContent[85] %></p>
<div class="paheli">
<p><%= complexContent[86] %></p>
</div>
<p><%= complexContent[87] %></p>
<h4><%= simpleContent[15] %></h4>
<p><%= complexContent[88] %></p>
<p><%= complexContent[89] %></p>
<p><%= complexContent[90] %></p>
<p><%= complexContent[91] %></p>
<div class="images"><img src="images_force_pressure_VIII/figure_9.JPG"><br><%= complexContent[92] %></div>
<p><%= complexContent[93] %></p>
<h2><%= complexContent[94] %></h2>
<h4><%= simpleContent[16] %></h4>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[17] %></legend>
    <p><%= complexContent[95] %></p>
	<div class="images"><img src="images_force_pressure_VIII/figure_10.JPG"><br><%= complexContent[96] %></div>
</fieldset>
<p><%= complexContent[97] %></p>
<p><%= complexContent[98] %></p>
<p><%= complexContent[99] %></p>
<h4><%= simpleContent[18] %></h4>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[0] %></legend>
    <p><%= complexContent[100] %> </p>
	<p><%= complexContent[101] %> </p>
	<div class="images"><img src="images_force_pressure_VIII/figure_11.JPG"><br><%= complexContent[102] %></div>
</fieldset>
<p><%= complexContent[103] %></p>
<p><%= complexContent[104] %> </p>

<h4><%= simpleContent[19] %></h4>
<p><%= complexContent[105] %> </p>
<p><%= complexContent[106] %></p>
<p><%= complexContent[107] %></p>
<div class="paheli">
<p><%= complexContent[108] %></p>
</div>
<h2><%= simpleContent[20] %></h2>
<p><%= complexContent[109] %></p>
<p><%= complexContent[110] %></p>
<div class="images"><img src="images_force_pressure_VIII/figure_12.JPG"><br><%= complexContent[111] %></div>
<p><%= complexContent[112] %></p>
<p><%= complexContent[113] %></p>
<div class="equation"><%= complexContent[114] %></div>
<div class="paheli">
<p><%= complexContent[115] %></p>
</div>
<p><%= complexContent[116] %></p>
<p><%= complexContent[117] %></p>
<div class="boojho">
<p><%= complexContent[118] %></p>
</div>
<div class="images"><img src="images_force_pressure_VIII/figure_13.JPG"><br><%= complexContent[119] %></div>
<p><%= complexContent[120] %></p>
<h2><%= complexContent[121] %></h2>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[21] %></legend>
    <p><%= complexContent[122] %></p>
	<div class="images"><img src="images_force_pressure_VIII/figure_14.JPG"><br><%= complexContent[123] %></div>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[22] %></legend>
    <p><%= complexContent[124] %> </p>
	<div class="images"><img src="images_force_pressure_VIII/figure_15.JPG"><br><%= complexContent[125] %> </div>
</fieldset>
<p><%= complexContent[126] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[23] %></legend>
    <p><%= complexContent[127] %></p>
	<div class="images"><img src="images_force_pressure_VIII/figure_16.JPG"><br><%= complexContent[128] %></div>
</fieldset>
<p><%= complexContent[129] %></p>
<div class="boojho">
<p><%= complexContent[130] %></p>
</div>
<p><%= complexContent[131] %> </p>
<p><%= complexContent[132] %></p>
<h2><%= complexContent[133] %></h2>
<p><%= complexContent[134] %></p>
<p><%= complexContent[135] %></p>
<div class="images"><img src="images_force_pressure_VIII/figure_17.JPG"><br><%= complexContent[136] %></div>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[24] %></legend>
    <p><%= complexContent[137] %></p>
	<div class="images"><img src="images_force_pressure_VIII/figure_18.JPG"><br><%= complexContent[138] %></div>
</fieldset>
<p><%= complexContent[139] %></p>
<div class="boojho"><p><%= complexContent[140] %></p></div>
<p><%= complexContent[141] %></p>
<div class="images"><img src="images_force_pressure_VIII/figure_19.JPG"><br><%= complexContent[142] %></div>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[143] %></legend>
    <p><%= complexContent[144] %></p>
	<div class="images"><img src="images_force_pressure_VIII/figure_20.JPG"><br><%= complexContent[145] %></div>
</fieldset>
<div class="keywords">
<div class="keywords-heading"><%= simpleContent[25] %></div>
<ul class="keywords-list">
	<li><%= simpleContent[26] %></li>
	<li><%= simpleContent[27] %></li>
	<li><%= simpleContent[28] %></li>
	<li><%= simpleContent[29] %></li>
	<li><%= simpleContent[30] %></li>
	<li><%= simpleContent[31] %></li>
	<li><%= simpleContent[32] %></li>
	<li><%= simpleContent[33] %></li>
	<li><%= simpleContent[34] %></li>
	<li><%= simpleContent[35] %></li>
	<li><%= simpleContent[36] %></li>
	<li><%= simpleContent[27] %></li>
	<li><%= simpleContent[37] %></li>
	<li><%= simpleContent[38] %></li>
</ul>
</div>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[146] %></legend>
    <ul class="what-learnt-list">
		<li><%= complexContent[147] %></li>
		<li><%= complexContent[148] %></li>
		<li><%= complexContent[149] %></li>
		<li><%= complexContent[150] %></li>
		<li><%= complexContent[151] %></li>
		<li><%= complexContent[152] %></li>
		<li><%= complexContent[153] %></li>
		<li><%= complexContent[154] %></li>
		<li><%= complexContent[155] %></li>
	</ul>
</fieldset>
<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[39] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[156] %></li>
        <li><%= complexContent[157] %></li>
		<li><%= complexContent[158] %>
		<ul class="exercise-sub-list">
			<li><%= complexContent[159] %></li>
			<li><%= complexContent[160] %></li>
			<li><%= complexContent[161] %></li>
			<li><%= complexContent[162] %></li>
		</ul>
		</li>
        <li><%= complexContent[163] %>
		<div><%= complexContent[164] %></div>
		<ul class="exercise-sub-list">
			<li><%= complexContent[165] %></li>
			<li><%= complexContent[166] %></li>
			<li><%= complexContent[167] %></li>
			<li><%= complexContent[168] %></li>
		</ul>
		</li>
		<li><%= complexContent[169] %>
		<ul class="exercise-sub-list">
			<li><%= complexContent[170] %></li>
			<li><%= complexContent[171] %></li>
			<li><%= complexContent[172] %></li>
			<li><%= complexContent[173] %></li>
		</ul>
		</li>
        <li><%= complexContent[174] %></li>
		<li><%= complexContent[175] %></li>
        <li><%= complexContent[176] %></li>
		<li><%= complexContent[177] %></li>
        <li><%= complexContent[178] %>
		<ul class="exercise-sub-list">
			<li><%= complexContent[179] %></li>
			<li><%= complexContent[180] %></li>
			<li><%= complexContent[181] %></li>
			<li><%= simpleContent[40] %></li>
		</ul>
		</li>
    </ul>
</fieldset>
<div class="project">
<div class="project-heading"><%= complexContent[182] %></div>
<ul class="project-list">
	<li><%= complexContent[183] %></li>
	<li><%= complexContent[184] %>
<div class="images"><img src="images_force_pressure_VIII/figure_21.JPG"><br><%= simpleContent[41] %></div>
</li>
<li><%= complexContent[185] %>
<div class="images"><img src="images_force_pressure_VIII/figure_22.JPG"><br><%= simpleContent[42] %></div>
</li>
</ul>
</div>
</div>
  </body>
</html>

