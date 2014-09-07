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
          <h1><%= simpleContent[0] %></h1>
		  <p><%= complexContent[0] %></p>
		  <h2><%= complexContent[1] %></h2>
		  <p><%= complexContent[2] %></p>
		  <p><%= complexContent[3] %></p>
<p><%= complexContent[4] %></p>		  
<div class="equation"><%= complexContent[5] %>   <span style="margin-left:100px;"><%= translatableContent[0] %></span></div>
<p><%= complexContent[6] %> 
</p>
<div class="images">
	<img src="image_electricity_10/Figure_1.JPG">		        
	<br><%= complexContent[7] %>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[1] %></div>
<p><%= complexContent[8] %></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[9] %><br>
<%= complexContent[10] %><br>
<%= complexContent[11] %><br>
<%= complexContent[12] %><br>
<%= complexContent[13] %></p>
</div>		 
<div class="question">
    <div class="question-heading"><%= simpleContent[3] %></div>
    <ul class="question-list">
        <li><%= complexContent[14] %></li>
        <li><%= complexContent[15] %></li>
        <li><%= complexContent[16] %></li>
    </ul>
</div> 
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[17] %></legend>
    <h5 class="know-more-heading"><%= complexContent[18] %></h5><p><%= complexContent[19] %></p>
</fieldset>
<h2><%= complexContent[20] %></h2>
<p><%= complexContent[21] %>
</p>
<p><%= complexContent[22] %></p>
<p><%= complexContent[23] %></p>
<div class="equation"><%= complexContent[24] %> <span style="margin-left:100px;"><%= translatableContent[1] %></span></div>
<p><%= complexContent[25] %>
</p>
<p><%= simpleContent[4] %><div class="equation"><%= complexContent[26] %>                 
                     <br><%= complexContent[27] %></sup>
 <span style="margin-left:100px;"><%= translatableContent[2] %></span></div></p>
<p><%= complexContent[28] %></p>
<div class="example">
<div class="exam_no"><%= simpleContent[5] %></div>
<p><%= complexContent[29] %></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[30] %></p>
<p><%= complexContent[31] %><br>
<%= complexContent[32] %><br>
<%= complexContent[33] %></p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[3] %></div>
    <ul class="question-list">
        <li><%= complexContent[34] %></li>
        <li><%= complexContent[35] %></li>
        <li><%= complexContent[36] %></li>
    </ul>
</div>
<h2><%= complexContent[37] %></h2>
<p><%= complexContent[38] %>
</p>
<h5><strong><%= complexContent[39] %></h5>
<table>
    <tr class="green-th">
        <th><%= simpleContent[6] %> </th>
        <th><%= simpleContent[7] %> </th>
        <th><%= simpleContent[8] %></th>      
    </tr>
    <tr class="green-td">
        <td align="center"><%= translatableContent[3] %></td>
        <td align="center"><%= complexContent[40] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_1.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[4] %></td>
        <td align="center"><%= complexContent[41] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_2.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[5] %></td>
        <td align="center"><%= complexContent[42] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_3.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[6] %></td>
        <td align="center"><%= complexContent[43] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_4.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[7] %></td>
        <td align="center"><%= complexContent[44] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_5.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[8] %></td>
        <td align="center"><%= complexContent[45] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_6.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[9] %></td>
        <td align="center"><%= complexContent[46] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_7.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[10] %></td>
        <td align="center"><%= complexContent[47] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_8.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[11] %></td>
        <td align="center"><%= complexContent[48] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_9.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[12] %></td>
        <td align="center"><%= simpleContent[9] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_10.JPG"></td>
    </tr>
	<tr class="green-td">
        <td align="center"><%= translatableContent[13] %></td>
        <td align="center"><%= simpleContent[10] %></td>
        <td align="center"><img src="image_electricity_10/Symbol_11.JPG"></td>
    </tr>	
</table>
<h2><%= complexContent[49] %></h2>
<p><%= complexContent[50] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[11] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[51] %></li>
        <li><%= complexContent[52] %></li>
        <li><%= complexContent[53] %></li>
        <li><%= complexContent[54] %></li>
   
<div class="images">
	<img src="image_electricity_10/Figure_2.JPG">		        
	<br><%= complexContent[55] %>
