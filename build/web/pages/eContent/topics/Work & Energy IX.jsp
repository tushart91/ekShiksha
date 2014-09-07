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
<h1> <%= complexContent[0] %></h1>
<p><%= complexContent[1] %></p>
<p><%= complexContent[2] %></p>
<p><%= complexContent[3] %> </p>
<p><%= complexContent[4] %></p>
<h2><%= simpleContent[0] %></h2>
<p><%= complexContent[5] %></p>
<h3><%= complexContent[6] %></h3>
<p><%= complexContent[7] %></p>
<p><%= complexContent[8] %></p>
<p><%= complexContent[9] %></p>
<p><%= complexContent[10] %></p>
<p><%= complexContent[11] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[1] %></legend>
    <ul class="activity-list">
	<li> <%= complexContent[12] %>
	<ul class="activity-sub-list">
	<li><%= complexContent[13] %></li>
	<li><%= complexContent[14] %></li>
	<li><%= complexContent[15] %></li>
	</ul>
	</li>
    </ul>
</fieldset>		
<h3><%= complexContent[16] %></h3>
<p><%= complexContent[17] %></p>
<p><%= complexContent[18] %></p>
<p><%= complexContent[19] %></p>
<p><%= complexContent[20] %></p>
<p><%= complexContent[21] %></p>
<p><%= complexContent[22] %> </p>
<p><%= complexContent[23] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[24] %></li>
 	<li><%= simpleContent[3] %></li>
	<li><%= complexContent[25] %></li>
	<li><%= complexContent[26] %></li>
	<li><%= complexContent[27] %></li>
	<li><%= complexContent[28] %></li>
	<li><%= complexContent[29] %></li>
    </ul>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[4] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[30] %></li>
<li><%= complexContent[31] %></li>
	<li><%= complexContent[32] %></li>
	<li><%= complexContent[33] %></li>
    </ul>
</fieldset>
<h3><%= complexContent[34] %></h3
><p><%= complexContent[35] %></p>
<p><%= complexContent[36] %></p>
<p><%= complexContent[37] %></p>
<div class="equation"><%= complexContent[38] %><span style="margin-left:100px;"><%= translatableContent[0] %></span></div><br>
<div class="images"><img src="images_work_energy_IX/figure_1.JPG"><br><%= simpleContent[5] %> </div>
<p><%= complexContent[39] %></p>
<p><%= complexContent[40] %></p>
<p><%= complexContent[41] %></p>
<div class="example">
<div class="exam_no"><%= simpleContent[6] %></div>
<p><%= complexContent[42] %> </p>
<div class="images"><img src="images_work_energy_IX/figure_2.JPG"><br><%= simpleContent[7] %></div>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[8] %></div>
    <ul class="question-list">
        <li><%= complexContent[43] %>
		</li>
		<div class="images"><img src="images_work_energy_IX/figure_3.JPG"><br><%= simpleContent[9] %> </div>
    </ul>
</div>

<p><%= complexContent[44] %></p>
<div class="images"><img src="images_work_energy_IX/figure_4.JPG"><br><%= simpleContent[10] %></div>
<p><%= complexContent[45] %></p>
   
<p><%= complexContent[46] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[11] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[47] %></li>
 	<li><%= complexContent[48] %></li>
	<li><%= complexContent[49] %></li>
	<li><%= simpleContent[12] %></li>
    </ul>
</fieldset>
<p><%= complexContent[50] %></p>
<div class="example">
<div class="exam_no"><%= simpleContent[13] %></div>
<p><%= complexContent[51] %></p>
<div class="exam_no"><%= simpleContent[14] %></div>
<p><p><%= complexContent[52] %><br>
<%= complexContent[53] %><br>
<%= complexContent[54] %><br>
<%= complexContent[55] %><br>
<%= complexContent[56] %><br>
<%= complexContent[57] %><br>
<%= complexContent[58] %><br>
</p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[8] %></div>
    <ul class="question-list">
        <li><%= complexContent[59] %></li>
		<li><%= complexContent[60] %></li>
		<li><%= complexContent[61] %></li>
		<li><%= complexContent[62] %></li>
    </ul>
