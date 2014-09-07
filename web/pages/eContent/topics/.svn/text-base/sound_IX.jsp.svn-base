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
	<h2><%= complexContent[1] %></h2>
	<fieldset class="activity">
		<legend class="activity-legend"><%= simpleContent[1] %></legend>
		<ul class="activity-list">
			<li><%= complexContent[2] %></li>
			<li><%= complexContent[3] %></li>
			<li><%= complexContent[4] %></li>
			<li><%= complexContent[5] %></li>
			<li><%= complexContent[6] %></li>
		</ul>
	</fieldset>
	<div class="images"><img src="images_sound_IX/figure_1.JPG"><br><%= complexContent[7] %></div>
	<fieldset class="activity">
		<legend class="activity-legend"><%= simpleContent[2] %></legend>
		<ul class="activity-list">
			<li><%= complexContent[8] %></li>
			<li><%= complexContent[9] %></li>
			<li><%= complexContent[10] %></li>
			<li><%= complexContent[11] %></li>
		</ul>
		<div class="images"><img src="images_sound_IX/figure_2.JPG"><br><%= complexContent[12] %></div>
		<div class="images"><img src="images_sound_IX/figure_3.JPG"><br><%= complexContent[13] %></div>
	</fieldset>
	<p><%= complexContent[14] %></p>
	<p><%= complexContent[15] %>
</p>
	<fieldset class="activity">
		<legend class="activity-legend"><%= simpleContent[3] %></legend>
		<ul class="activity-list">
			<li><%= complexContent[16] %></li>
		</ul>
	</fieldset>
	<h2><%= complexContent[17] %></h2>
	<p><%= complexContent[18] %></p>
	<div class="think">
		<h4 style="text-align:center"><%= complexContent[19] %></h4>
		<p><%= complexContent[20] %></p>
		<div class="images"><img src="images_sound_IX/figure_4.JPG"><br><%= complexContent[21] %></div>
	</div>
	<p><%= complexContent[22] %></p>
	<p><%= complexContent[23] %></p>
	<div class="images"><img src="images_sound_IX/figure_5.JPG"><br><%= complexContent[24] %></div>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[25] %></li>
		</ul>
	</div>
	<h3><%= complexContent[26] %></h3>
	<p><%= complexContent[27] %></p>
	<p><%= complexContent[28] %></p>
	<div class="images"><img src="images_sound_IX/figure_6.JPG"><br><%= complexContent[29] %></div>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[30] %></li>
			<li><%= complexContent[31] %></li>
			<li><%= complexContent[32] %></li>
		</ul>
	</div>
	<h3><%= complexContent[33] %></h3>
	<fieldset class="activity">
		<legend class="activity-legend"><%= simpleContent[5] %></legend>
		<ul class="activity-list">
			<li><%= complexContent[34] %></li>
			<li><%= complexContent[35] %></li>
			<li><%= complexContent[36] %></li>
			<li><%= complexContent[37] %></li>
			<li><%= complexContent[38] %></li>
		</ul>
	</fieldset>
	<div class="images"><img src="images_sound_IX/figure_7.JPG"><br><%= complexContent[39] %></div>
	<p><%= complexContent[40] %></p>
	<p><%= complexContent[41] %></p>
	<h3><%= complexContent[42] %></h3>
	<p><%= complexContent[43] %></p>
	<ul>
		<li><%= simpleContent[6] %></li>
		<li><%= simpleContent[7] %></li>
		<li><%= simpleContent[8] %></li>
	</ul>
	<p><%= complexContent[44] %></p>
	<p><%= complexContent[45] %></p>
	<div class="images"><img src="images_sound_IX/figure_8.JPG"><br><%= complexContent[46] %></div>
	<p><%= complexContent[47] %>
