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
      <p><%= complexContent[1] %>
</p>
<p><%= complexContent[2] %>
</p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[3] %></legend>
    <p>
        <%= complexContent[4] %></p>
</fieldset>
<p><%= complexContent[5] %></p>
      <h2><%= complexContent[6] %></h2>
      <p><%= complexContent[7] %>
</p>
<p><%= complexContent[8] %></p>
<ul class="roman-small">
    <li><%= complexContent[9] %></li>
    <li><%= complexContent[10] %></li>
</ul>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[0] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[11] %></li>
        <li><%= complexContent[12] %></li>
        <li><%= complexContent[13] %></li>
        <li><%= complexContent[14] %></li>
        <li><%= complexContent[15] %></li>
    </ul>
</fieldset>
<p><%= complexContent[16] %>
</p>
<h2><%= complexContent[17] %></h2>
<p><%= complexContent[18] %>
</p>
<p><%= complexContent[19] %>
</p>
<p><%= complexContent[20] %>
</p>
<div class="images">
<img src="images_light_10/figure_1.JPG"><br>
<%= complexContent[21] %>
</div>
<p><%= complexContent[22] %>
</p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[1] %></legend>
	<h5><strong><%= complexContent[23] %></h5>
    <ul class="activity-list">
        <li><%= complexContent[24] %></li>
        <li><%= complexContent[25] %></li>
        <li><%= complexContent[26] %></li>
        <li><%= complexContent[27] %></li>
    </ul>
</fieldset>
<p><%= complexContent[28] %></p>
<p><%= complexContent[29] %>
</p>
<div class="images">
<img src="images_light_10/figure_2.JPG"><br>
<%= complexContent[30] %> <br> <%= complexContent[31] %>
</div>
<p><%= complexContent[32] %>
</p>
<p><%= complexContent[33] %></p>
<h3><%= complexContent[34] %></h3>
<p><%= complexContent[35] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend><br>
	<p><%= complexContent[36] %></p>
    <ul class="activity-list">
        <li><%= complexContent[37] %></li>
        <li><%= complexContent[38] %></li>
        <li><%= complexContent[39] %>
</li>
        <li><%= complexContent[40] %></li>
        <li><%= complexContent[41] %></li>
		<li><%= complexContent[42] %></li>
		<li><%= complexContent[43] %></li>
		<li><%= complexContent[44] %></li>
    </ul>
</fieldset>
<p><%= complexContent[45] %> 
</p>
<h5><strong><%= complexContent[46] %></h5>
<table>
    <tr class="gray-th">
        <th><%= complexContent[47] %> </th>
        <th><%= complexContent[48] %> </th>
        <th><%= complexContent[49] %></th>
        <th><%= complexContent[50] %></th>
    </tr>
    <tr class="gray-td">
        <td><%= simpleContent[3] %> </td>
        <td><%= complexContent[51] %> </td>
        <td><%= complexContent[52] %> </td>
        <td><%= complexContent[53] %></td>
    </tr>
	<tr class="gray-td">
        <td><%= simpleContent[4] %></td>
        <td><%= complexContent[54] %></td>
        <td><%= simpleContent[5] %></td>
        <td><%= complexContent[55] %></td>
    </tr>
	<tr class="gray-td">
        <td><%= simpleContent[6] %></td>
        <td><%= simpleContent[6] %></td>
        <td><%= simpleContent[7] %></td>
        <td><%= complexContent[56] %></td>
    </tr>
	<tr class="gray-td">
        <td><%= complexContent[57] %></td>
        <td><%= simpleContent[4] %></td>
        <td><%= simpleContent[8] %></td>
        <td><%= complexContent[58] %></td>
    </tr>
	<tr class="gray-td">
        <td><%= simpleContent[9] %></td>
        <td><%= simpleContent[3] %></td>
        <td><%= simpleContent[10] %></td>
        <td><%= complexContent[59] %></td>
    </tr>
	<tr class="gray-td">
        <td><%= complexContent[60] %></td>
        <td><%= complexContent[61] %></td>
        <td><%= simpleContent[8] %></td>
        <td><%= complexContent[62] %></td>
    </tr>