</div>
<table>
    <tr class="pink-th">
        <th><%= simpleContent[12] %></th>
        <th><%= complexContent[56] %></th>
        <th><%= complexContent[57] %></th>
        <th><%= complexContent[58] %></th>
		<th><%= simpleContent[13] %><br><%= simpleContent[14] %>
</th>
    </tr>
    <tr class="pink-td">
        <td align="center"><%= translatableContent[3] %></td>
		<td align="center"><%= translatableContent[3] %></td>
		<td align="center"></td>
		<td align="center"></td>
		<td align="center"></td>
	</tr>
	<tr class="pink-td">
        <td align="center"><%= translatableContent[4] %></td>
		<td align="center"><%= translatableContent[4] %></td>
		<td align="center"></td>
		<td align="center"></td>
		<td align="center"></td>
	</tr>
	<tr class="pink-td">
        <td align="center"><%= translatableContent[5] %></td>
		<td align="center"><%= translatableContent[5] %></td>
		<td align="center"></td>
		<td align="center"></td>
		<td align="center"></td>
	</tr>
	<tr class="pink-td">
        <td align="center"><%= translatableContent[6] %></td>
		<td align="center"><%= translatableContent[6] %></td>
		<td align="center"></td>
		<td align="center"></td>
		<td align="center"></td>
	</tr>
</table>
 <li><%= complexContent[59] %></li>
 </ul>
</fieldset>
<p><%= complexContent[60] %></p>
<p><%= complexContent[61] %></p>
<div class="images">
	<img src="image_electricity_10/Figure_3.JPG">		        
	<br><%= complexContent[62] %>
</div>
<div class="equation"><%= complexContent[63] %><span style="margin-left:100px;"><%= translatableContent[14] %></span></div>
<div class="equation"><%= complexContent[64] %><span style="margin-left:100px;"><%= translatableContent[15] %></span></div>
<p><%= complexContent[65] %></p>
<div class="equation"><%= complexContent[66] %><span style="margin-left:100px;"><%= translatableContent[16] %></span></div>
<p><%= complexContent[67] %><br>
<%= complexContent[68] %><br>
<%= complexContent[69] %></p>
<div class="equation"><%= complexContent[70] %><span style="margin-left:100px;"><%= translatableContent[17] %></span></div>
<p><%= complexContent[71] %></p>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[15] %></legend>
<ul class="activity-list">
    <li><%= complexContent[72] %></li>
    <li><%= complexContent[73] %></li>
    <div class="images" style="margin-left:5px;">
	<img src="image_electricity_10/Figure_4.JPG" width="600px">		        
	<br><%= simpleContent[16] %> 
    </div>
    <li><%= complexContent[74] %></li>
    <li><%= complexContent[75] %></li>
    <li><%= complexContent[76] %></li>
    <li><%= complexContent[77] %></li>	
    <li><%= complexContent[78] %></li>
</ul>
</fieldset>
<p><%= complexContent[79] %></p>
<h2><%= complexContent[80] %></h2>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[17] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[81] %></li>
	<div class="images" style="margin-left:5px;">
	<img src="image_electricity_10/Figure_5.JPG" width="600px">		        
	<br><%= complexContent[82] %> 
    </div>
        <li><%= complexContent[83] %></li>
        <li><%= complexContent[84] %></li>
        <li><%= complexContent[85] %></li>
        <li><%= complexContent[86] %></li>
        <li><%= complexContent[87] %></li>
        <li><%= complexContent[88] %></li>
	<li><%= complexContent[89] %></li>
 	<li><%= complexContent[90] %></li>
    </ul>
</fieldset>
<p><%= complexContent[91] %></p>
<div class="equation"><%= complexContent[92] %><span style="margin-left:100px;"><%= translatableContent[18] %></span></div>
<div class="equation"><%= complexContent[93] %><span style="margin-left:100px;"><%= translatableContent[19] %></span></div>
<p><%= complexContent[94] %><br><%= complexContent[95] %></p>
<div class="equation"><%= complexContent[96] %> <span style="margin-left:100px;"><%= translatableContent[20] %></span></div>
<p><%= complexContent[97] %></p>
<p><%= complexContent[98] %> </p>
<h5><strong><%= complexContent[99] %> </h5>
<table>
<tr class="gray-th">
    <th>&nbsp;</th>
    <th><%= simpleContent[18] %></th>
    <th><%= complexContent[100] %></th>