</div>
<h2><%= simpleContent[15] %></h2>
<p><%= complexContent[63] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[16] %></legend>
    <ul class="activity-sub-list">
		<li><%= complexContent[64] %></li>
		<li><%= complexContent[65] %></li>
		<li><%= complexContent[66] %></li>
   </ul>
</fieldset>
<p><%= complexContent[67] %></p>
<p><%= complexContent[68] %></p>
<p><%= complexContent[69] %></p>
<h3><%= complexContent[70] %></h3>
<p><%= complexContent[71] %></p>
<div class="person">
    <div class="person-heading"><%= complexContent[72] %></div>
    <p><%= complexContent[73] %></p>
		<p><%= complexContent[74] %></p>
		<div class="images"><img src="images_work_energy_IX/joule.JPG"></div>
</div>
<h3><%= complexContent[75] %></h3>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[17] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[76] %></li>
<li><%= complexContent[77] %></li>
<li><%= complexContent[78] %></li>
<li><%= complexContent[79] %></li>
<li><%= complexContent[80] %></li>
<li><%= complexContent[81] %></li>
<li><%= complexContent[82] %></li>
<li><%= complexContent[83] %></li>
<li><%= complexContent[84] %></li>
   </ul>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[18] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[85] %></li>
<li><%= complexContent[86] %></li>
<li><%= complexContent[87] %></li>
<div class="images"><img src="images_work_energy_IX/figure_5.JPG"><br><%= simpleContent[19] %></div>
<li><%= complexContent[88] %></li>
<li><%= complexContent[89] %></li>
<li><%= complexContent[90] %></li>
<li><%= complexContent[91] %></li>
<li><%= complexContent[92] %></li>
<li><%= complexContent[93] %></li>
<li><%= complexContent[94] %></li>
   </ul>
</fieldset>
<p><%= complexContent[95] %></p>
<p><%= complexContent[96] %></p>
<p><%= complexContent[97] %></p>
<p><%= complexContent[98] %></p>
<p><%= complexContent[99] %></p>
<p><%= complexContent[100] %></p>
<div class="equation"><%= complexContent[101] %></div>
<p><%= simpleContent[20] %></p>
<div class="equation"><%= simpleContent[21] %><span style="margin-left:100px;"><%= translatableContent[1] %></span></div>
<p><%= complexContent[102] %></p>
<div class="equation"><%= complexContent[103] %></div>
<div class="equation"><%= complexContent[104] %><span style="margin-left:100px;"><%= translatableContent[2] %></span></div>
<p><%= complexContent[105] %></p>
<div class="equation"><%= simpleContent[22] %></sup><span style="margin-left:100px;"><%= translatableContent[3] %></span></div>

<p><%= complexContent[106] %></p>
<p><%= complexContent[107] %></sup></p>
<p><%= complexContent[108] %></p>
<div class="equation"><%= complexContent[109] %></sup><span style="margin-left:100px;"><%= translatableContent[4] %></span></div>
<div class="example">
<div class="exam_no"><%= simpleContent[23] %></div>
<p><%= complexContent[110] %></p>
<div class="exam_no"><%= simpleContent[14] %></div>
<p>
<%= complexContent[111] %><br>
<%= complexContent[112] %></sup><br>
<%= complexContent[113] %></sup><br>
<%= translatableContent[5] %><br>
<%= complexContent[114] %>
</p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[24] %></div>
<p><%= complexContent[115] %></p>
<div class="exam_no"><%= simpleContent[14] %></div>
<p><%= complexContent[116] %><br>
<%= complexContent[117] %></sup><br>
<%= complexContent[118] %> <br>
<%= complexContent[119] %><br>
<%= complexContent[120] %><br>
<%= complexContent[121] %></sup><br>
<%= complexContent[122] %></sup><br>
<%= complexContent[123] %><br>
<%= complexContent[124] %></sup><br>
<%= complexContent[125] %></sup><br>
<%= complexContent[126] %><br>
<%= complexContent[127] %><br>
<%= complexContent[128] %></sup><br>
<%= complexContent[129] %><br>
<%= complexContent[130] %><br>
 <%= complexContent[131] %></sub><br>
 <%= complexContent[132] %>
