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
<p><%= complexContent[0] %></p>
<p><%= complexContent[1] %></p>
<h2><%= simpleContent[1] %></h2>
<p><%= complexContent[2] %></p>
<p><%= complexContent[3] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[4] %></li>
	<li><%= complexContent[5] %></li>
	<li><%= complexContent[6] %></li>
	<li><%= complexContent[7] %></li>
	<li><%= complexContent[8] %></li>
    </ul>
</fieldset>
<div class="images"><img src="images_gravitation_IX/figure_1.JPG"><br><%= complexContent[9] %></div>
<p><%= complexContent[10] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[11] %></legend>
	<h4 style="text-align:center"><%= complexContent[12] %></h4>
	<div class="images"><img src="images_gravitation_IX/circle_tangent.JPG"></div>
	<p><%= complexContent[13] %></p>
</fieldset>
<p><%= complexContent[14] %></p>
<p><%= complexContent[15] %></p>
<p><%= complexContent[16] %></p>
<p><%= complexContent[17] %></p>
<h3><%= complexContent[18] %></h3>
<p><%= complexContent[19] %></p>
<div class="images"><img src="images_gravitation_IX/figure_2.JPG"><br><%= complexContent[20] %></div>
<p><%= complexContent[21] %></p>
<div class="equation"> <%= complexContent[22] %>  <span style="margin-left:100px;"><%= translatableContent[0] %></span></div>
<p><%= complexContent[23] %></p>
<div class="equation"><%= complexContent[24] %></sup>  <span style="margin-left:100px;"><%= translatableContent[1] %></span></div>
<p><%= complexContent[25] %></p>
<div class="equation"><%= complexContent[26] %></sup> <span style="margin-left:100px;"><%= translatableContent[2] %></span></div>
<div class="equation"><%= complexContent[27] %> <span style="margin-left:100px;"><%= translatableContent[3] %></span></div>
<p><%= complexContent[28] %></p>
<div class="equation"><%= complexContent[29] %></div>
<div class="think">
	<div class="images"><img src="images_gravitation_IX/newton.JPG"><br><%= simpleContent[3] %></div>
    <p><%= complexContent[30] %></p>
<p><%= complexContent[31] %></p>
<p><%= complexContent[32] %></p>
</div>

<div class="person">
    <div class="person-heading"><%= complexContent[33] %></div>	
    <p><%= complexContent[34] %></p>
<ul class="exercise-list">
	<li><%= complexContent[35] %></li>
	<li><%= complexContent[36] %></li>
	<li><%= complexContent[37] %></li>
</ul>
<div class="images"><img src="images_gravitation_IX/image_1.JPG"><br><%= simpleContent[4] %></div>
<p><%= complexContent[38] %></p>
<p><%= complexContent[39] %></p>
<p><%= complexContent[40] %></p>
<p><%= complexContent[41] %></p>

</div>
<div class="equation"><%= complexContent[42] %> <span style="margin-left:100px;"><%= translatableContent[4] %></span></div>
<p><%= complexContent[43] %></p>
<p><%= complexContent[44] %></p>
<p><%= complexContent[45] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[46] %></legend>
	<p><%= complexContent[47] %></p>
	<hr>
	<h4 style="text-align:center"><%= simpleContent[5] %></h4>
	<p><%= complexContent[48] %></p>
</fieldset>
<div class="example">
<div class="exam_no"><%= simpleContent[6] %></div>
<p><%= complexContent[49] %></p>
<div class="exam_no"><%= simpleContent[7] %></div>
<p>
<p><%= complexContent[50] %></p>
<p><%= complexContent[51] %></p>
<p><%= complexContent[52] %></p>
<p><%= complexContent[53] %></p>
<p><%= complexContent[54] %></p>
<p>  <%= complexContent[55] %></p>
<p>  <%= complexContent[56] %></p>
<p><%= complexContent[57] %></sup></p>
<p><%= complexContent[58] %></p>
<p><%= complexContent[59] %></p>
<p><%= complexContent[60] %></sup></p>
<p><%= complexContent[61] %></p>
<p><%= complexContent[62] %></p>
</p>
</div>