</p>
	<div class="think">
	<p><%= complexContent[48] %></p>
	<div class="images"><img src="images_sound_IX/hertz.JPG"></div>
	</div>
	<p><%= complexContent[49] %></p>
	<p><%= complexContent[50] %></p>
	<div class="equation" style="height:50px;">
		<div style="float:left;height:50px;vertical-align:middle;line-height:50px;padding-right:10px;"><%= simpleContent[9] %></div>
		<div style="float:left;height:50px;text-align:center;">
			<div style="border-bottom:1px solid #21bef7;padding-left:5px;padding-right:5px;text-align:center;"><%= translatableContent[0] %></div>
			<div><%= translatableContent[1] %></div>
		</div>
	</div>
	<p><%= complexContent[51] %></p>
	<p><%= complexContent[52] %></p>
	<p><%= complexContent[53] %></p>
	<div class="images"><div class="images"><img src="images_sound_IX/figure_9_1.JPG"><br><%= complexContent[54] %></div>
	<div class="images"><img src="images_sound_IX/figure_9_2.JPG"><br><%= complexContent[55] %></div>
	<br><%= complexContent[56] %></div>
	<p><%= complexContent[57] %></p>
	<p><%= complexContent[58] %></p>
	<div class="images"><div class="images"><img src="images_sound_IX/figure_10_1.JPG"><br><%= simpleContent[10] %></div>
	<div class="images"><img src="images_sound_IX/figure_10_2.JPG"><br><%= simpleContent[11] %></div>
	<br><%= complexContent[59] %></div>
	<p><%= complexContent[60] %></p>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[61] %>
				<ul class="question-sub-list">
					<li><%= simpleContent[12] %></li>
					<li><%= simpleContent[13] %></li>
				</ul>
			</li>
			<li><%= complexContent[62] %></li>
		</ul>
	</div>
	<p><%= complexContent[63] %></p>
	<p><%= simpleContent[14] %></p>
	<div class="equation"><%= complexContent[64] %></div>
	<div class="equation">
		<%= simpleContent[15] %>
        </div>
	<p><%= complexContent[65] %></p>
	<div class="equation">
		<%= complexContent[66] %>
	</div>
	<p><%= complexContent[67] %></p>
	<p><%= complexContent[68] %></p>
	
	<div class="example">
	<div class="exam_no"><%= simpleContent[16] %></div>
	<p><%= complexContent[69] %></p>
	<div class="exam_no"><%= simpleContent[17] %></div>
	<p><%= simpleContent[18] %><br>
	<%= complexContent[70] %><br>
	<%= complexContent[71] %><br>
	<%= complexContent[72] %><br>
			<%= complexContent[73] %><br>
	  <%= complexContent[74] %><br>
	<%= complexContent[75] %><br><br>
	<%= complexContent[76] %><br>
	<%= complexContent[77] %>
	</p>
	</div>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[78] %></li>
			<li><%= complexContent[79] %></li>
			<li><%= complexContent[80] %></li>
			<li><%= complexContent[81] %></li>
		</ul>
	</div>
	<p><%= complexContent[82] %></p>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[83] %></li>
		</ul>
	</div>
	<h3><%= complexContent[84] %></h3>
	<p><%= complexContent[85] %></p>
	<h5><strong><%= complexContent[86] %></h5>
	<table>
		<tr class="blue-th">
			<th><%= simpleContent[19] %></th>
			<th><%= simpleContent[20] %></th>
			<th><%= complexContent[87] %></th>
		</tr>
	  <tr class="blue-td">
		<td rowspan="6"><%= simpleContent[21] %></td>
		<td><%= simpleContent[22] %></td>
		<td><%= translatableContent[2] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[23] %></td>
        <td><%= translatableContent[3] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[24] %></td>
        <td><%= translatableContent[4] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[25] %></td>
        <td><%= translatableContent[5] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[26] %></td>
        <td><%= translatableContent[6] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[27] %></td>
        <td><%= translatableContent[7] %></td>
	  </tr>
	  <tr class="blue-td">
		<td><%= simpleContent[28] %></td>
		<td><%= translatableContent[8] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[29] %></td>
        <td><%= translatableContent[9] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[30] %></td>
        <td><%= translatableContent[10] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[31] %></td>
        <td><%= translatableContent[11] %></td>
	  </tr>
	  <tr class="blue-td">
		<td rowspan="5"><%= simpleContent[32] %></td>
		<td><%= simpleContent[33] %></td>
		<td><%= translatableContent[12] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[34] %></td>
        <td><%= translatableContent[13] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[35] %></td>
        <td><%= translatableContent[14] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[36] %></td>
        <td><%= translatableContent[15] %></td>
	  </tr>
	  <tr class="blue-td">
	    <td><%= simpleContent[37] %></td>
        <td><%= translatableContent[16] %></td>
	  </tr>
	</table>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[88] %></li>
		</ul>
	</div>
	<div class="think">
	<p><strong><%= complexContent[89] %>
	</p>
	</div>
	<h2><%= complexContent[90] %></h2>
	<p><%= complexContent[91] %></p>
	<fieldset class="activity">
		<legend class="activity-legend"><%= simpleContent[38] %></legend>
		<ul class="activity-list">
			<li><%= complexContent[92] %></li>
			<li><%= complexContent[93] %></li>
			<li><%= complexContent[94] %></li>
			<li><%= complexContent[95] %></li>
			<li><%= complexContent[96] %></li>
			<li><%= complexContent[97] %></li>
		</ul>
	</fieldset>
	<div class="images"><img src="images_sound_IX/figure_11.JPG"><br><%= complexContent[98] %></div>
	<h3><%= simpleContent[39] %></h3>
	<p><%= complexContent[99] %></p>
	<h3><%= simpleContent[40] %></h3>
	<p><%= complexContent[100] %></p>
	<div class="example">
	<div class="exam_no"><%= simpleContent[41] %></div>
	<p><%= complexContent[101] %>