</tr>
<tr class="gray-td">
    <td rowspan="9"><%= simpleContent[19] %></td>
    <td><%= simpleContent[20] %></td>
    <td><%= complexContent[101] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[21] %></td>
    <td><%= complexContent[102] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[22] %></td>
    <td><%= complexContent[103] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[23] %></td>
    <td><%= complexContent[104] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[24] %></td>
    <td><%= complexContent[105] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[25] %></td>
    <td><%= complexContent[106] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[26] %></td>
    <td><%= complexContent[107] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[27] %></td>
    <td><%= complexContent[108] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[28] %></td>
    <td><%= complexContent[109] %></sup></td>
</tr>
<tr class="gray-td">
    <td rowspan="3"><%= simpleContent[29] %></td>
    <td><%= complexContent[110] %></td>
    <td><%= complexContent[111] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= complexContent[112] %></td>
    <td><%= complexContent[113] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= complexContent[114] %></td>
    <td><%= complexContent[115] %></sup></td>
</tr>




<tr class="gray-td">
    <td rowspan="5"><%= simpleContent[30] %></td>
    <td><%= simpleContent[31] %></td>
    <td><%= complexContent[116] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[32] %></td>
    <td><%= complexContent[117] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[33] %></td>
    <td><%= complexContent[118] %></sup></td>
</tr>
<tr class="gray-td">
    <td><%= simpleContent[34] %></td>
    <td><%= complexContent[119] %></sup></td>
</td>
<tr class="gray-td">
    <td><%= simpleContent[35] %></td>
    <td><%= simpleContent[36] %></sup></td>
</td>
</table>
<p><%= complexContent[120] %></p>
<div class="example">
<div class="exam_no"><%= simpleContent[37] %></div>
<ul class="example-list">
    <li><%= complexContent[121] %> </li>
    <li><%= complexContent[122] %></li>
</ul>
<div class="exam_no"><%= simpleContent[2] %></div>
<ul class="example-list">
    <li><%= complexContent[123] %><br><%= complexContent[124] %> </li>
    <li><%= complexContent[125] %><br>
<%= complexContent[126] %><br>
<%= complexContent[127] %></li>
</ul>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[38] %></div>
<p><%= complexContent[128] %></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[129] %><br><%= complexContent[130] %><br><%= complexContent[131] %><br><%= complexContent[132] %><br><%= complexContent[133] %>
</p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[39] %></div>
<p><%= complexContent[134] %></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[135] %><br><%= complexContent[136] %><br><%= complexContent[137] %><br><br><%= complexContent[138] %><br><br><%= complexContent[139] %><br><br><%= complexContent[140] %><br><br><%= complexContent[141] %></p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[40] %></div>
<p><%= complexContent[142] %></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[143] %><br>
<%= complexContent[144] %><br><br><%= complexContent[145] %><br><br><%= complexContent[146] %><br><br><%= complexContent[147] %><br><br><%= complexContent[148] %><br><br><%= complexContent[149] %><br><br><%= complexContent[150] %>
</p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[3] %></div>
    <ul class="question-list">
        <li><%= complexContent[151] %></li>
        <li><%= complexContent[152] %></li>
        <li><%= complexContent[153] %></li>
        <li><%= complexContent[154] %></li>
	<li><%= complexContent[155] %>
	<ul class="question-sub-list">
	    <li><%= complexContent[156] %></li>
	    <li><%= complexContent[157] %></li>	
	</ul>	
	</li>
    </ul>
</div>
<h2><%= complexContent[158] %></h2>
<p><%= complexContent[159] %></p>
<p><%= complexContent[160] %></p>
<div class="images" style="margin-left:5px;">
	<img src="image_electricity_10/Figure_6.JPG">		        
	<br><%= complexContent[161] %> 
</div>
<p><%= complexContent[162] %></p>
<div class="images" style="margin-left:5px;">
	<img src="image_electricity_10/Figure_7.JPG">		        
	<br><%= complexContent[163] %>
</div>
<h3><%= complexContent[164] %></h3>
<p><%= complexContent[165] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[41] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[166] %></li>
        <li><%= complexContent[167] %></li>
        <li><%= complexContent[168] %></li>
        <li><%= complexContent[169] %></li>
    </ul>
