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
		<p><%= complexContent[2] %></p>
		<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[1] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[3] %></li>
			</ul>
		</fieldset>
      	<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[2] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[4] %></li>
				<li><%= complexContent[5] %></li>
			</ul>
		</fieldset>
	    <div class="think">
		<div class="think-heading"><%= complexContent[6] %></div>
		<p><%= complexContent[7] %></p>
		</div>
	  	<h2><%= complexContent[8] %></h2>
		<p><%= complexContent[9] %></p>
	  	<h3><%= complexContent[10] %></h3>
		<p><%= complexContent[11] %></p>
		<div class="images"><img src="images_motion_IX/figure_1.JPG"><br><%= complexContent[12] %></div>
	  	<p><%= complexContent[13] %></p>
		<p><%= complexContent[14] %></p>
		<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[3] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[15] %></li>
				<li><%= complexContent[16] %></li>
				<li><%= complexContent[17] %></li>
				<li><%= complexContent[18] %></li>
			</ul>
		</fieldset>
	  	<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[4] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[19] %></li>
				<li><%= complexContent[20] %></li>
			</ul>
		</fieldset>
		<div class="question">
			<div class="question-heading"><%= simpleContent[5] %></div>
			<ul class="question-list">
				<li><%= complexContent[21] %></li>
				<li><%= complexContent[22] %></li>
				<li><%= complexContent[23] %>
				<ul class="question-sub-list">
					<li><%= complexContent[24] %></li>
					<li><%= complexContent[25] %></li>
				</ul>
				</li>
				
			</ul>
		</div>
		<h3><%= complexContent[26] %></h3>
		<p><%= complexContent[27] %></p>
		<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[6] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[28] %></li>
				<li><%= complexContent[29] %></li>
			</ul>
		</fieldset>
		<h5><strong><%= simpleContent[7] %></strong></h5>
		<table>
			<tr class="blue-th">
				<th><%= simpleContent[8] %></th>
				<th><%= complexContent[30] %></th>
				<th><%= complexContent[31] %></th>
			</tr>
			<tr class="blue-td">
				<td><%= simpleContent[9] %></td>
				<td><%= translatableContent[0] %></td>
				<td><%= translatableContent[1] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= simpleContent[10] %></td>
				<td><%= translatableContent[2] %></td>
				<td><%= translatableContent[3] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= simpleContent[11] %></td>
				<td><%= translatableContent[4] %></td>
				<td><%= translatableContent[5] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= simpleContent[12] %></td>
				<td><%= translatableContent[6] %></td>
				<td><%= translatableContent[7] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= simpleContent[13] %></td>
				<td><%= translatableContent[8] %></td>
				<td><%= translatableContent[9] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= simpleContent[14] %></td>
				<td><%= translatableContent[10] %></td>
				<td><%= translatableContent[11] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= simpleContent[15] %></td>
				<td><%= translatableContent[12] %></td>
				<td><%= translatableContent[13] %></td>
			</tr>
		</table>
		<h2><%= complexContent[32] %></h2>
		<div class="images"><img src="images_motion_IX/figure_2_a.JPG"><br><%= translatableContent[14] %></div>
		<div class="images"><img src="images_motion_IX/figure_2_b.JPG"><br><%= translatableContent[15] %></div>
		<p><%= complexContent[33] %></p>
		<p><%= complexContent[34] %></p>
		<div class="equation"><%= complexContent[35] %></div>
		<p><%= complexContent[36] %></p>
		<div class="equation"><%= complexContent[37] %><span style="margin-left:100px;"><%= translatableContent[16] %></span></div>
		<p><%= complexContent[38] %></p>
		<div class="example">
		<div class="exam_no"><%= simpleContent[16] %></div>
		<p><%= complexContent[39] %></p>
		<div class="exam_no"><%= simpleContent[17] %></div>
		<p><%= complexContent[40] %> 
		<br><%= complexContent[41] %>
		<br><%= complexContent[42] %>
		<br><%= complexContent[43] %>
		<br><%= complexContent[44] %></sup>
		<br><%= complexContent[45] %>
		</p>
		</div>
		<h3><%= complexContent[46] %></h3>
		<p><%= complexContent[47] %></p>		
		<p><%= complexContent[48] %></p>
		<div class="equation"><%= complexContent[49] %> </div>
		<div class="equation"><%= complexContent[50] %></div>
		<p><%= complexContent[51] %></p>
		<p><%= complexContent[52] %></p>
		<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[18] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[53] %></li>
			</ul>
		</fieldset>
		<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[19] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[54] %></li>
				<li><%= complexContent[55] %></li>
				<li><%= complexContent[56] %></li>
				<li><%= complexContent[57] %></li>
			</ul>
		</fieldset>
		<div class="question">
			<div class="question-heading"><%= simpleContent[5] %></div>
			<ul class="question-list">
				<li><%= complexContent[58] %></li>
				<li><%= complexContent[59] %></li>
				<li><%= complexContent[60] %></li>
				<li><%= complexContent[61] %></li>
				<li><%= complexContent[62] %></li>
			</ul>
		</div>
		<div class="example">
		<div class="exam_no"><%= simpleContent[20] %></div>
		<p><%= complexContent[63] %></p>
		<div class="exam_no"><%= simpleContent[17] %></div>
		<p>
			<br><%= complexContent[64] %>
			<br><%= complexContent[65] %>
			<br><%= complexContent[66] %>
			<br><%= complexContent[67] %>
			<br><%= complexContent[68] %>
			<br><%= complexContent[69] %></sup>
			<br><%= complexContent[70] %>
			<br><%= complexContent[71] %></sup>
		  <p><%= complexContent[72] %></p>
		</p>
		</div>
		<div class="example">
		<div class="exam_no"><%= simpleContent[21] %></div>
		<p><%= complexContent[73] %></p>
		<div class="exam_no"><%= simpleContent[17] %></div>
		<p>
		<%= complexContent[74] %>
		<br><%= complexContent[75] %>
		<br><%= complexContent[76] %>
		<br><%= complexContent[77] %>
		<br><%= complexContent[78] %></sup>
		<br><%= complexContent[79] %>
		<br><%= complexContent[80] %>
		<br><%= complexContent[81] %></sup>
		<p><%= complexContent[82] %></p>
		</p>
		</div>
		<h2><%= complexContent[83] %></h2>
		<p><%= complexContent[84] %></p>
		<p><%= complexContent[85] %></p>
		<div class="equation"><%= complexContent[86] %></div>		
		<p><%= complexContent[87] %></p>
		<div class="equation"><%= complexContent[88] %><span style="margin-left:100px;"><%= translatableContent[17] %></span></div>
		<p><%= complexContent[89] %></p>
		<p><%= complexContent[90] %></p>
		
		<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[22] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[91] %>
				<ul class="activity-sub-list">
					<li><%= complexContent[92] %></li>
					<li><%= complexContent[93] %></li>
					<li><%= complexContent[94] %></li>
					<li><%= complexContent[95] %></li>
				</ul>
				</li>
				<li><%= complexContent[96] %></li>
			</ul>
		</fieldset>
		
		<div class="example">
		<div class="exam_no"><%= simpleContent[23] %></div>
		<p><%= complexContent[97] %></p>
		<div class="exam_no"><%= simpleContent[17] %></div>
		<p>
		<br><%= complexContent[98] %>
		<br><%= complexContent[99] %>
		<br><%= complexContent[100] %>
		<br><%= complexContent[101] %>
		<br><%= complexContent[102] %>
		<br><%= complexContent[103] %>
		<br><%= complexContent[104] %>
		<br><%= complexContent[105] %>
		<br><%= complexContent[106] %></sup>
		<br><%= complexContent[107] %>
		<br><%= complexContent[108] %>
		<br><%= complexContent[109] %>
		<br><%= complexContent[110] %>
		<br><%= complexContent[111] %>
		<br><%= complexContent[112] %>
		<p><%= complexContent[113] %></p>
		</p>
		</div>
		<div class="question">
			<div class="question-heading"><%= simpleContent[5] %></div>
			<ul class="question-list">
				<li><%= complexContent[114] %>
				<ul class="question-sub-list">
					<li><%= simpleContent[24] %></li>
					<li><%= simpleContent[25] %></li>
				</ul>
				</li>
				<li><%= complexContent[115] %></li>
				<li><%= complexContent[116] %></li>
			</ul>
		</div>
		<h2><%= complexContent[117] %></h2>
		<p><%= complexContent[118] %></p>
		<p><%= complexContent[119] %></p>
		<h3><%= complexContent[120] %></h3>
		<p><%= complexContent[121] %></p>
		<div class="images"><img src="images_motion_IX/figure_3.JPG"><br><%= complexContent[122] %></div>
		<p><%= complexContent[123] %></p>
		<p><%= complexContent[124] %></p>
		<div class="equation"><%= complexContent[125] %><span style="margin-left:100px;"><%= translatableContent[18] %></span></div>
		<p><%= complexContent[126] %></p>
		<h5><strong><%= complexContent[127] %></h5>
		<table>
			<tr class="blue-th">
				<th><%= complexContent[128] %></th>
				<th><%= complexContent[129] %></th>
			</tr>
			<tr class="blue-td">
				<td><%= translatableContent[19] %></td>
				<td><%= translatableContent[19] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= translatableContent[20] %></td>
				<td><%= translatableContent[21] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= translatableContent[22] %></td>
				<td><%= translatableContent[22] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= translatableContent[23] %></td>
				<td><%= translatableContent[24] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= translatableContent[25] %></td>
				<td><%= translatableContent[26] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= translatableContent[0] %></td>
				<td><%= translatableContent[27] %></td>
			</tr>
			<tr class="blue-td">
				<td><%= translatableContent[1] %></td>
				<td><%= translatableContent[28] %></td>
			</tr>
		</table>
		<div class="images"><img src="images_motion_IX/figure_4.JPG"><br><%= complexContent[130] %></div>
		<p><%= complexContent[131] %></p>
		<h3><%= complexContent[132] %></h3>
		<p><%= complexContent[133] %></p>
		<div class="images"><img src="images_motion_IX/figure_5.JPG"><br><%= complexContent[134] %></div>
		<p><%= complexContent[135] %></p>
		<p><%= complexContent[136] %></p>
		<p><%= complexContent[137] %>
		<br><%= complexContent[138] %>
    	<br><%= complexContent[139] %>
      	<br><%= complexContent[140] %>
     	<br><%= complexContent[141] %>
    	<br><%= complexContent[142] %>
		</p>
		<p><%= complexContent[143] %></p>
		<h5><strong><%= complexContent[144] %></h5>
		<table>
		  <tr class="blue-th">
			<th rowspan="2"><%= simpleContent[26] %></th>
			<th colspan="2"><%= complexContent[145] %></th>
		  </tr>
		  <tr class="blue-th">
		    <th><%= simpleContent[27] %></sup></th>
	        <th><%= simpleContent[28] %></sup></th>
		  </tr>
		  <tr class="blue-td">
			<td><%= translatableContent[19] %></td>
			<td><%= translatableContent[19] %></td>
			<td><%= translatableContent[19] %></td>
		  </tr>
		  <tr class="blue-td">
			<td><%= translatableContent[29] %></td>
			<td><%= translatableContent[24] %></td>
			<td><%= translatableContent[30] %></td>
		  </tr>
		  <tr class="blue-td">
			<td><%= translatableContent[0] %></td>
			<td><%= translatableContent[31] %></td>
			<td><%= translatableContent[32] %></td>
		  </tr>
		  <tr class="blue-td">
			<td><%= translatableContent[33] %></td>
			<td><%= translatableContent[34] %></td>
			<td><%= translatableContent[35] %></td>
		  </tr>
		  <tr class="blue-td">
			<td><%= translatableContent[2] %></td>
			<td><%= translatableContent[28] %></td>
			<td><%= translatableContent[36] %></td>
		  </tr>
		  <tr class="blue-td">
			<td><%= translatableContent[27] %></td>
			<td><%= translatableContent[37] %></td>
			<td><%= translatableContent[38] %></td>
		  </tr>
		  <tr class="blue-td">
			<td><%= translatableContent[4] %></td>
			<td><%= translatableContent[39] %></td>
			<td><%= translatableContent[40] %></td>
		  </tr>
		</table>
		<p><%= complexContent[146] %></p>
		<div class="images"><img src="images_motion_IX/figure_6.JPG"><br><%= complexContent[147] %></div>
		<p><%= complexContent[148] %></p>
		<p>
		<%= simpleContent[29] %>
		<br><%= complexContent[149] %>
		<br><%= complexContent[150] %>
		<br><%= complexContent[151] %>
		</p>
		<p><%= complexContent[152] %></p>
		<div class="images"><img src="images_motion_IX/figure_7.JPG"><br><%= complexContent[153] %></div>
		<p>  <%= complexContent[154] %></p>
		<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[30] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[155] %></li>
				<h5><strong><%= complexContent[156] %></h5>
				<table style="border:none;">
					<tr class="green-th">
						<th><%= simpleContent[31] %></th>
						<th><%= complexContent[157] %></th>
						<th><%= complexContent[158] %></th>
						<th><%= complexContent[159] %></th>
					</tr>
					<tr class="green-td">
						<td><%= translatableContent[41] %></td>
						<td><%= translatableContent[19] %></td>
						<td><%= translatableContent[42] %></td>
						<td><%= translatableContent[43] %></td>
					</tr>
					<tr class="green-td">
						<td><%= translatableContent[44] %></td>
						<td><%= translatableContent[45] %></td>
						<td><%= translatableContent[46] %></td>
						<td><%= translatableContent[47] %></td>
					</tr>
					<tr class="green-td">
						<td><%= translatableContent[48] %></td>
						<td><%= translatableContent[49] %></td>
						<td><%= translatableContent[50] %></td>
						<td><%= translatableContent[51] %></td>
					</tr>
					
				</table>
				<li><%= complexContent[160] %></li>
			</ul>
		</fieldset>
		
		<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[32] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[161] %></li>
				<h5><strong><%= complexContent[162] %></h5>
				<table style="border:none;">
					<tr class="green-th">
						<th><%= simpleContent[8] %></th>
						<th><%= complexContent[163] %></th>
						<th><%= complexContent[164] %></th>
					</tr>
					<tr class="green-td">
						<td><%= simpleContent[33] %></td>
						<td><%= translatableContent[19] %></td>
						<td><%= translatableContent[19] %></td>
					</tr>
					<tr class="green-td">
						<td><%= simpleContent[34] %></td>
						<td><%= translatableContent[52] %></td>
						<td><%= translatableContent[53] %></td>
					</tr>
					<tr class="green-td">
						<td><%= simpleContent[35] %></td>
						<td><%= translatableContent[54] %></td>
						<td><%= translatableContent[55] %></td>
					</tr>
					<tr class="green-td">
						<td><%= simpleContent[36] %></td>
						<td><%= translatableContent[56] %></td>
						<td><%= translatableContent[57] %></td>
					</tr>
					<tr class="green-td">
						<td><%= simpleContent[37] %></td>
						<td><%= translatableContent[58] %></td>
						<td><%= translatableContent[59] %></td>
					</tr>
					<tr class="green-td">
						<td><%= simpleContent[38] %></td>
						<td><%= translatableContent[60] %></td>
						<td><%= translatableContent[58] %></td>
					</tr>
					
				</table>
				<li><%= complexContent[165] %></li>
			</ul>
		</fieldset>
		<div class="question">
			<div class="question-heading"><%= simpleContent[5] %></div>
			<ul class="question-list">
				<li><%= complexContent[166] %></li>
				<li><%= complexContent[167] %></li>
				<li><%= complexContent[168] %></li>
				<li><%= complexContent[169] %></li>
			</ul>
		</div>
		<h2><%= complexContent[170] %></h2>
		<p><%= complexContent[171] %></p>
		<div class="equation"><%= complexContent[172] %><span style="margin-left:100px;"><%= translatableContent[61] %></span></div>
		<div class="equation"><%= complexContent[173] %></sup><span style="margin-left:100px;"><%= translatableContent[62] %></span></div>
		<div class="equation"><%= complexContent[174] %></sup><span style="margin-left:100px;"><%= translatableContent[63] %></span></div>
		<p><%= complexContent[175] %></p>	
		<h3><%= complexContent[176] %></h3>
		<p><%= complexContent[177] %></p>
		<div class="images"><img src="images_motion_IX/figure_8.JPG"><br><%= complexContent[178] %></div>
		<p>
		<%= complexContent[179] %>
		<br><%= complexContent[180] %>
		<br><%= complexContent[181] %>
		<br><%= complexContent[182] %>
		</p>
		<div class="equation"><%= complexContent[183] %> <span style="margin-left:100px;"><%= translatableContent[64] %></span></div>
		<p
		From the velocity-time graph (Fig. 8), the acceleration of the object is given by</p>
		<div class="equation"><%= complexContent[184] %></div>
		<div class="equation"><%= complexContent[185] %></div>
		<p><%= complexContent[186] %></p>
		<div class="equation"><%= complexContent[187] %></div>
		<div class="equation"><%= complexContent[188] %><span style="margin-left:100px;"><%= translatableContent[65] %></span></div>
		<p><%= complexContent[189] %> <br><%= complexContent[190] %></p>
		<h3><%= complexContent[191] %></h3>
		<p><%= complexContent[192] %></p>
		<p><%= complexContent[193] %><br>
			<%= complexContent[194] %><br>
			<%= complexContent[195] %>
			</p>
			<div class="equation"><%= complexContent[196] %> <span style="margin-left:100px;"><%= translatableContent[66] %></span></div>
		<p><%= complexContent[197] %> <br>
		 <%= complexContent[198] %><br>
		<%= complexContent[199] %></sup>  
		</p>
		<h3><%= complexContent[200] %></h3>
		<p><%= complexContent[201] %></p>
		<div class="equation"> <%= complexContent[202] %></div>
		<p><%= complexContent[203] %></p>
		<div class="equation"><%= complexContent[204] %><span style="margin-left:100px;"><%= translatableContent[67] %></span></div>
		<p><%= complexContent[205] %></p>
		<div class="equation"><%= complexContent[206] %><span style="margin-left:100px;"><%= translatableContent[68] %></span></div>
		<p><%= complexContent[207] %></p>
		<div class="equation"><%= complexContent[208] %></div>
		<div class="equation"><%= complexContent[209] %></sup></div>
		<div class="example">
		<div class="exam_no"><%= simpleContent[39] %></div>
		<p><%= complexContent[210] %> </p>
		<div class="exam_no"><%= simpleContent[17] %></div>
		<p>
		<br><%= complexContent[211] %>
		<br><%= complexContent[212] %>
		<br><%= complexContent[213] %>
		<ul style="list-style:lower-roman">
		<li><%= complexContent[214] %><br>
		<%= complexContent[215] %><br>
		<%= complexContent[216] %><br>
		<%= complexContent[217] %></sup>
		</li>
		<li>
		<%= complexContent[218] %><br>
		 <%= complexContent[219] %><br>
		 <%= simpleContent[40] %><br>
		<%= complexContent[220] %><br>
		<div class="images" style="text-align:left;margin-left:0px;"><img src="images_motion_IX/equation_1.JPG"></div>
		<%= complexContent[221] %><br><%= complexContent[222] %>
		<p><%= complexContent[223] %></p>
		</li>
		</ul>
		</p>
		</div>
		<div class="example">
		<div class="exam_no"><%= simpleContent[41] %></div>
		<p><%= complexContent[224] %></p>
		<div class="exam_no"><%= simpleContent[17] %></div>
		<p><%= complexContent[225] %><br>
		<%= complexContent[226] %></sup><br>
		<%= complexContent[227] %><br>
		<%= complexContent[228] %>
		<ul style="list-style:lower-roman">
		<li>
		<%= complexContent[229] %><br>
		<%= complexContent[230] %><br>
		<%= simpleContent[42] %></sup>
		</li>
		<li>
		<%= complexContent[231] %><br>
		<%= complexContent[232] %></sup><br>
		<%= complexContent[233] %></sup><br>
		<%= complexContent[234] %><br>
		<%= complexContent[235] %><br>
		<%= complexContent[236] %><br>
		</li>
		</ul>
		</p>
		</div>

		<div class="example">
		<div class="exam_no"><%= simpleContent[43] %></div>
		<p><%= complexContent[237] %></p>
		<div class="exam_no"><%= simpleContent[17] %></div>
		<p>
		<%= complexContent[238] %><br>
		<%= complexContent[239] %><br>
		
		<%= complexContent[240] %><br>
		<%= complexContent[241] %><br>
		<%= complexContent[242] %><br>
		<%= complexContent[243] %><br>
		<%= complexContent[244] %><br><br>
		
		<%= complexContent[245] %></sup> <br><br>
		
		<%= complexContent[246] %></sup><br>
		<%= complexContent[247] %><br>
		<%= complexContent[248] %><br>
		<p><%= complexContent[249] %></p>
		</p>
		</div>
		
		<div class="question">
			<div class="question-heading"><%= simpleContent[5] %></div>
			<ul class="question-list">
				<li><%= complexContent[250] %></li>
				<li><%= complexContent[251] %></li>
				<li><%= complexContent[252] %></li>
				<li><%= complexContent[253] %></li>
				<li><%= complexContent[254] %>