</table>
<h3><%= complexContent[63] %></h3>
<p><%= complexContent[64] %>
</p>
<p><%= complexContent[65] %></p>
<ul style="list-style:lower-roman">
<li><%= complexContent[66] %></li>
<div class="images">
<img src="images_light_10/figure_3.JPG"><br>
<%= simpleContent[11] %>
</div>
<li><%= complexContent[67] %>
</li>
<div class="images">
<img src="images_light_10/figure_4.JPG"><br>
<%= simpleContent[12] %>
</div>
<li><%= complexContent[68] %>
</li>
<div class="images">
<img src="images_light_10/figure_5.JPG"><br>
<%= simpleContent[13] %>
</div>
<li><%= complexContent[69] %></li>
<div class="images">
<img src="images_light_10/figure_6.JPG"><br>
<%= simpleContent[14] %>
</div>
</ul>
<p><%= complexContent[70] %></p>
<h4><%= complexContent[71] %></h4>
<p><%= complexContent[72] %></p>
<div class="images">
<img src="images_light_10/figure_7.JPG"><br>
<%= complexContent[73] %>
</div>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[15] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[74] %></li>
        <li><%= complexContent[75] %></li>
        <li><%= complexContent[76] %></li>
        <li><%= complexContent[77] %></li>
        <li><%= complexContent[78] %></li>
    </ul>
</fieldset>
<h4><%= complexContent[79] %></h4>
<p><%= complexContent[80] %>
</p>
<h4><%= complexContent[81] %></h4>
<p><%= complexContent[82] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[16] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[83] %></li>
        <li><%= complexContent[84] %></li>
        <li><%= complexContent[85] %></li>
        <li><%= complexContent[86] %></li>
        <li><%= complexContent[87] %></li>
    </ul>
</fieldset>
<p><%= complexContent[88] %></p>
<div class="images">
<img src="images_light_10/figure_8.JPG"><br>
<%= complexContent[89] %>
</div>
<h5><strong><%= complexContent[90] %></h5>
<table>
    <tr class="green-th">
        <th><%= complexContent[91] %> </th>
        <th><%= complexContent[92] %> </th>
        <th><%= complexContent[93] %></th>
        <th><%= complexContent[94] %></th>
    </tr>
    <tr class="green-td">
        <td><%= simpleContent[3] %></td>
        <td><%= complexContent[95] %></td>
        <td><%= complexContent[96] %></td>
        <td><%= complexContent[97] %></td>
    </tr>
	<tr class="green-td">
        <td><%= complexContent[98] %></td>
        <td><%= complexContent[99] %></td>
        <td><%= simpleContent[5] %></td>
        <td><%= complexContent[100] %></td>
    </tr>
</table>
<p><%= complexContent[101] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[17] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[102] %></li>
        <li><%= complexContent[103] %></li>
        <li><%= complexContent[104] %></li>
        <li><%= complexContent[105] %></li>
        <li><%= complexContent[106] %></li>
    </ul>
</fieldset>
<p><%= complexContent[107] %></p>
<h4><%= complexContent[108] %></h4>
<p><%= complexContent[109] %></p>
<div class="question">
    <div class="question-heading"><%= simpleContent[18] %></div>
    <ul class="question-list">
        <li><%= complexContent[110] %></li>
        <li><%= complexContent[111] %></li>
        <li><%= complexContent[112] %></li>
        <li><%= complexContent[113] %></li>
    </ul>
