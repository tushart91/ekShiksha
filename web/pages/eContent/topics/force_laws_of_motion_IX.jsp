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
		<p><%= complexContent[2] %></p>
		<div class="images"><img src="images_force_laws_motion_IX/figure_1.JPG"><br><%= complexContent[3] %></div>
		<p><%= complexContent[4] %></p>
		<p><%= complexContent[5] %></p>
		<div class="images"><img src="images_force_laws_motion_IX/figure_2.JPG"><br><%= complexContent[6] %><br><%= complexContent[7] %></div>
		<h2><%= complexContent[8] %></h2>
		<p><%= complexContent[9] %></p>
		<div class="images"><img src="images_force_laws_motion_IX/figure_3.JPG"><br><%= complexContent[10] %></div>
		<p><%= complexContent[11] %></p>
		<p><%= complexContent[12] %></p>
		<div class="images"><img src="images_force_laws_motion_IX/figure_4.JPG"><br><%= simpleContent[0] %></div>
		<h2><%= complexContent[13] %></h2>
		<p><%= complexContent[14] %></p>
		<div class="images"><img src="images_force_laws_motion_IX/figure_5.JPG"><br><%= complexContent[15] %></div>
		<p><%= complexContent[16] %></p>
		<p><%= complexContent[17] %></p>
		<p><%= complexContent[18] %></p>
		<p><%= complexContent[19] %></p>
		<div class="person">
			<div class="person-heading"><%= complexContent[20] %></div>
			<p><%= complexContent[21] %></p>
		    <p><%= complexContent[22] %></p>
			<p><%= complexContent[23] %></p>
			<p><%= complexContent[24] %></p>
		    <div class="images"><img src="images_force_laws_motion_IX/galileo.JPG"></div>
		</div>
		<p><%= complexContent[25] %></p>
		<fieldset class="activity">
		<legend class="activity-legend"><%= simpleContent[1] %></legend>
		<ul class="activity-list">
			<li><%= complexContent[26] %></li>
			<li><%= complexContent[27] %></li>
			<div class="images"><img src="images_force_laws_motion_IX/figure_6.JPG"><br><%= complexContent[28] %></div>
		</ul>
	    </fieldset>
	    <fieldset class="activity">
		<legend class="activity-legend"><%= simpleContent[2] %></legend>
		<ul class="activity-list">
			<li><%= complexContent[29] %></li>
			<li><%= complexContent[30] %></li>
			<li><%= complexContent[31] %></li>
			<div class="images"><img src="images_force_laws_motion_IX/figure_7.JPG"><%= complexContent[32] %></div>
		</ul>
	    </fieldset>
		<fieldset class="activity">
		<legend class="activity-legend"><%= simpleContent[3] %></legend>
		<ul class="activity-list">
			<li><%= complexContent[33] %></li>
			<li><%= complexContent[34] %></li>
			<li><%= complexContent[35] %></li>
		</ul>
	    </fieldset>
		
		<p><%= complexContent[36] %></p>
		<h2><%= complexContent[37] %></h2>
		<p><%= complexContent[38] %></p>
		<div class="question">
			<div class="question-heading"><%= simpleContent[4] %></div>
			<ul class="question-list">
				<li><%= complexContent[39] %></li>
				<li><%= complexContent[40] %></li>
				<li><%= complexContent[41] %></li>
				<li><%= complexContent[42] %></li>
			</ul>
		</div>
		<h2><%= complexContent[43] %></h2>
		<p><%= complexContent[44] %></p>
		<div class="equation"><%= complexContent[45] %><span style="margin-left:100px;"><%= translatableContent[0] %></span></div>
		<p><%= complexContent[46] %></p>
		<p><%= complexContent[47] %></p>
		<p><%= complexContent[48] %></p>
		<h3><%= complexContent[49] %></h3>
		<p><%= complexContent[50] %></p>
		<p><%= complexContent[51] %><br> <%= complexContent[52] %></sub><br> <%= complexContent[53] %><br> <%= complexContent[54] %></p>
		<p><%= complexContent[55] %></p>
		<p><%= complexContent[56] %></p>
		<div class="equation"><%= complexContent[57] %><span style="margin-left:100px;"><%= translatableContent[1] %></span></div>
		<div class="equation"> <%= simpleContent[5] %><span style="margin-left:100px;"><%= translatableContent[2] %></span></div>
		<p><%= complexContent[58] %></p>
		<p><%= complexContent[59] %></p>
		<p><%= complexContent[60] %></p>
		<div class="equation"><%= complexContent[61] %><span style="margin-left:100px;"><%= translatableContent[3] %></span></div>
		<p><%= complexContent[62] %></p>
		<p><%= complexContent[63] %></p>
		<div class="images"><img src="images_force_laws_motion_IX/figure_8.JPG"><br><%= complexContent[64] %></div>
		<p><%= complexContent[65] %></p>
		<p><%= complexContent[66] %></p>
		<div class="equation" style="letter-spacing:2;"><%= complexContent[67] %><span style="margin-left:100px;"><%= translatableContent[4] %></span></div>
		<div class="equation"><%= complexContent[68] %></div>
		<p><%= complexContent[69] %></p>
		<div class="example">