</p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[8] %></div>
    <ul class="question-list">
        <li><%= complexContent[133] %></li>
		<li><%= complexContent[134] %></li>
		<li><%= complexContent[135] %></li>
		<li><%= complexContent[136] %></li> 
		<li><%= complexContent[137] %></li>
    </ul>
</div>
<h3><%= complexContent[138] %></h3>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[25] %></legend>
    <ul class="activity-sub-list">
	<li> <%= complexContent[139] %></li>
	<li><%= complexContent[140] %></li>
	<li><%= complexContent[141] %></li>
	<li><%= simpleContent[26] %></li>
	<li><%= complexContent[142] %></li>
	<li><%= complexContent[143] %></li>
   </ul>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[27] %></legend>
    <ul class="activity-sub-list">
	<li> <%= complexContent[144] %></li>
        <li><%= complexContent[145] %></li>
	<div class="images"><img src="images_work_energy_IX/spring.JPG"></div>
	<li><%= simpleContent[28] %></li>
	<li><%= complexContent[146] %></li>
	<li><%= complexContent[147] %></li>
   </ul>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[29] %></legend>
    <ul class="activity-sub-list">
	<li><%= complexContent[148] %></li>
	<li><%= complexContent[149] %></li>
	<li><%= complexContent[150] %></li>
	<li><%= complexContent[151] %></li>
	<li><%= complexContent[152] %></li>
	<li><%= complexContent[153] %></li>
   </ul>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[30] %></legend>
    <ul class="activity-sub-list">
	<li><%= complexContent[154] %></li>
	<li><%= complexContent[155] %></li>
	<li><%= complexContent[156] %></li>
   </ul>
</fieldset>

<p><%= complexContent[157] %></p>
<p><%= complexContent[158] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[31] %></legend>
    <ul class="activity-sub-list">
	<li><%= complexContent[159] %></li>
	<li><%= complexContent[160] %></li>
	<li><%= complexContent[161] %></li>
	<li><%= complexContent[162] %></li>
	<li><%= complexContent[163] %></li>
   </ul>
   <div class="images"><img src="images_work_energy_IX/figure_6.JPG"><br><%= complexContent[164] %></div>
</fieldset>

<h3><%= complexContent[165] %></h3>
<p><%= complexContent[166] %></p>
<p><%= complexContent[167] %></p>
<p><%= complexContent[168] %></p>
<div class="images"><img src="images_work_energy_IX/figure_7.JPG"><br><%= simpleContent[32] %></div>
<p><%= complexContent[169] %>
</p>
<div class="equation"><%= complexContent[170] %></div>
<div class="equation"><%= complexContent[171] %></div>
<div class="equation"><%= simpleContent[33] %><span style="margin-left:100px;"><%= translatableContent[6] %></span></div>
<p><%= complexContent[172] %></p>
<div class="equation"><%= complexContent[173] %><span style="margin-left:100px;"><%= translatableContent[7] %></span></div>

<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[174] %></legend>
   <p><%= complexContent[175] %></p>
</fieldset>
<p><%= complexContent[176] %></p>
<div class="images"><img src="images_work_energy_IX/figure_8.JPG"><br><%= simpleContent[34] %></div>
<div class="example">
<div class="exam_no"><%= simpleContent[35] %></div>
<p><%= complexContent[177] %></p>
<div class="exam_no"><%= simpleContent[14] %></div>
<p><%= complexContent[178] %><br>
<%= complexContent[179] %><br>
<%= complexContent[180] %><br>
<%= complexContent[181] %><br>
<%= complexContent[182] %><br>
<%= complexContent[183] %><br>
<%= complexContent[184] %><br>
<%= complexContent[185] %>
</p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[36] %></div>
<p><%= complexContent[186] %></p>
<div class="exam_no"><%= simpleContent[14] %></div>
<p><%= complexContent[187] %><br>
<%= complexContent[188] %><br>
<%= complexContent[189] %><br>
<%= complexContent[190] %><br>
<%= complexContent[191] %> <br>
<%= complexContent[192] %><br></p>
</div>