</div>
<h4><%= complexContent[114] %></h4>
<p><%= complexContent[115] %>
</p>
<ul style="list-style:lower-roman">
<li><%= complexContent[116] %></li>
<li><%= complexContent[117] %></li>
<li><%= complexContent[118] %></li>
<li><%= complexContent[119] %></li>
<li><%= complexContent[120] %></li>
</ul>
<p><%= complexContent[121] %></p>
<div class="images">
<img src="images_light_10/figure_9.JPG"><br>
<%= complexContent[122] %>
</div>
<h4><%= complexContent[123] %></h4>
<p><%= complexContent[124] %>
</p>
<div class="equation"><%= complexContent[125] %><span style="margin-left:100px;"><%= translatableContent[0] %></span></div>
<p><%= complexContent[126] %>
</p>
<h4><%= simpleContent[19] %></h4>
<p><%= complexContent[127] %></p>
<p><%= complexContent[128] %></p>
<div class="equation"><%= complexContent[129] %> </div>
<div class="equation"><%= complexContent[130] %><span style="margin-left:100px;"><%= translatableContent[1] %></span></div>
<p><%= complexContent[131] %></p>
<div class="example">
<div class="exam_no"><%= simpleContent[20] %></div>
<p><%= complexContent[132] %></p>
<div class="exam_no"><%= simpleContent[21] %></div>
<p><%= complexContent[133] %><br>
<%= complexContent[134] %><br>
<%= complexContent[135] %><br>
<%= complexContent[136] %><br><br>

<%= complexContent[137] %><br><br>
<%= complexContent[138] %><br><br>
<%= complexContent[139] %><br><br>
<%= translatableContent[2] %><br><br>
<%= complexContent[140] %><br><br>
<%= complexContent[141] %><br><br>
<%= complexContent[142] %><br>
<%= translatableContent[3] %><br>
<%= complexContent[143] %>
</p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[22] %></div>
<p><%= complexContent[144] %></p>
<div class="exam_no"><%= simpleContent[21] %></div>
<p><%= complexContent[145] %><br>
<%= complexContent[146] %><br>
<%= complexContent[147] %><br>
<%= complexContent[148] %><br>
<%= complexContent[149] %><br>
<%= complexContent[150] %><br><br>
<%= complexContent[151] %><br><br>
<%= complexContent[152] %><br><br>
<%= complexContent[153] %><br><br>
<%= complexContent[154] %><br><br>
<%= complexContent[155] %><br><br>
<%= complexContent[156] %><br><br>
<%= complexContent[157] %>
</p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[18] %></div>
    <ul class="question-list">
        <li><%= complexContent[158] %></li>
        <li><%= complexContent[159] %></li>
    </ul>
</div>
<h2><%= complexContent[160] %></h2>
<p><%= complexContent[161] %></p>
<p><%= complexContent[162] %>
</p>
<p><%= complexContent[163] %></p>
<p><%= complexContent[164] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[23] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[165] %></li>
        <li><%= complexContent[166] %></li>
        <li><%= complexContent[167] %></li>
        <li><%= complexContent[168] %></li>
    </ul>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[24] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[169] %></li>
        <li><%= complexContent[170] %></li>
        <li><%= complexContent[171] %></li>
        <li><%= complexContent[172] %></li>
    </ul>
</fieldset>
<p><%= complexContent[173] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[25] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[174] %></li>
        <li><%= complexContent[175] %></li>
        <li><%= complexContent[176] %></li>
        <li><%= complexContent[177] %></li>
		<li><%= complexContent[178] %></li>
    </ul>
</fieldset>
<h3><%= complexContent[179] %></h3>
<p><%= complexContent[180] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[26] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[181] %></li>
        <li><%= complexContent[182] %></li>
        <li><%= complexContent[183] %></li>
        <li><%= complexContent[184] %></li>
		<li><%= complexContent[185] %></li>
		<li><%= complexContent[186] %></li>
		<li><%= complexContent[187] %></li>
		<li><%= complexContent[188] %></li>
		<li><%= complexContent[189] %></li>
    </ul>