</p>
	<div class="exam_no"><%= simpleContent[17] %></div>
	<p>	<%= simpleContent[42] %><br><%= complexContent[102] %></sup><br>
<%= complexContent[103] %><br><%= complexContent[104] %><br><%= complexContent[105] %><br><br><%= complexContent[106] %><br><br>
<%= complexContent[107] %><br><br><%= complexContent[108] %></p>
	</div>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[109] %></li>
		</ul>
	</div>
	<h3><%= complexContent[110] %></h3>
	<ul style="list-style:decimal">
		<li><%= complexContent[111] %>
		<div class="images">
		<div class="images"><img src="images_sound_IX/figure_12_1.JPG"><br><%= simpleContent[43] %></div>
		<div class="images"><img src="images_sound_IX/figure_12_2.JPG"><br><%= simpleContent[44] %></div>
		<br><%= complexContent[112] %></div>
		<%= complexContent[113] %>
		</li>
		<li><%= complexContent[114] %>
		<div class="images"><img src="images_sound_IX/figure_13.JPG"><br><%= simpleContent[45] %></div>
		</li>
		<li><%= complexContent[115] %></li>
		<div class="images"><img src="images_sound_IX/figure_14.JPG"><br><%= complexContent[116] %></div>
		<div class="images"><img src="images_sound_IX/figure_15.JPG"><br><%= complexContent[117] %></div>
	</ul>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[118] %></li>
		</ul>
	</div>
	<h2><%= complexContent[119] %></h2>
	<p><%= complexContent[120] %></p>
	<div class="think">
	<p><strong><%= complexContent[121] %></p>
	</div>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[122] %></li>
			<li><%= complexContent[123] %>
			<ul class="question-sub-list">
			<li><%= simpleContent[46] %></li>
			<li><%= simpleContent[47] %></li>
			</ul>
			</li>
		</ul>
	</div>
	<h2><%= complexContent[124] %></h2>
	<p><%= complexContent[125] %></p>
	<ul>
		<li><%= complexContent[126] %></li>
		<li><%= complexContent[127] %></li>
	</ul>
	<div class="images"><img src="images_sound_IX/figure_16.JPG"><br><%= complexContent[128] %></div>
	<p><%= complexContent[129] %></p>
	<ul>
		<li><%= complexContent[130] %></li>
		<li><%= complexContent[131] %></li>
		<li><%= complexContent[132] %></li>
	</ul>
	<h3><%= simpleContent[48] %></h3>
	<p><%= complexContent[133] %></p>
	<div class="images"><img src="images_sound_IX/figure_17.JPG"><br><%= complexContent[134] %></div>
	<p><%= complexContent[135] %></p>
	<div class="example">
	<div class="exam_no"><%= simpleContent[49] %></div>
	<p><%= complexContent[136] %></p>
	<div class="exam_no"><%= simpleContent[17] %></div>
	<p>
	<%= simpleContent[42] %><br>
	<%= complexContent[137] %><br>
	<%= complexContent[138] %><br>
	<%= complexContent[139] %><br>
	  <%= complexContent[140] %><br>
	<%= complexContent[141] %><br>
	<%= complexContent[142] %><br>
	<%= complexContent[143] %><br>
	<%= complexContent[144] %><br>
	<%= complexContent[145] %><br>
	<%= complexContent[146] %><br>
	<%= complexContent[147] %>
	</p>
	</div>
	<div class="question">
		<div class="question-heading"><%= simpleContent[4] %></div>
		<ul class="question-list">
			<li><%= complexContent[148] %>