<h3><%= complexContent[193] %></h3>
<p><%= complexContent[194] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[37] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[195] %></li>
	<li><%= complexContent[196] %></li>
	<li><%= complexContent[197] %>
	<ul class="activity-sub-list">
	 <li><%= complexContent[198] %></li>
	 <li> <%= complexContent[199] %></li>
	 <li><%= complexContent[200] %></li>
	 <li><%= complexContent[201] %></li>
	 <li><%= complexContent[202] %></li>
   </ul>
   </li>
   </ul>
   
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[38] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[203] %></li>
	<li><%= complexContent[204] %></li>
	<li><%= complexContent[205] %></li>
   </ul>
</fieldset>
<h3><%= complexContent[206] %></h3>
<p><%= complexContent[207] %></p>
<p><%= complexContent[208] %></p>

<p><%= complexContent[209] %></p>
<div class="equation"><%= complexContent[210] %><span style="margin-left:100px;"><%= translatableContent[7] %></span></div>

<p><%= complexContent[211] %></p>
<p><%= complexContent[212] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[39] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[213] %></li>
	<table style="border:none;">
		<tr class="blue-th">
			<th><%= complexContent[214] %><br><%= translatableContent[8] %></th>
			<th><%= complexContent[215] %><br><%= translatableContent[9] %></th>
			<th><%= complexContent[216] %><br><%= translatableContent[9] %></th>
			<th><%= complexContent[217] %></sub><br><%= translatableContent[9] %></th>
		</tr>
		<tr class="blue-td">
			<td><%= translatableContent[10] %></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="blue-td">
			<td><%= translatableContent[11] %></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="blue-td">
			<td><%= translatableContent[12] %></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="blue-td">
			<td><%= translatableContent[13] %></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="blue-td">
			<td><%= complexContent[218] %></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
<li><%= complexContent[219] %></li>
   </ul>
</fieldset>
<div class="think">
<div class="think-heading"><%= complexContent[220] %></div>
<p><%= complexContent[221] %></p>
</div> 

<h3><%= complexContent[222] %></h3>
<p><%= complexContent[223] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[40] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[224] %></li>
	<li><%= complexContent[225] %></li>
	<li><%= complexContent[226] %></li>
	<li><%= complexContent[227] %></li>
    </ul>
</fieldset>
<p><%= complexContent[228] %></p>
<div class="equation"><%= complexContent[229] %></div>
<div class="equation"><%= complexContent[230] %><span style="margin-left:100px;"><%= translatableContent[14] %></span></div>

<p><%= complexContent[231] %></p>
<p><%= complexContent[232] %></p>
<p><%= complexContent[233] %></p>
<p><%= complexContent[234] %><br>
<%= complexContent[235] %><br>
<%= complexContent[236] %></p>
<p><%= complexContent[237] %></p>
<div class="example">
<div class="exam_no"><%= simpleContent[41] %> </div>
<p><%= complexContent[238] %></p>
<div class="exam_no"><%= simpleContent[14] %></div>
<p><%= complexContent[239] %><br>
<%= complexContent[240] %><br>
<%= complexContent[241] %><br>
<%= complexContent[242] %><br>
<%= complexContent[243] %><br>
<%= complexContent[244] %><br>
<%= complexContent[245] %> <br>       
<%= complexContent[246] %><br>   
<%= complexContent[247] %></p>
<p><%= complexContent[248] %><br>
<%= complexContent[249] %><br>
<%= complexContent[250] %>  <br>
 <%= complexContent[251] %>    <br>
<%= complexContent[252] %><br>       
<%= complexContent[253] %><br>        
 <%= complexContent[254] %><br>