</fieldset>
<div class="images">
<img src="images_light_10/figure_10.JPG"><br>
<%= complexContent[190] %>
</div>
<p><%= complexContent[191] %>
</p>
<p><%= complexContent[192] %>
</p>
<p><%= complexContent[193] %></p>
<p><%= complexContent[194] %>
</p>
<ul style="list-style:lower-roman">
<li><%= complexContent[195] %></li>
<li><%= complexContent[196] %></li></ul>
<p><%= complexContent[197] %>
</p>
<div class="equation"><%= complexContent[198] %><span style="margin-left:100px;"><%= translatableContent[4] %></span></div>
<p><%= complexContent[199] %></p>
<h3><%= complexContent[200] %></h3>
<p><%= complexContent[201] %></p>
<p><%= complexContent[202] %>
</p>
<p><%= complexContent[203] %></p>
<div class="equation"><%= complexContent[204] %></sub><span style="margin-left:100px;"><%= translatableContent[5] %></span></div>
<p><%= complexContent[205] %></p>
<div class="equation"><%= complexContent[206] %></sub><span style="margin-left:100px;"><%= translatableContent[6] %></span></div>
<p><%= complexContent[207] %></p>
<div class="images">
<img src="images_light_10/figure_11.JPG"><br>
<%= simpleContent[27] %>
</div>
<p><%= complexContent[208] %></p>
<div class="equation"><%= complexContent[209] %><span style="margin-left:100px;"><%= translatableContent[7] %></span></div>
<p><%= complexContent[210] %> </p>
<h5><strong><%= complexContent[211] %></h5>
<table>
    <tr class="gray-th">
        <th><%= simpleContent[28] %></th>
        <th><%= simpleContent[29] %></th>
        <th><%= simpleContent[28] %></th>
        <th><%= simpleContent[29] %></th>
    </tr>
    <tr class="gray-td">
        <td align="center"><%= simpleContent[30] %></td>
        <td align="center"><%= translatableContent[8] %> </td>
        <td align="center"><%= simpleContent[31] %></td>
        <td align="center"><%= translatableContent[9] %></td>
    </tr>
	<tr class="gray-td">
        <td>
		    <table class="gray-td" border="0" align="left">
			<tr>
			<td align="center"><%= simpleContent[32] %></td>
			</tr>
			<tr>
			<td align="center"><%= simpleContent[33] %></td>
			</tr>
			<tr>
			<td align="center"><%= simpleContent[34] %></td>
			</tr>
			</table></td>
        <td><table class="gray-td" border="0" align="left">
			<tr>
			<td align="center"><%= translatableContent[10] %></td>
			</tr>
			<tr>
			<td align="center"><%= translatableContent[11] %></td>
			</tr>
			<tr>
			<td align="center"><%= translatableContent[12] %></td>
			</tr>
			</table></td>
        <td align="center"><%= simpleContent[35] %></td>
        <td align="center"><%= translatableContent[13] %></td>
    </tr>
	<tr class="gray-td">
	<td align="center"><%= simpleContent[36] %></td>
    <td align="center"><%= translatableContent[14] %></td>
	<td align="center"><%= simpleContent[37] %></td>
    <td align="center"><%= translatableContent[15] %></td>
	</tr>
	<tr class="gray-td">
	<td align="center"><%= simpleContent[38] %></td>
    <td align="center"><%= translatableContent[16] %></td>
	<td align="center"><%= complexContent[212] %></td>
    <td align="center"><%= translatableContent[17] %></td>
	</tr>
	<tr class="gray-td">
	<td align="center"><%= simpleContent[39] %></td>
    <td align="center"><%= translatableContent[18] %></td>
	<td align="center"><%= simpleContent[40] %></td>
    <td align="center"><%= translatableContent[19] %></td>
	</tr>
	<tr class="gray-td">
	<td align="center"><%= simpleContent[41] %></td>
    <td align="center"><%= translatableContent[20] %></td>
	<td align="center"><%= simpleContent[42] %></td>
    <td align="center"><%= translatableContent[21] %></td>
	</tr>
	<tr class="gray-td">
	<td align="center"><%= simpleContent[43] %></td>
    <td align="center"><%= translatableContent[22] %></td>
	<td align="center"><%= simpleContent[44] %></td>
    <td align="center"><%= translatableContent[23] %></td>
	</tr>