<div class="question">
    <div class="question-heading"><%= simpleContent[8] %></div>
    <ul class="question-list">
        <li><%= complexContent[63] %></li>
        <li><%= complexContent[64] %></li>
    </ul>
</div>
<h3><%= complexContent[65] %></h3>
<p><%= complexContent[66] %></p>
<ul class="roman-small">
	<li><%= complexContent[67] %></li>
	<li><%= complexContent[68] %></li>
	<li><%= complexContent[69] %></li>
	<li><%= complexContent[70] %></li>
</ul>
<h2><%= complexContent[71] %></h2>
<p><%= complexContent[72] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[9] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[73] %></li>
	<li><%= complexContent[74] %></li>
	<li><%= complexContent[75] %></li>
    </ul>
</fieldset>
<p><%= complexContent[76] %></p>
<p><%= complexContent[77] %></p>
<div class="equation"><%= complexContent[78] %> <span style="margin-left:100px;"><%= translatableContent[5] %></span></div>

<p><%= complexContent[79] %></p>
<div class="equation"><%= complexContent[80] %></div>
<div class="equation"><%= complexContent[81] %> <span style="margin-left:100px;"><%= translatableContent[6] %></span></div>
<p><%= complexContent[82] %></p>
<p><%= complexContent[83] %></p>
<div class="equation"> <%= complexContent[84] %> <span style="margin-left:100px;"><%= translatableContent[7] %></span></div>
<div class="equation"><%= complexContent[85] %> <span style="margin-left:100px;"> <%= translatableContent[8] %></span></div>
<p><%= complexContent[86] %> </p>
<h3><%= complexContent[87] %></h3>
<p><%= complexContent[88] %></p>
<div class="equation"><%= complexContent[89] %></div>
<div class="equation"><%= complexContent[90] %></sup></div>
<div class="equation"><%= complexContent[91] %></div>
<p><%= complexContent[92] %></sup></p>
<h3><%= complexContent[93] %></h3>
<p><%= complexContent[94] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[10] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[95] %></li>
	<li><%= complexContent[96] %></li>
    </ul>
</fieldset>
<p><%= complexContent[97] %></p>
<p><%= complexContent[98] %></p>
<div class="equation"><%= complexContent[99] %> <span style="margin-left:100px"><%= translatableContent[9] %></span></div>
<div class="equation"><%= complexContent[100] %></sup> <span style="margin-left:100px"><%= translatableContent[10] %></span> </div>
<div class="equation"><%= complexContent[101] %> <span style="margin-left:100px"><%= translatableContent[11] %></span> </div>
<p><%= complexContent[102] %></p>
<p><%= complexContent[103] %></p>
<div class="example">
	<div class="exam_no"><%= simpleContent[11] %></div>
	<p><%= complexContent[104] %>
	<ul class="roman-small">
		<li><%= complexContent[105] %></li>
		<li><%= complexContent[106] %></li>
		<li><%= complexContent[107] %></li>
	</ul>	
	</p>
	<div class="exam_no"><%= simpleContent[7] %></div>
	<p>
		<%= complexContent[108] %><br>
		<%= complexContent[109] %></sup><br>
		<%= complexContent[110] %></sup><br>
		<%= complexContent[111] %><br>
		<ul class="roman-small">
		<li><p><%= complexContent[112] %></p>
		<p>           <%= complexContent[113] %></p>
		<p>             <%= complexContent[114] %></sup></p></li>
		<li><p><%= complexContent[115] %></p>
		<p> <%= complexContent[116] %></p>
		<p><%= complexContent[117] %></sup></p></li>
		<li><p><%= complexContent[118] %></sup></p>
		<p><%= complexContent[119] %></sup></p>
		<p><%= complexContent[120] %></sup></p>
		<p><%= complexContent[121] %></p></li>
		</ul>
		<p><%= simpleContent[12] %></p>
		<ul class="roman-small">
		<li><p><%= complexContent[122] %></sup></p></li>
		<li><p><%= complexContent[123] %></sup></li></p>
		<li><p><%= complexContent[124] %></p></li>
		</ul>	

	</p>
</div>