<%= complexContent[255] %><br>
<%= complexContent[256] %></p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[42] %> </div>
<p><%= complexContent[257] %></p>
<div class="exam_no"><%= simpleContent[14] %></div>
<p>
<%= complexContent[258] %><br>
<%= complexContent[259] %><br>
<%= complexContent[260] %><br>
<%= complexContent[261] %><br>
<%= complexContent[262] %><br>
<%= complexContent[263] %><br>
<%= complexContent[264] %><br>
<%= simpleContent[43] %><br>
<%= complexContent[265] %><br>
<%= translatableContent[15] %><br>
<%= complexContent[266] %><br>
</p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[8] %></div>
    <ul class="question-list">
        <li><%= complexContent[267] %></li>
		<li><%= complexContent[268] %></li>
		<li><%= complexContent[269] %></li>
		<li><%= complexContent[270] %></li>
    </ul>
</div>
<h3><%= complexContent[271] %></h3>
<p><%= complexContent[272] %> </p>
<p><%= complexContent[273] %></p>
<p><%= complexContent[274] %><br>
<%= complexContent[275] %><br>
<%= complexContent[276] %><br>
<%= complexContent[277] %></p>
<p><%= complexContent[278] %></p>
<div class="example">
<div class="exam_no"><%= simpleContent[44] %></div>
<p><%= complexContent[279] %></p>
<div class="exam_no"><%= simpleContent[14] %></div>
<p>
<%= complexContent[280] %><br>
<%= complexContent[281] %><br>
<%= complexContent[282] %><br>
<%= complexContent[283] %><br>
<%= complexContent[284] %><br>
<%= complexContent[285] %><br>
<%= complexContent[286] %><br>
<%= complexContent[287] %><br>
</p>
</div>


<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[45] %></legend>
    <ul class="activity-list">
	<li><%= complexContent[288] %></li>
	<li><%= complexContent[289] %></li>
	<li><%= complexContent[290] %></li>
	<li><%= complexContent[291] %></li>
	<li><%= complexContent[292] %></li>
	<li><%= complexContent[293] %></li>
	<li><%= complexContent[294] %></li>
	<li><%= complexContent[295] %></li>
    </ul>
</fieldset>
<fieldset class="what-learnt">
	<legend class="what-learnt-legend"><%= complexContent[296] %></legend>
	<ul class="what-learnt-list">
		<li><%= complexContent[297] %></li>
		<li><%= complexContent[298] %></li>
		<li><%= complexContent[299] %></li>
		<li><%= complexContent[300] %></sup></li>   
		<li><%= complexContent[301] %></li>
		<li><%= complexContent[302] %></li>
		<li><%= complexContent[303] %></li>
		<li><%= complexContent[304] %></li>
		<li><%= complexContent[305] %></li>
	</ul>
</fieldset>
<fieldset class="exercise">
	<legend class="exercise-legend"><%= simpleContent[46] %></legend>
	<ul class="exercise-sub-list">
	<li><%= complexContent[306] %></li>
	<ul class="exercise-sub-list">
		<li><%= complexContent[307] %></li>
		<li><%= complexContent[308] %></li>
		<li><%= complexContent[309] %></li>
		<li><%= complexContent[310] %></li>
		<li><%= complexContent[311] %></li>
		<li><%= complexContent[312] %></li>
		<li><%= complexContent[313] %></li>
	</ul>
	<li><%= complexContent[314] %></li>
	<li><%= complexContent[315] %></li>
	
	<li><%= complexContent[316] %></li>
	
	<li><%= complexContent[317] %></li>
	
	<li><%= complexContent[318] %></li>
	
	<li><%= complexContent[319] %></li>
	
	<li><%= complexContent[320] %></li>
	
	<li><%= complexContent[321] %></li>
	<li><%= complexContent[322] %></li>
	
	<li><%= complexContent[323] %></li>
	
	<li><%= complexContent[324] %></li>
	
	<li><%= complexContent[325] %></li>
	
	<li><%= complexContent[326] %></li>
	
	<li><%= complexContent[327] %></li>
	
	<li><%= complexContent[328] %></li>
	
	<li><%= complexContent[329] %></li>
	
	<li><%= complexContent[330] %></li>
	
	<div class="images"><img src="images_work_energy_IX/image_1.JPG"></div>
	
	<li><%= complexContent[331] %></li>
	
	<li><%= complexContent[332] %></li>
	
	<li><%= complexContent[333] %></li>
	</ul>
</fieldset>
</div>
</body>
</html>