</table>
<p><%= complexContent[213] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[214] %></legend>
    <p><%= complexContent[215] %></p>
</fieldset>
<div class="question">
    <div class="question-heading"><%= simpleContent[18] %></div>
    <ul class="question-list">
        <li><%= complexContent[216] %></li>
        <li><%= complexContent[217] %></li>
        <li><%= complexContent[218] %></li>
        <li><%= complexContent[219] %></li>
		<li><%= complexContent[220] %></li>
    </ul>
</div>
<h3><%= complexContent[221] %></h3>
<p>
<%= complexContent[222] %>
</p>
<p><%= complexContent[223] %>
</p>
<p><%= complexContent[224] %></p>
<div class="images">
<img src="images_light_10/figure_12.JPG"><br>
<%= complexContent[225] %>
</div>
<p><%= complexContent[226] %>
</p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[45] %></legend>
    <ul class="activity-list">
	<h5> <strong><%= complexContent[227] %></h5>
        <li><%= complexContent[228] %></li>
        <li><%= complexContent[229] %></li>
        <li><%= complexContent[230] %></li>
</ul>
</fieldset>
<p><%= complexContent[231] %></p>
<p><%= complexContent[232] %></p>
<p><%= complexContent[233] %></p>
<p><%= complexContent[234] %></p>
<p><%= complexContent[235] %></p>
<h3><%= complexContent[236] %></h3>
<p><%= complexContent[237] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[46] %></legend>
    <ul class="activity-list">
	    <li><%= complexContent[238] %></li>
        <li><%= complexContent[239] %></li>
        <li><%= complexContent[240] %></li>
		<li><%= complexContent[241] %></li>
		<li><%= complexContent[242] %></li>
		<li><%= complexContent[243] %></li>
		<li><%= complexContent[244] %></li>
</ul>
</fieldset>
<p><%= complexContent[245] %></p>
<h5><strong><%= complexContent[246] %></h5>
<table>
    <tr class="green-th">
        <th><%= complexContent[247] %></th>
        <th><%= complexContent[248] %> </th>
        <th><%= complexContent[249] %></th>
        <th><%= complexContent[250] %></th>
    </tr>
    <tr class="green-td">
        <td align="center"><%= simpleContent[3] %></td>
        <td align="center"><%= complexContent[251] %></sub></td>
        <td align="center"><%= complexContent[252] %></td>
        <td align="center"><%= complexContent[253] %></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= simpleContent[47] %></sub></td>
        <td align="center"><%= complexContent[254] %></sub></td>
        <td align="center"><%= simpleContent[5] %></td>
        <td align="center"><%= complexContent[255] %></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= simpleContent[48] %></sub></td>
        <td align="center"><%= simpleContent[49] %></sub></td>
        <td align="center"><%= simpleContent[7] %></td>
        <td align="center"><%= complexContent[256] %></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= complexContent[257] %></sub></td>
        <td align="center"><%= simpleContent[50] %></sub></td>
        <td align="center"><%= simpleContent[8] %></td>
        <td align="center"><%= complexContent[258] %></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= complexContent[259] %></sub></td>
        <td align="center"><%= simpleContent[3] %></td>
        <td align="center"><%= complexContent[260] %></td>
        <td align="center"><%= complexContent[261] %></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= complexContent[262] %></td>
        <td align="center"><%= complexContent[263] %></td> 
        <td align="center"><%= simpleContent[8] %></td>
        <td align="center"><%= complexContent[264] %></td>
    </tr>
</table>
<p><%= complexContent[265] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[51] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[266] %></li>
        <li><%= complexContent[267] %></li>
        <li><%= complexContent[268] %></li>
        <li><%= complexContent[269] %></li>
        <li><%= complexContent[270] %></li>
    </ul>