</fieldset>
<p><%= complexContent[170] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[41] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[171] %></li>
        <li><%= complexContent[172] %></li>
        <li><%= complexContent[173] %></li>
	<div class="images" style="margin-left:5px;">
	<img src="image_electricity_10/Figure_8.JPG">		        
	<br><%= simpleContent[42] %>
	</div>        
	<li><%= complexContent[174] %></li>
	<li><%= complexContent[175] %></li>
	<li><%= complexContent[176] %></li>
    </ul>
</fieldset>
<p><%= complexContent[177] %></p>
<div class="equation"><%= complexContent[178] %></sub> <span style="margin-left:100px;"><%= translatableContent[21] %></span></div>
<p><%= complexContent[179] %></p>
<div class="equation"><%= complexContent[180] %><span style="margin-left:100px;"><%= translatableContent[22] %></span></div>
<p><%= complexContent[181] %></p>
<div class="equation"><%= complexContent[182] %></sub> <span style="margin-left:100px;"><%= translatableContent[23] %></span></div>
<div class="equation"><%= complexContent[183] %></sub> <span style="margin-left:100px;"><%= translatableContent[24] %></span></div>
<div class="equation"><%= complexContent[184] %></sub> <span style="margin-left:100px;"><%= translatableContent[25] %></span></div>
<p><%= complexContent[185] %><br><br><%= complexContent[186] %></sub><br><br><%= simpleContent[43] %></p>
<div class="equation"><%= complexContent[187] %></sub> <span style="margin-left:100px;"><%= translatableContent[26] %></span></div>
<p><%= complexContent[188] %></p>
<div class="example">
<div class="exam_no"><%= simpleContent[44] %></div>
<p><%= complexContent[189] %> 
<ul class="example-list"><li><%= complexContent[190] %></li><li><%= complexContent[191] %></li><li> <%= complexContent[192] %></li></ul></p>
<div class="images" style="margin-left:5px;">
	<img src="image_electricity_10/Figure_9.JPG">		        
	<br><%= complexContent[193] %>

	</div>     
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[194] %><br>
<%= complexContent[195] %><br>
<%= complexContent[196] %><br>
<%= complexContent[197] %></sub><br>
<%= complexContent[198] %><br>
<%= complexContent[199] %><br>
<%= complexContent[200] %><br>
<%= complexContent[201] %><br><br>

<%= complexContent[202] %><br>
 <%= complexContent[203] %><br>
  <%= complexContent[204] %><br><br>

<%= complexContent[205] %><br>
<%= complexContent[206] %><br>
<%= complexContent[207] %></br>
<%= complexContent[208] %><br>
<%= complexContent[209] %><br>
<%= complexContent[210] %><br><%= complexContent[211] %>
</p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[3] %></div>
    <ul class="question-list">
        <li><%= complexContent[212] %></li>
        <li><%= complexContent[213] %></li>
    </ul>
</div>
<h3><%= complexContent[214] %></h3>
<p><%= complexContent[215] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[45] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[216] %></li>
        <li><%= complexContent[217] %></li>
        <div class="images">
	<img src="image_electricity_10/Figure_10.JPG">		        
	<br><%= simpleContent[46] %>
        </div>  
        <li><%= complexContent[218] %></li>
	<div class="images">
	<img src="image_electricity_10/Figure_11.JPG">		        
	<br><%= simpleContent[47] %>
	</div>  
        <li><%= complexContent[219] %></li>
    </ul>