<div class="example">
	<div class="exam_no"><%= simpleContent[13] %></div>
	<p><%= complexContent[125] %></p>
	<div class="exam_no"><%= simpleContent[7] %></div>
	<p>
		<%= complexContent[126] %><br>
		<%= complexContent[127] %></sup><br>
		<%= complexContent[128] %></sup><br>
		<%= complexContent[129] %><br>
		<ul class="roman-small">
		<li><%= complexContent[130] %><br>
		<%= complexContent[131] %><br>
		<%= complexContent[132] %></sup><br>
		<%= complexContent[133] %></sup><br>
		<%= complexContent[134] %></sup></li>
		<li><%= complexContent[135] %><br>
		<%= complexContent[136] %><br>
		<%= complexContent[137] %></li>
		</ul>
		<p><%= simpleContent[12] %></p>
		<ul class="roman-small">
		<p><li><%= complexContent[138] %></li></p>
		<p><li><%= complexContent[139] %></li></p>
		</ul>
	</p>
</div>


<div class="question">
    <div class="question-heading"><%= simpleContent[8] %></div>
    <ul class="question-list">
        <li><%= complexContent[140] %></li>
        <li><%= complexContent[141] %></li>
    </ul>
</div>
<h2><%= simpleContent[14] %></h2>
<p><%= complexContent[142] %></p>
<h2><%= simpleContent[15] %></h2>
<p><%= complexContent[143] %></p>
<p><%= complexContent[144] %></p>
<div class="equation"><%= complexContent[145] %> <span style="margin-left:100px"><%= translatableContent[12] %></span></div>
<p><%= simpleContent[16] %></p>
<div class="equation"><%= complexContent[146] %> <span style="margin-left:100px"> <%= translatableContent[13] %></span></div>
<p><%= complexContent[147] %></p>
<div class="equation"><%= complexContent[148] %> <span style="margin-left:100px"><%= translatableContent[14] %></span></div>
<p><%= complexContent[149] %></p>
<p><%= complexContent[150] %></p>
<h3><%= complexContent[151] %></h3>
<p><%= complexContent[152] %></p>
<p><%= complexContent[153] %></p>
<p><%= complexContent[154] %></p>
<div class="equation"><%= complexContent[155] %> <span style="margin-left:100px"><%= translatableContent[15] %></span></div>
<p><%= complexContent[156] %></p>
<h4><%= simpleContent[17] %></h4>
<table>
	<tr class="blue-th">
		<th><%= simpleContent[18] %></th>
		<th><%= simpleContent[19] %></th>
		<th><%= simpleContent[20] %></th>
	</tr>
	<tr class="blue-td">
		<td><%= simpleContent[21] %></td>
		<td><%= complexContent[157] %></sup></td>
		<td><%= complexContent[158] %></sup></td>
	</tr>
	<tr class="blue-td">
		<td><%= simpleContent[22] %></td>
		<td><%= complexContent[159] %></sup></td>
		<td><%= complexContent[160] %></sup></td>
	</tr>

</table>
<p><%= complexContent[161] %></p>
<div class="equation"><%= complexContent[162] %> <span style="margin-left:100px"><%= translatableContent[16] %></span></div>
<p><%= complexContent[163] %></p>
<div class="equation"><%= complexContent[164] %></div>
<div class="equation"><%= complexContent[165] %> <span style="margin-left:100px"><%= translatableContent[17] %></span></div>
<div class="equation"><%= complexContent[166] %> <span style="margin-left:100px"><%= translatableContent[18] %></span></div>
<p><%= complexContent[167] %></p>
<div class="equation"><%= complexContent[168] %></div>
<div class="equation"><%= complexContent[169] %></div>
<p><%= complexContent[170] %></p>
<p><%= complexContent[171] %></p> 
<p><%= complexContent[172] %></p>
<div class="example">
	<div class="exam_no"><%= simpleContent[23] %></div>
	<p><%= complexContent[173] %></p>
	<div class="exam_no"><%= simpleContent[7] %></div>
	<p><%= complexContent[174] %><br>
	<%= complexContent[175] %></sup><br>
	<%= complexContent[176] %><br>
	<%= complexContent[177] %></sup><br>
	<%= complexContent[178] %></sup>
	</p>