</fieldset>
<p><%= complexContent[271] %></p>
<h5><strong><%= complexContent[272] %></h5>
<table>
    <tr class="green-th">
        <th><%= complexContent[273] %></th>
        <th><%= complexContent[274] %> </th>
        <th><%= complexContent[275] %></th>
        <th><%= complexContent[276] %></th>
    </tr>
    <tr class="green-td">
        <td align="center"><%= simpleContent[3] %></td>
        <td align="center"><%= complexContent[277] %></sub></td>
        <td align="center"><%= complexContent[278] %></td>
        <td align="center"><%= complexContent[279] %></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= complexContent[280] %></td>
        <td align="center"><%= complexContent[281] %></td>
        <td align="center"><%= simpleContent[5] %></td>
        <td align="center"><%= complexContent[282] %></td>
    </tr>
</table>
<p><%= complexContent[283] %></p>
<h3><%= complexContent[284] %></h3>
<p><%= complexContent[285] %></p>
<ol type="i">
        <li><%= complexContent[286] %></li>
<div class="images">
<img src="images_light_10/figure_13.JPG"><br>
<%= simpleContent[52] %> 
</div>

        <li><%= complexContent[287] %></li>
<div class="images">
<img src="images_light_10/figure_14.JPG"><br>
<%= simpleContent[53] %> 
</div>
        <li><%= complexContent[288] %></li>
<div class="images">
<img src="images_light_10/figure_15.JPG"><br>
<%= simpleContent[54] %> 
</div>
        <li><%= complexContent[289] %></li>
</ol>

<div class="images">
<img src="images_light_10/figure_16.JPG"><br>
<%= complexContent[290] %> 
</div>
<div class="images">
<img src="images_light_10/figure_17.JPG"><br>
<%= complexContent[291] %>
</div>
<h3><%= complexContent[292] %></h3>
<p><%= complexContent[293] %>
</p>
<h3><%= complexContent[294] %></h3>
<p><%= complexContent[295] %></p>
<div class="equation"><%= complexContent[296] %><span style="margin-left:100px;"><%= translatableContent[24] %></span></div>
<p><%= complexContent[297] %></p>
<h4><%= simpleContent[19] %></h4>
<p><%= complexContent[298] %></p>
<div class="equation"><%= complexContent[299] %><span style="margin-left:100px;"><%= translatableContent[25] %></span></div>
<p><%= complexContent[300] %></p>
<div class="equation"><%= complexContent[301] %><span style="margin-left:100px;"><%= translatableContent[26] %></span></div>
<div class="example">
<div class="exam_no"><%= simpleContent[20] %></div>
<p><%= complexContent[302] %></p>
<div class="exam_no"><%= simpleContent[21] %></div>
<p><%= complexContent[303] %></p>
<p><%= complexContent[304] %><br>
<%= complexContent[305] %><br>
<%= complexContent[306] %></p>
<p><%= complexContent[307] %><br>
<%= complexContent[308] %><br>
<%= complexContent[309] %><br>
<%= complexContent[310] %><br>
<%= complexContent[311] %></p>
<p><%= complexContent[312] %><br>
<%= complexContent[313] %> 
</p>
<p><%= complexContent[314] %></p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[55] %></div>
<p><%= complexContent[315] %></p>
<div class="exam_no"><%= simpleContent[21] %></div>
<p><%= complexContent[316] %><br>
<%= complexContent[317] %><br>
<%= complexContent[318] %><br>
<%= complexContent[319] %><br>
<%= complexContent[320] %>
</p>
<div class="images">
<img src="images_light_10/example_4.JPG">
</div>
<p><%= complexContent[321] %></p>
<p><%= complexContent[322] %></p>
<p><%= complexContent[323] %> </p>
<p><%= complexContent[324] %><br>
<%= complexContent[325] %><br>
<%= complexContent[326] %></p>
<p><%= complexContent[327] %></p>
</div>
<p><%= complexContent[328] %></p>
<h3><%= complexContent[329] %></h3>
<p><%= complexContent[330] %></p>
<div class="equation"><%= complexContent[331] %><span style="margin-left:100px;"><%= translatableContent[27] %></span></div>
<p><%= complexContent[332] %></p>
<p><%= complexContent[333] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[334] %></legend>
    <p><%= complexContent[335] %>