</fieldset>
<p><%= complexContent[220] %></p>
<div class="equation"><%= complexContent[221] %></sub> <span style="margin-left:100px;"><%= translatableContent[27] %></span></div>
<p><%= complexContent[222] %></p>
<div class="equation"><%= complexContent[223] %></sub> <span style="margin-left:100px;"><%= translatableContent[28] %></span></div>
<p><%= complexContent[224] %></p>
<div class="equation"><%= complexContent[225] %></sub><span style=style="margin-left:100px;"><%= translatableContent[29] %></span></div>
<p><%= complexContent[226] %><br><br><%= complexContent[227] %></sub><br><br><%= simpleContent[43] %></p>
<div class="equation"><%= complexContent[228] %></sub> <span style="margin-left:100px;"><%= translatableContent[30] %></span></div>
<p><%= complexContent[229] %></p>
<div class="example">
<div class="exam_no"><%= simpleContent[48] %></div>
<p><%= complexContent[230] %> <ul class="example-list"><li><%= complexContent[231] %></li><li><%= complexContent[232] %></li><li><%= complexContent[233] %></li></ul></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p>
<%= complexContent[234] %></sub><br>
<%= complexContent[235] %><br>
<%= complexContent[236] %></sub><br><br>
<%= complexContent[237] %><br><br>
<%= complexContent[238] %></sub><br>
<%= complexContent[239] %><br><%= complexContent[240] %><br>
<%= complexContent[241] %></sub><br><%= complexContent[242] %><br>
<%= complexContent[243] %><br>
<%= complexContent[244] %><br>
<%= complexContent[245] %><br>
<%= complexContent[246] %>
</p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[49] %></div>
<p><%= complexContent[247] %> <ul class="example-list"><li><%= complexContent[248] %></li><li><%= complexContent[249] %></li></ul></p>
<div class="images">
	<img src="image_electricity_10/Figure_12.JPG">		        
	<br><%= complexContent[250] %>
</div>  
<div class="exam_no"><%= simpleContent[2] %></div>
<p>
<%= complexContent[251] %><br>
<%= complexContent[252] %><br>
<%= complexContent[253] %><br><br>
<%= complexContent[254] %><br>
<%= complexContent[255] %><br>
<%= complexContent[256] %><br><%= complexContent[257] %>
</p>
</div>
<p><%= complexContent[258] %></p>
<div class="question">
    <div class="question-heading"><%= simpleContent[3] %></div>
    <ul class="question-list">
        <li><%= complexContent[259] %></li>
        <li><%= complexContent[260] %></li>
        <li><%= complexContent[261] %></li>
        <li><%= complexContent[262] %></li>
	<li><%= complexContent[263] %></li>
    </ul>
</div>
<h2><%= complexContent[264] %></h2>
<p><%= complexContent[265] %></p>
<p><%= complexContent[266] %></p>
<div class="equation"><%= complexContent[267] %><span style="margin-left:100px;"><%= translatableContent[31] %></span></div>
<p><%= complexContent[268] %></p>
<div class="equation"><%= complexContent[269] %><span style="margin-left:100px;"><%= translatableContent[32] %></span></div>
<p><%= complexContent[270] %></p>
<div class="equation"><%= complexContent[271] %> <span style="margin-left:100px;"><%= translatableContent[33] %></span></div>
<p><%= complexContent[272] %></p>
<div class="images">
	<img src="image_electricity_10/Figure_13.JPG">		        
	<br><%= complexContent[273] %>
</div>  
<div class="example">
<div class="exam_no"><%= simpleContent[50] %></div>
<p><%= complexContent[274] %></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[275] %><br>
<%= complexContent[276] %><br>
<%= complexContent[277] %><br>
<%= complexContent[278] %><br>
<%= complexContent[279] %><br>
<%= complexContent[280] %><br>
<%= complexContent[281] %><br>
<%= complexContent[282] %><br>
<%= complexContent[283] %><br>
<%= complexContent[284] %><br>
<%= complexContent[285] %></p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[51] %></div>
<p><%= complexContent[286] %></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[287] %><br>
<%= complexContent[288] %><br><br>
<%= complexContent[289] %><br>
<%= simpleContent[52] %><br><br><%= complexContent[290] %><br>
<%= complexContent[291] %><br>
<%= complexContent[292] %><br>
<%= complexContent[293] %>
</p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[3] %></div>
    <ul class="question-list">
        <li><%= complexContent[294] %></li>
	<li><%= complexContent[295] %></li>
	<li><%= complexContent[296] %></li>
    </ul>
</div>
<h3><%= complexContent[297] %></h3>
<p><%= complexContent[298] %></p>
<p><%= complexContent[299] %></p>
<p><%= complexContent[300] %></p>
<h2><%= complexContent[301] %></h2>
<p><%= complexContent[302] %><br>
<%= complexContent[303] %><br>
<%= complexContent[304] %>
<div class="equation"><%= complexContent[305] %> <span style="margin-left:100px;"><%= translatableContent[34] %></span></div>
</p>
<p><%= complexContent[306] %></p>
<div class="equation"><%= complexContent[307] %><span style="margin-left:100px;"><%= translatableContent[35] %></span></div>
<p><%= complexContent[308] %></p>
<p><%= complexContent[309] %><br>
<%= complexContent[310] %><br>
<%= complexContent[311] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[312] %></legend>
    <p><%= complexContent[313] %></p>