</li>
			</ul>
		</div>
		<h2><%= complexContent[255] %></h2>
		<p><%= complexContent[256] %></p>
		<div class="images"><img src="images_motion_IX/figure_9_a.JPG"><img src="images_motion_IX/figure_9_b.JPG"><br><%= complexContent[257] %></div>
		<div class="images"><img src="images_motion_IX/figure_9_c.JPG"><img src="images_motion_IX/figure_9_d.JPG"><br><%= complexContent[258] %></div>
		<div class="images"><%= complexContent[259] %></div>
		<p><%= complexContent[260] %></p>
		<p><%= complexContent[261] %></p>
	  <p><%= complexContent[262] %></p>
	  <div class="equation"> <%= complexContent[263] %><span style="margin-left:100px;"></span><%= translatableContent[69] %></div>
	  <p><%= complexContent[264] %></p>
		<fieldset class="activity">
			<legend class="activity-legend"><%= simpleContent[44] %></legend>
			<ul class="activity-list">
				<li><%= complexContent[265] %></li>
				<div class="images"><img src="images_motion_IX/figure_10.JPG"><br><%= complexContent[266] %></div>
				<li><%= complexContent[267] %></li>
				<li><%= complexContent[268] %></li>
				<li><%= complexContent[269] %></li>
			</ul>
		</fieldset>
	  
	  <p><%= complexContent[270] %>