<div class="exam_no"><%= simpleContent[6] %></div>
<p><%= complexContent[70] %></p>
<div class="exam_no"><%= simpleContent[7] %></div>
<p><%= complexContent[71] %><br>
<%= complexContent[72] %>
</p>
<div class="equation"><%= complexContent[73] %></div>
<p><%= complexContent[74] %></p>
<div class="equation"><%= complexContent[75] %></div>
<p><%= complexContent[76] %></p>
<div class="equation"><%= complexContent[77] %></div>
<p><%= complexContent[78] %></p>
<div class="equation"><%= complexContent[79] %></sup></div>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[8] %></div>
<p><%= complexContent[80] %></p>
<div class="exam_no"><%= simpleContent[7] %></div>
<p><%= complexContent[81] %><br>
<%= complexContent[82] %></sup><br>
<%= complexContent[83] %><br>
<%= complexContent[84] %><br>
 	<%= complexContent[85] %>
</p>
<p><%= complexContent[86] %></p>
</div>		
<div class="example">
<div class="exam_no"><%= simpleContent[9] %></div>
<p><%= complexContent[87] %></p>
<div class="exam_no"><%= simpleContent[7] %></div>
<p>
<%= complexContent[88] %><br>
<%= complexContent[89] %><br>
<%= complexContent[90] %><br>
<%= complexContent[91] %></sup><br>
<%= complexContent[92] %><br>
<%= complexContent[93] %> <br><%= complexContent[94] %><br>
<%= complexContent[95] %><br>
<%= complexContent[96] %>
</p>
<p><%= complexContent[97] %></p>
</div>					
<div class="example">
<div class="exam_no"><%= simpleContent[10] %></div>
<p><%= complexContent[98] %> </p>
<div class="exam_no"><%= simpleContent[7] %></div>
<p>
<%= complexContent[99] %><br>
<%= complexContent[100] %><br>
<%= complexContent[101] %><br>
<%= complexContent[102] %><br>
<%= complexContent[103] %><br>
<%= complexContent[104] %><br>
<%= complexContent[105] %><br>
<%= complexContent[106] %><br>
</p>
<p><%= complexContent[107] %> <br><%= complexContent[108] %><br>
</p>
</div>			

<div class="example">
<div class="exam_no"><%= simpleContent[11] %></div>
<p><%= complexContent[109] %></p>
<div class="images"><img src="images_force_laws_motion_IX/figure_9.JPG"><br><%= simpleContent[12] %></div>
<p><%= complexContent[110] %></p>
<div class="exam_no"><%= simpleContent[7] %></div>
<p>
<%= complexContent[111] %></p>
<p>
<%= complexContent[112] %><br>
<%= complexContent[113] %><br>
  <%= complexContent[114] %><br>
  <%= complexContent[115] %><br>
<%= complexContent[116] %>
</p>
<p><%= complexContent[117] %></p>
</div>				

<h2><%= complexContent[118] %></h2>
<p><%= complexContent[119] %></p>		
<p><%= complexContent[120] %></p>
<div class="images"><img src="images_force_laws_motion_IX/figure_10.JPG"><br><%= complexContent[121] %></div>
<p><%= complexContent[122] %></p>
<p><%= complexContent[123] %></p>
<p><%= complexContent[124] %></p>
<div class="images"><img src="images_force_laws_motion_IX/figure_11.JPG"><br><%= complexContent[125] %></div>
<div class="images"><img src="images_force_laws_motion_IX/figure_12.JPG"><br><%= complexContent[126] %></div>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[13] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[127] %></li>
        <li><%= complexContent[128] %></li>
        <li><%= complexContent[129] %></li>
        <li><%= complexContent[130] %></li>
    </ul>
	<div class="images"><img src="images_force_laws_motion_IX/figure_13.JPG"><br><%= simpleContent[14] %></div>