</fieldset>
<div class="example">
<div class="exam_no"><%= simpleContent[53] %></div>
<p><%= complexContent[314] %></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[315] %><br>
<%= complexContent[316] %><br>
<%= complexContent[317] %><br>
<%= complexContent[318] %></p>
</div>
<div class="example">
<div class="exam_no"><%= simpleContent[54] %></div>
<p><%= complexContent[319] %></p>
<div class="exam_no"><%= simpleContent[2] %></div>
<p><%= complexContent[320] %><br><%= complexContent[321] %><br><%= complexContent[322] %><br> <%= complexContent[323] %><br><%= complexContent[324] %></p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[3] %></div>
    <ul class="question-list">
        <li><%= complexContent[325] %></li>
	<li><%= complexContent[326] %></li>
    </ul>
</div>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[327] %></legend>
    <ul class="what-learnt-list">
        <li><%= complexContent[328] %></li>
	<li><%= complexContent[329] %></li>
	<li><%= complexContent[330] %></li>
	<li><%= complexContent[331] %></li>
	<li><%= complexContent[332] %></li>
	<li><%= complexContent[333] %></li>
	<li><%= complexContent[334] %></li>
	<li><%= complexContent[335] %><br>
		<%= complexContent[336] %>
	</li>
	<li><%= complexContent[337] %><br><%= complexContent[338] %></li>
	<li><%= complexContent[339] %></li>
	<li><%= complexContent[340] %><br><%= complexContent[341] %></li>
    </ul>
</fieldset>
<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[55] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[342] %>
            <ul class="exercise-sub-list">
                <li><%= translatableContent[36] %></li>
                <li><%= translatableContent[37] %></li>
                <li><%= translatableContent[7] %></li>
                <li><%= translatableContent[38] %></li>
            </ul>
        </li>
	<li><%= complexContent[343] %>
            <ul class="exercise-sub-list">
                <li><%= simpleContent[56] %></li>
                <li><%= simpleContent[57] %></sup></li>
                <li><%= simpleContent[58] %></li>
                <li><%= simpleContent[59] %></li>
            </ul>
        </li>
	<li><%= complexContent[344] %>
            <ul class="exercise-sub-list">
                <li><%= simpleContent[60] %></li>
                <li><%= simpleContent[61] %></li>
                <li><%= simpleContent[62] %></li>
                <li><%= simpleContent[63] %></li>
            </ul>
        </li>
	<li><%= complexContent[345] %>
            <ul class="exercise-sub-list">
                <li><%= translatableContent[39] %></li>
                <li><%= translatableContent[40] %></li>
                <li><%= translatableContent[41] %></li>
                <li><%= translatableContent[42] %></li>
            </ul>
        </li>
        <li><%= complexContent[346] %></li>
	<li><%= complexContent[347] %></li>
	<li><%= complexContent[348] %><br>
	<%= simpleContent[64] %><br>
	<%= simpleContent[65] %>	<br><%= complexContent[349] %>
	</li>
	<li><%= complexContent[350] %></li>
	<li><%= complexContent[351] %></li>
	<li><%= complexContent[352] %></li>
	<li><%= complexContent[353] %></li>
	<li><%= complexContent[354] %></li>
	<li><%= complexContent[355] %></li>
	<li><%= complexContent[356] %></li>
	<li><%= complexContent[357] %></li>
	<li><%= complexContent[358] %></li>
	<li><%= complexContent[359] %></li>
	<li><%= complexContent[360] %>
	<ul class="exercise-sub-list">
	    <li><%= complexContent[361] %></li>
            <li><%= complexContent[362] %></li>
            <li><%= complexContent[363] %></li>
	    <li><%= complexContent[364] %></li>
	    <li><%= complexContent[365] %></li>
	</ul>	
	</li>
    </ul>
</fieldset>
</div>
  </body>
</html>