</li>
		</ul>
	</div>
	<p><%= complexContent[149] %></p>
	<div class="images"><img src="images_sound_IX/figure_18.JPG"><br><%= complexContent[150] %></div>
	<h2><%= complexContent[151] %></h2>
	<p><%= complexContent[152] %></p>
	<div class="images"><img src="images_sound_IX/figure_19.JPG"><br><%= complexContent[153] %></div>
	<p><%= complexContent[154] %></p>
	<fieldset class="what-learnt">
		<legend class="what-learnt-legend"><%= complexContent[155] %></legend>
		<ul class="what-learnt-list">
			<li><%= complexContent[156] %></li>
			<li><%= complexContent[157] %></li>
			<li><%= complexContent[158] %></li>
			<li><%= complexContent[159] %></li>
			<li><%= complexContent[160] %></li>
			<li><%= complexContent[161] %></li>
			<li><%= complexContent[162] %></li>
			<li><%= complexContent[163] %></li>
			<li><%= complexContent[164] %> </li>
			<li><%= complexContent[165] %></li>
			<li><%= complexContent[166] %></li>
			<li><%= complexContent[167] %></li>
			<li><%= complexContent[168] %></li>
			<li><%= complexContent[169] %></li>
			<li><%= complexContent[170] %></li>
			<li><%= complexContent[171] %></li>
			<li><%= complexContent[172] %></li>
			<li><%= complexContent[173] %></li>
			<li><%= complexContent[174] %></li>
			<li><%= complexContent[175] %></li>
			<li><%= complexContent[176] %></li>
		</ul>
	</fieldset>
	<fieldset class="exercise">
		<legend class="exercise-legend"><%= simpleContent[50] %></legend>
		<ul class="exercise-list">
			<li><%= complexContent[177] %></li>
			<li><%= complexContent[178] %></li>
			<li><%= complexContent[179] %></li>
			<li><%= complexContent[180] %></li>
			<li><%= complexContent[181] %></li>
			<li><%= complexContent[182] %></li>
			<li><%= complexContent[183] %></sup></li>
			<li><%= complexContent[184] %></li>
			<li><%= complexContent[185] %></li>
			<li><%= complexContent[186] %></li>
			<li><%= complexContent[187] %></li>
			<li><%= complexContent[188] %></li>
			<li><%= complexContent[189] %></li>
			<li><%= complexContent[190] %></li>
			<li><%= complexContent[191] %></li>
			<li><%= complexContent[192] %></li>
			<li><%= complexContent[193] %></li>
			<li><%= complexContent[194] %></li>
			<li><%= complexContent[195] %></li>
			<li><%= complexContent[196] %></li>
			<li><%= complexContent[197] %></li>
			<li><%= complexContent[198] %></li>
		</ul>
	</fieldset>
	</div>
  </body>
</html>