</p>
		<p><%= complexContent[271] %></p>
	  
		<fieldset class="what-learnt">
			<legend class="what-learnt-legend"><%= complexContent[272] %></legend>
			<ul class="what-learnt-list">
				<li><%= complexContent[273] %></li>
				<li><%= complexContent[274] %></li>
				<li><%= complexContent[275] %></li>
				<li><%= complexContent[276] %></li>
				<li><%= complexContent[277] %></li>
				<li><%= complexContent[278] %><br>
				           <%= complexContent[279] %><br>
					 <%= complexContent[280] %></sup><br>
					<%= complexContent[281] %></sup><br>			
			<%= complexContent[282] %>

				</li>
				<li><%= complexContent[283] %></li>
			</ul>
		</fieldset>
		<fieldset class="exercise">
			<legend class="exercise-legend"><%= simpleContent[45] %></legend>
			<ul class="exercise-list">
				<li><%= complexContent[284] %></li>
				<li><%= complexContent[285] %></li>
				<li><%= complexContent[286] %>
</li>
				<li><%= complexContent[287] %></li>
				<li><%= complexContent[288] %></li>
				<li><%= complexContent[289] %>
				<div class="images"><img src="images_motion_IX/figure_11.JPG"><br><%= simpleContent[46] %></div>
				<ul class="exercise-sub-list">
					<li><%= complexContent[290] %></li>
					<li><%= complexContent[291] %></li>
					<li><%= complexContent[292] %></li>
					<li><%= complexContent[293] %></li>
				</ul>
				</li>
				<li><%= complexContent[294] %></li>
				<li><%= complexContent[295] %>
				<div class="images"><img src="images_motion_IX/figure_12.JPG"><br><%= simpleContent[47] %></div>
				<ul class="exercise-sub-list">
					<li><%= complexContent[296] %></li>
					<li><%= complexContent[297] %></li>
				</ul>
				</li>
				<li><%= complexContent[298] %>
				<ul class="exercise-sub-list">
					<li><%= complexContent[299] %></li>
					<li><%= complexContent[300] %></li>
				</ul>
				</li>
				<li><%= complexContent[301] %></li>
				</ul>
		</fieldset>
	</div>
  </body>
</html>