</fieldset>
<p><%= complexContent[131] %></p>
<p><%= complexContent[132] %></p>
<h2><%= complexContent[133] %></h2>
<p><%= complexContent[134] %></p>
<div class="images"><img src="images_force_laws_motion_IX/figure_14.JPG"><br><%= complexContent[135] %></div>
<p><%= complexContent[136] %></p>
<p><%= complexContent[137] %></p>  
<p><%= complexContent[138] %></p>
<div class="equation" style="letter-spacing:2;"><%= complexContent[139] %></sub><span style="margin-left:100px;"><%= translatableContent[5] %></span></div>
<div class="equation" style="letter-spacing:2;"><%= complexContent[140] %></div>
<p><%= simpleContent[15] %></p>
<div class="equation" style="letter-spacing:2;"><%= complexContent[141] %></sub><span style="margin-left:100px;"><%= translatableContent[6] %></span></div>
<p><%= complexContent[142] %></p>
<p><%= complexContent[143] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[16] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[144] %></li>
        <li><%= complexContent[145] %></li>
        <li><%= complexContent[146] %></li>
        <li><%= complexContent[147] %></li>
        <li><%= complexContent[148] %></li>
    </ul>
	<div class="images"><img src="images_force_laws_motion_IX/figure_15.JPG"><br><%= simpleContent[17] %> </div>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[18] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[149] %></li>
        <li><%= complexContent[150] %></li>
        <li><%= complexContent[151] %></li>
        <li><%= complexContent[152] %>
		<div class="images"><img src="images_force_laws_motion_IX/figure_16.JPG"><br><%= simpleContent[19] %></div>
		</li>
        <li><%= complexContent[153] %></li>
    </ul>
</fieldset>
<div class="example">
<div class="exam_no"><%= simpleContent[20] %></div>
<p><%= complexContent[154] %></p>
<div class="exam_no"><%= simpleContent[7] %></div>
<p><%= complexContent[155] %></p>
<p><%= complexContent[156] %><br>
<%= complexContent[157] %></sup><br>
<%= complexContent[158] %></sup>
</p>
<p><%= complexContent[159] %><br>
<%= complexContent[160] %><br>
<%= complexContent[161] %></sup><br>
<%= complexContent[162] %></sup>
</p>
<p><%= complexContent[163] %><br>
<%= complexContent[164] %><br>
<%= complexContent[165] %><br>
 <%= complexContent[166] %>
</p>
<p><%= complexContent[167] %></p>
<div class="images"><img src="images_force_laws_motion_IX/figure_17.JPG"><br><%= complexContent[168] %></div>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[21] %></div>
<p><%= complexContent[169] %></p>

<div class="exam_no"><%= simpleContent[7] %></div>
<p><%= complexContent[170] %></p>
<p><%= complexContent[171] %><br>
<%= complexContent[172] %></sup><br>
<%= complexContent[173] %>
</p>
<p><%= complexContent[174] %><br>
<%= complexContent[175] %></sup><br>
<%= complexContent[176] %></sup>
</p>
<p><%= complexContent[177] %></p>
<p><%= complexContent[178] %><br> <%= complexContent[179] %></p>
<p><%= complexContent[180] %></p>
</div>
<div class="images"><img src="images_force_laws_motion_IX/figure_18.JPG"><br><%= complexContent[181] %></div>
<div class="example">
<div class="exam_no"><%= simpleContent[22] %></div>
<p><%= complexContent[182] %>
</p>

<div class="exam_no"><%= simpleContent[7] %></div>
<div class="images"><img src="images_force_laws_motion_IX/figure_19.JPG"><br><%= complexContent[183] %></div>
<p><%= complexContent[184] %></p>
<p><%= complexContent[185] %><br>
<%= complexContent[186] %>
</p>
<p><%= complexContent[187] %><br>
<%= complexContent[188] %><br>
<%= complexContent[189] %></sup>
</p>
<p><%= complexContent[190] %><br>
<%= complexContent[191] %><br>
<%= complexContent[192] %></sup><br>
<%= complexContent[193] %>
</p>
<p><%= complexContent[194] %><br>
<%= complexContent[195] %> <br>
   <%= complexContent[196] %></sup><br>
</p>
<p><%= complexContent[197] %>
</p>
</div>

<div class="question">
    <div class="question-heading"><%= simpleContent[4] %></div>
    <ul class="question-list">
        <li><%= complexContent[198] %></li>
        <li><%= complexContent[199] %></li>
        <li><%= complexContent[200] %></li>
        <li><%= complexContent[201] %></li>
    </ul>