</p>
<p><%= complexContent[336] %></p>
</fieldset> 
<div class="question">
    <div class="question-heading"><%= simpleContent[18] %></div>
    <ul class="question-list">
        <li><%= complexContent[337] %></li>
        <li><%= complexContent[338] %></li>
        <li><%= complexContent[339] %></li>
     </ul>
</div>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[340] %></legend>
    <ul class="what-learnt-list">
		<li><%= complexContent[341] %></li>
		<li><%= complexContent[342] %></li>
		<li><%= complexContent[343] %></li>
		<li><%= complexContent[344] %></li>
		<li><%= complexContent[345] %></li>
		<li><%= complexContent[346] %></li>
		<li><%= complexContent[347] %></li>
		<li><%= complexContent[348] %></li>
		<li><%= complexContent[349] %></li>
		<li><%= complexContent[350] %></li>
		<li><%= complexContent[351] %>
</li>
		<li><%= complexContent[352] %></li>
	</ul>
</fieldset>
<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[56] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[353] %>
            <ul class="exercise-sub-list">
                <li><%= simpleContent[33] %></li>
                <li><%= simpleContent[57] %></li>
                <li><%= simpleContent[58] %></li>
                <li><%= simpleContent[59] %></li>
            </ul>
        </li>
        <li><%= complexContent[354] %>
        <ul class="exercise-sub-list">
                <li><%= complexContent[355] %></li>
                <li><%= complexContent[356] %></li>
                <li><%= complexContent[357] %></li>
                <li><%= complexContent[358] %></li>
            </ul>
		</li>
		<li><%= complexContent[359] %>
        <ul class="exercise-sub-list">
                <li><%= complexContent[360] %></li>
                <li><%= complexContent[361] %></li>
                <li><%= simpleContent[3] %></li>
                <li><%= complexContent[362] %></li>
            </ul>
		</li>
		<li><%= complexContent[363] %>
        <ul class="exercise-sub-list">
                <li><%= simpleContent[60] %></li>
                <li><%= simpleContent[61] %></li>
                <li><%= complexContent[364] %></li>
                <li><%= complexContent[365] %></li>
            </ul>
		</li>
		<li><%= complexContent[366] %>
        <ul class="exercise-sub-list">
                <li><%= simpleContent[62] %></li>
                <li><%= simpleContent[63] %></li>
                <li><%= simpleContent[64] %></li>
                <li><%= complexContent[367] %></li>
            </ul>
		</li>
		<li><%= complexContent[368] %>
        <ul class="exercise-sub-list">
                <li><%= complexContent[369] %></li>
                <li><%= complexContent[370] %></li>
                <li><%= complexContent[371] %></li>
                <li><%= complexContent[372] %></li>
            </ul>
		</li>
		<li><%= complexContent[373] %></li>
		<li><%= complexContent[374] %>
        <ul class="exercise-sub-list">
                <li><%= complexContent[375] %></li>
                <li><%= complexContent[376] %></li>
                <li><%= simpleContent[65] %></li>
        </ul>
		<%= complexContent[377] %>
		</li>
		<li><%= complexContent[378] %></li>
		<li><%= complexContent[379] %></li>
		<li><%= complexContent[380] %></li>
		<li><%= complexContent[381] %></li>
		<li><%= complexContent[382] %></li>
		<li><%= complexContent[383] %></li>
		<li><%= complexContent[384] %></li>
		<li><%= complexContent[385] %></li>
		<li><%= complexContent[386] %>
</li>
    </ul>
</fieldset> 
</div> 
 </body>
</html>