</div>
<div class="example">
	<div class="exam_no"><%= simpleContent[24] %></div>
	<p><%= complexContent[179] %></p>
	<div class="exam_no"><%= simpleContent[7] %></div>
	<p><p><%= simpleContent[25] %><br>
	<%= complexContent[180] %><br>
	<%= simpleContent[26] %><br>
	<%= complexContent[181] %><br>
	<%= complexContent[182] %><br>
	<%= complexContent[183] %>
	</p>
</div>



<div class="question">
    <div class="question-heading"><%= simpleContent[8] %></div>
    <ul class="question-list">
        <li><%= complexContent[184] %></li>
        <li><%= complexContent[185] %></li>
    </ul>
</div>
<h2><%= complexContent[186] %></h2>
<p><%= complexContent[187] %></p>
<p><b><%= complexContent[188] %></p>
<p><%= complexContent[189] %></p>
<p><b><%= complexContent[190] %></p>
<div class="images"><img src="images_gravitation_IX/figure_3.JPG"><br><br><%= complexContent[191] %></div>
<p><b><%= complexContent[192] %></p>
<p><%= complexContent[193] %></p>
<p><%= complexContent[194] %></p>
<p><%= complexContent[195] %></p>
<p><%= complexContent[196] %> </p>
<div class="equation"><%= complexContent[197] %> <span style="margin-left:100px"><%= translatableContent[19] %></span></div>
<p><%= complexContent[198] %></p>
<p><%= complexContent[199] %></p>
<p><%= complexContent[200] %></p>

<div class="example">
	<div class="exam_no"><%= simpleContent[27] %></div>
	<p><%= complexContent[201] %>
	<div class="images"><img src="images_gravitation_IX/figure_4.JPG"><br><br><%= simpleContent[28] %></div>
	
	</p>
	<div class="exam_no"><%= simpleContent[7] %></div>
	<p>
	<%= complexContent[202] %><br>
	<%= complexContent[203] %><br>
	<%= complexContent[204] %><br>
	<%= simpleContent[26] %><br>
	<%= complexContent[205] %> <br>
	<%= complexContent[206] %></sup> <br>
	<%= complexContent[207] %><br>
	<%= complexContent[208] %><br>
	<%= complexContent[209] %><br>
	<%= complexContent[210] %></sup><br>
	<%= complexContent[211] %><br>
	<%= complexContent[212] %></sup><br>
	<%= complexContent[213] %><br><br>
	<%= complexContent[214] %><br>
	<%= complexContent[215] %><br>
	<%= complexContent[216] %><br>
	<%= complexContent[217] %></sup><br>
	<%= complexContent[218] %><br>
	<%= complexContent[219] %></sup><br>
	<%= complexContent[220] %></sup>
	<p><%= complexContent[221] %></p>
	</p>
</div>




<p><%= complexContent[222] %></p>
<h3><%= complexContent[223] %></h3>
<p><%= complexContent[224] %></p>
<h3><%= simpleContent[29] %></h3>
<p><%= complexContent[225] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[30] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[226] %></li>
<li><%= complexContent[227] %></li>
<li><%= complexContent[228] %></li>
<li><%= complexContent[229] %></li>
    </ul>
</fieldset>
<p><%= complexContent[230] %></p>
<p><%= complexContent[231] %></p>
<p><%= complexContent[232] %></p>
<h3><%= complexContent[233] %></h3>
<p><%= complexContent[234] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[31] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[235] %></li>
	<li><%= complexContent[236] %></li>
	<li><%= complexContent[237] %></li>
    </ul>
</fieldset>
<p><%= complexContent[238] %></p>
<div class="images"><img src="images_gravitation_IX/figure_5.JPG"><br><%= complexContent[239] %></div>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[32] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[240] %></li>
	<li><%= complexContent[241] %></li>
	<li><%= complexContent[242] %></li>
	<li><%= complexContent[243] %></li>
    </ul>