</div>

<fieldset class="know-more">
    <h4 style="text-align:center;margin-top:5px;margin-bottom:10px;"><%= simpleContent[23] %></h4>
    <p>
        <%= complexContent[202] %>
    </p>
	<p>
		<%= complexContent[203] %>
	</p>
</fieldset>

<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[204] %></legend>
    <ul class="what-learnt-list">
		<li><%= complexContent[205] %></li>
		<li><%= complexContent[206] %></li>
		<li><%= complexContent[207] %></li>
		<li><%= complexContent[208] %></li>
		<li><%= complexContent[209] %></li>
		<li><%= complexContent[210] %></li>
		<li><%= complexContent[211] %></li>
		<li><%= complexContent[212] %></li>
		<li><%= complexContent[213] %></li>		
	</ul>
</fieldset>

<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[24] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[214] %></li>
        <li><%= complexContent[215] %></li>
		<li><%= complexContent[216] %></li>
        <li><%= complexContent[217] %>
		<ul class="exercise-sub-list">
			<li><%= complexContent[218] %></li>
			<li><%= complexContent[219] %></li>
			<li><%= complexContent[220] %></li>
			<li><%= complexContent[221] %></li>
		</ul></li>
		<li><%= complexContent[222] %></li>
        <li><%= complexContent[223] %></li>
		<li><%= complexContent[224] %>
		<ul class="exercise-sub-list">
			<li><%= complexContent[225] %></li>
			<li><%= complexContent[226] %></li>
			<li><%= complexContent[227] %></li>
		</ul></li>
        <li><%= complexContent[228] %></li>
		<li><%= complexContent[229] %>
		<ul class="exercise-sub-list">
			<li><%= simpleContent[25] %></sup></li>
			<li><%= simpleContent[26] %></sup></li>
			<li><%= simpleContent[27] %></sup></li>
			<li><%= simpleContent[28] %></li>
		</ul></li>
        <li><%= complexContent[230] %></li>
		<li><%= complexContent[231] %></li>
        <li><%= complexContent[232] %></li>
		<li><%= complexContent[233] %></li>
        <li><%= complexContent[234] %></li>
		<li><%= complexContent[235] %></li>
        <li><%= complexContent[236] %></li>
		<li><%= complexContent[237] %></li>
        <li><%= complexContent[238] %></li>
    </ul>
</fieldset>
<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[29] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[239] %>
		<table border="0" style="border:none;margin-top:10px;" cellpadding="0" cellspacing="0">
		<tr class="green-th">
			<th><%= complexContent[240] %></th>
			<th><%= complexContent[241] %></th>
		</tr>
		<tr class="green-td">
			<th><%= translatableContent[7] %></th>
			<th><%= translatableContent[7] %></th>
		</tr>
		<tr class="green-td">
			<th><%= translatableContent[8] %></th>
			<th><%= translatableContent[9] %></th>
		</tr>
		<tr class="green-td">
			<th><%= translatableContent[10] %></th>
			<th><%= translatableContent[11] %></th>
		</tr>
		<tr class="green-td">
			<th><%= translatableContent[12] %></th>
			<th><%= translatableContent[13] %></th>
		</tr>
		<tr class="green-td">
			<th><%= translatableContent[14] %></th>
			<th><%= translatableContent[15] %></th>
		</tr>
		<tr class="green-td">
			<th><%= translatableContent[16] %></th>
			<th><%= translatableContent[17] %></th>
		</tr>
		<tr class="green-td">
			<th><%= translatableContent[18] %></th>
			<th><%= translatableContent[19] %></th>
		</tr>
		<tr class="green-td">
			<th><%= translatableContent[9] %></th>
			<th><%= translatableContent[20] %></th>
		</tr>
		</table>
		<ul class="exercise-sub-list">
			<li><%= complexContent[242] %></li>
			<li><%= complexContent[243] %></li>
		</ul>
		</li>
        <li><%= complexContent[244] %></li>
		<li><%= complexContent[245] %></li>
		<li><%= complexContent[246] %></li>
		<li><%= complexContent[247] %>		<ul class="exercise-sub-list">
			<li><%= complexContent[248] %></li>
			<li><%= complexContent[249] %></li>
			<li><%= complexContent[250] %></li>
			<li><%= complexContent[251] %></li>
		</ul></li>
    </ul>
</fieldset>
	</div>
  </body>
</html>