</fieldset>
<p><%= complexContent[244] %></p>
<p><%= complexContent[245] %></p>
<p><%= complexContent[246] %></p>
<div class="question">
    <div class="question-heading"><%= simpleContent[8] %></div>
    <ul class="question-list">
        <li><%= complexContent[247] %></li>
	<li><%= complexContent[248] %></li>
	<li><%= complexContent[249] %></li>
    </ul>
</div>
<h3><%= complexContent[250] %></h3>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[33] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[251] %></li>
	<li><%= complexContent[252] %></li>
	<li><%= complexContent[253] %></li>
	<li><%= complexContent[254] %></li>
	<div class="images"><img src="images_gravitation_IX/figure_6.JPG"><br><%= complexContent[255] %></div>
	<li><%= complexContent[256] %></li>
    </ul>
</fieldset>


<p><%= complexContent[257] %></p>
<p><%= complexContent[258] %></p>
<p><%= complexContent[259] %></p>
<p><%= complexContent[260] %></p>
<p><%= complexContent[261] %></p>
<div class="think">
<div class="images"><img src="images_gravitation_IX/archimedes.JPG"></div>
<p><%= complexContent[262] %></p>
<p><%= complexContent[263] %></p>

</div>
<p><%= complexContent[264] %></p>
<div class="question">
    <div class="question-heading"><%= simpleContent[8] %></div>
    <ul class="question-list">
        <li><%= complexContent[265] %></li>
	<li><%= complexContent[266] %></li>
    </ul>
</div>
<h2><%= complexContent[267] %></h2>
<p><%= complexContent[268] %></p>
<p><%= complexContent[269] %></p>
<div class="equation"><%= complexContent[270] %></div>
<p><%= complexContent[271] %></p>

<div class="example">
	<div class="exam_no"><%= simpleContent[34] %></div>
	<p><%= complexContent[272] %></p>
	<div class="exam_no"><%= simpleContent[7] %></div>
	<p><%= complexContent[273] %></p>
	<p><%= complexContent[274] %></p>
	<p><%= complexContent[275] %></p>
	<p><%= complexContent[276] %></p>
</div>


<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[277] %></legend>
<ul class="what-learnt-list">
	<li><%= complexContent[278] %></li>
	<li><%= complexContent[279] %></li>
	<li><%= complexContent[280] %></li>
	<li><%= complexContent[281] %></li>
	<li><%= complexContent[282] %></li>
	<li><%= complexContent[283] %></li>
	<li><%= complexContent[284] %></li>
	<li><%= complexContent[285] %></li>
	<li><%= complexContent[286] %></li>
</fieldset>
<fieldset class="exercise">
	<legend class="exercise-legend"><%= simpleContent[35] %></legend>
	<ul class="exercise-list">
	<li><%= complexContent[287] %></li>
	<li><%= complexContent[288] %></li>
	<li><%= complexContent[289] %></li>
	<li><%= complexContent[290] %></li>
	<li><%= complexContent[291] %></li>
	<li><%= complexContent[292] %></li>
	<ul class="roman-small">
		<li><%= complexContent[293] %></li>
		<li><%= complexContent[294] %></li>
		<li><%= complexContent[295] %></li>
	</ul>
	<li><%= complexContent[296] %></li>
	<li><%= complexContent[297] %></li>
	<li><%= complexContent[298] %></li>
	<li><%= complexContent[299] %></li>
	<li><%= complexContent[300] %></li>
	<li><%= complexContent[301] %></li>
	<li><%= complexContent[302] %></li>
	<ul class="roman-small">
	<li><%= complexContent[303] %></li>
	<li><%= complexContent[304] %></li>
	</ul>
	<li><%= complexContent[305] %></li>
	<li><%= complexContent[306] %></li>
	<li><%= complexContent[307] %></li>
	<li><%= complexContent[308] %></li>
	<li><%= complexContent[309] %></li>
	<ul class="exercise-sub-list">
	<li><%= complexContent[310] %></li>
	<li><%= complexContent[311] %></li>
	<li><%= complexContent[312] %></li>
	</ul>
	<li><%= complexContent[313] %></li>
	<li><%= complexContent[314] %></li>
	<li><%= complexContent[315] %></li>
	<li><%= complexContent[316] %></li>
	</fieldset>
</div>
</body>
</html>

