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
    <fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[0] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[2] %></li>
        <li><%= complexContent[3] %></li>
        <li><%= complexContent[4] %></li>
        <li><%= complexContent[5] %></li>
        
    </ul>
</fieldset>
<div class="images">
				<img src="image_magnetic_effect_of_electric_10/Figure_1.JPG">		        
				<br><%= complexContent[6] %>
</div>
<p><%= complexContent[7] %></p>

<div class="person">
    <div class="person-heading"><%= complexContent[8] %></div>
    <p><%= complexContent[9] %>
</p>
<div class="images">
				<img src="image_magnetic_effect_of_electric_10/HansChristian.JPG">        				
</div>
</div>


<h2><%= complexContent[10] %></h2>

<p><%= complexContent[11] %>
</p>
<div class="question">
    <div class="question-heading"><%= simpleContent[1] %></div>
    <ul class="question-list">
        <li><%= complexContent[12] %></li>
       
    </ul>
</div>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[13] %></li>
        <li><%= complexContent[14] %></li>
        <li><%= complexContent[15] %></li>
        <li><%= complexContent[16] %></li>
		<li><%= complexContent[17] %></li>
        
    </ul>
</fieldset>
<div class="images">
				<img src="image_magnetic_effect_of_electric_10/Figure_2.JPG"> 
				<br><%= complexContent[18] %>       				
</div>
<p><%= complexContent[19] %></p>
<p><%= complexContent[20] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[3] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[21] %></li>
        <li><%= complexContent[22] %></li>
        <li><%= complexContent[23] %></li>
        <li><%= complexContent[24] %></li>
		<li><%= complexContent[25] %></li>
		<li><%= complexContent[26] %></li>
		<li><%= complexContent[27] %></li>
		<li><%= complexContent[28] %></li>
		<li><%= complexContent[29] %></li>        
    </ul>
</fieldset>
<div class="images">
				<img src="image_magnetic_effect_of_electric_10/Figure_3.JPG"> 
				<br><%= complexContent[30] %>       				
</div>
<div class="images">
				<img src="image_magnetic_effect_of_electric_10/Figure_4.JPG"> 
				<br><%= complexContent[31] %>       				
</div>
<p><%= complexContent[32] %>
</p>
<p><%= complexContent[33] %></p>
<p><%= complexContent[34] %></p>
<h2><%= complexContent[35] %></h2>
<p><%= complexContent[36] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[4] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[37] %></li>
        <li><%= complexContent[38] %></li>
        <li><%= complexContent[39] %></li>
        <li><%= complexContent[40] %></li>
		<li><%= complexContent[41] %></li>
		<li><%= complexContent[42] %></li>     
    </ul>
</fieldset>
<div class="images">
				<img src="image_magnetic_effect_of_electric_10/Figure_5.JPG"> 
				<br><%= complexContent[43] %>     				
</div>
<h3><%= complexContent[44] %></h3>
<p><%= complexContent[45] %></p>
<p><%= complexContent[46] %></p>
<fieldset class="activity">
<legend class="activity-legend"><%= simpleContent[5] %></legend>
<ul class="activity-list">
	<li><%= complexContent[47] %></li>
	<li><%= complexContent[48] %></li>
	<li><%= complexContent[49] %></li>
	<li><%= complexContent[50] %></li>
	<li><%= complexContent[51] %></li>
	<li><%= complexContent[52] %></li>
	<li><%= complexContent[53] %></li>
	<li><%= complexContent[54] %></li>
	<li><%= complexContent[55] %></li>
	<li><%= complexContent[56] %></li>
</ul>
</fieldset>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_6.JPG"> <br> 
<%= complexContent[57] %>
</div>
<p><%= complexContent[58] %></p>
<p><%= complexContent[59] %></p>
<h3><%= complexContent[60] %></h3>
<p><%= complexContent[61] %></p>
<p><%= complexContent[62] %></p>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_7.JPG"> <br> 
<%= complexContent[63] %>
</div>
<div class="example">
	<div class="exam_no"><%= simpleContent[6] %></div>
	<p><%= complexContent[64] %></p>
	<div class="exam_no"><%= simpleContent[7] %></div>
	<p><%= complexContent[65] %></p>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[1] %></div>
    <ul class="question-list">
        <li><%= complexContent[66] %></li>
        <li><%= complexContent[67] %></li>
        <li><%= complexContent[68] %></li>
    </ul>
</div>
<h3><%= complexContent[69] %></h3>
<p><%= complexContent[70] %></p>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_8.JPG"> <br> 
<%= complexContent[71] %>
</div>
<p><%= complexContent[72] %></p>
<p><%= complexContent[73] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[8] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[74] %></li>
        <li><%= complexContent[75] %></li>
        <li><%= complexContent[76] %></li>
        <li><%= complexContent[77] %></li>
        <li><%= complexContent[78] %></li>
    </ul>
</fieldset>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_9.JPG"> <br> 
<%= complexContent[79] %>
</div>
<h3><%= complexContent[80] %></h3>
<p><%= complexContent[81] %></p>
<p><%= complexContent[82] %></p>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_10.JPG"> <br> 
<%= complexContent[83] %>
</div>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_11.JPG"> <br> 
<%= complexContent[84] %>
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[1] %></div>
    <ul class="question-list">
        <li><%= complexContent[85] %></li>
        <li><%= complexContent[86] %></li>
        <li><%= complexContent[87] %><br>
<%= complexContent[88] %>
			<ul class="question-sub-list">
				<li><%= simpleContent[9] %></li>
				<li><%= complexContent[89] %></li>
				<li><%= complexContent[90] %></li>
				<li><%= complexContent[91] %></li>
			</ul>
		</li>   
 </ul>
</div>
<h2><%= complexContent[92] %></h2>
<p><%= complexContent[93] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[10] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[94] %></li>
        <li><%= complexContent[95] %></li>
        <li><%= complexContent[96] %></li>
        <li><%= complexContent[97] %></li>
        <li><%= complexContent[98] %></li>
		<li><%= complexContent[99] %></li>
    </ul>
</fieldset>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_12.JPG"> <br> 
<%= complexContent[100] %>
</div>
<p><%= complexContent[101] %></p>
<p><%= complexContent[102] %></p>
<p><%= complexContent[103] %></p>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_13.JPG"> <br> 
<%= complexContent[104] %>
</div>

<div class="example">
<div class="exam_no"><%= simpleContent[11] %></div>
<p><%= complexContent[105] %>
<ul class="example-list">
	<li><%= complexContent[106] %></li>
	<li><%= complexContent[107] %></li>
	<li><%= complexContent[108] %></li>
	<li><%= complexContent[109] %></li>
</ul>
</p>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_14.JPG"> <br> 
<%= simpleContent[12] %>
</div>
<div class="exam_no"><%= simpleContent[7] %></div>
<p><%= complexContent[110] %></p>
</div>

<div class="question">
    <div class="question-heading"><%= simpleContent[1] %></div>
    <ul class="question-list">
        <li><%= complexContent[111] %>
		<ul class="question-sub-list">
				<li><%= simpleContent[13] %></li>
				<li><%= simpleContent[14] %></li>
				<li><%= simpleContent[15] %></li>
				<li><%= simpleContent[16] %></li>
		</ul>
		</li>
        <li><%= complexContent[112] %></li>
        <li><%= complexContent[113] %>
			<ul class="question-sub-list">
				<li><%= simpleContent[17] %></li>
				<li><%= simpleContent[18] %></li>
				<li><%= simpleContent[19] %></li>
				<li><%= simpleContent[20] %></li>
			</ul>
		</li>
    </ul>
</div>



<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[114] %></legend>
	<h4 class="know-more-heading"><%= complexContent[115] %></h4>
    <p>
        <%= complexContent[116] %>
    </p>
</fieldset>
<h2><%= complexContent[117] %></h2>
<p><%= complexContent[118] %></p>
<p><%= complexContent[119] %></p>

<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_15.JPG"> <br> 
<%= complexContent[120] %>
</div>
<p><%= complexContent[121] %></p>
<p><%= complexContent[122] %></p>
<div class="question">
    <div class="question-heading"><%= simpleContent[1] %></div>
    <ul class="question-list">
        <li><%= complexContent[123] %></li>
        <li><%= complexContent[124] %></li>
        <li><%= complexContent[125] %></li>
    </ul>
</div>
<h2><%= complexContent[126] %></h2>
<p><%= complexContent[127] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[21] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[128] %></li>
        <li><%= complexContent[129] %></li>
        <li><%= complexContent[130] %></li>
        <li><%= complexContent[131] %></li>
        <li><%= complexContent[132] %></li>
		<li><%= complexContent[133] %></li>
		<li><%= complexContent[134] %></li>
    </ul>
</fieldset>
<div class="images">
<img src="image_magnetic_effect_of_electric_10/Figure_16.JPG"> <br> 
<%= complexContent[135] %>
</div>
<div class="person">
    <div class="person-heading"><%= simpleContent[22] %></div>
    <p><%= complexContent[136] %></p>
<div class="images">
	<img src="image_magnetic_effect_of_electric_10/galvanometer.JPG">        				
</div>
</div>
<p><%= complexContent[137] %></p>
<div class="person">
    <div class="person-heading"><%= complexContent[138] %></div>
    <p><%= complexContent[139] %></p>
<div class="images">
	<img src="image_magnetic_effect_of_electric_10/MichaelFaraday.JPG">        				
</div>
</div>
<p><%= complexContent[140] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[23] %></legend>
    <ul class="activity-list">
        <li><%= complexContent[141] %></li>
        <li><%= complexContent[142] %></li>
        <li><%= complexContent[143] %></li>
        <li><%= complexContent[144] %></li>
    </ul>
</fieldset>
<div class="images">
	<img src="image_magnetic_effect_of_electric_10/Figure_17.JPG"><br>
	<%= complexContent[145] %>     				
</div>
<p><%= complexContent[146] %></p>
<p><%= complexContent[147] %></p>
<p><%= complexContent[148] %></p>
<div class="images">
	<img src="image_magnetic_effect_of_electric_10/Figure_18.JPG"><br>
	<%= complexContent[149] %>				
</div>
<div class="question">
    <div class="question-heading"><%= simpleContent[1] %></div>
    <ul class="question-list">
        <li><%= complexContent[150] %></li>
    </ul>
</div>
<h2><%= complexContent[151] %></h2>
<p><%= complexContent[152] %></p>
<p><%= complexContent[153] %></p>
<div class="images">
	<img src="image_magnetic_effect_of_electric_10/Figure_19.JPG"><br>
	<%= complexContent[154] %>			
</div>
<p><%= complexContent[155] %></p>
<p><%= complexContent[156] %>
</p>
<p><%= complexContent[157] %></p>
<p><%= complexContent[158] %>
</p>
<div class="question">
    <div class="question-heading"><%= simpleContent[1] %></div>
    <ul class="question-list">
        <li><%= complexContent[159] %></li>
        <li><%= complexContent[160] %></li>
        <li><%= complexContent[161] %></li>
        <li><%= complexContent[162] %><br><%= complexContent[163] %>
		<ul class="question-sub-list">
			<li><%= simpleContent[24] %></li>
			<li><%= simpleContent[25] %></li>
			<li><%= simpleContent[26] %></li>
			<li><%= simpleContent[27] %></li>
		</ul>
		</li>
    </ul>
</div>
<h2><%= complexContent[164] %></h2>
<p><%= complexContent[165] %></p>
<p><%= complexContent[166] %>
</p>
<div class="images">
	<img src="image_magnetic_effect_of_electric_10/Figure_20.JPG"><br>
	<%= complexContent[167] %>		
</div>
<p><%= complexContent[168] %></p>
<p><%= complexContent[169] %></p>
<div class="question">
    <div class="question-heading"><%= simpleContent[1] %></div>
    <ul class="question-list">
        <li><%= complexContent[170] %></li>
        <li><%= complexContent[171] %></li>
        <li><%= complexContent[172] %></li>
    </ul>
</div>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[173] %></legend>
    <ul class="what-learnt-list">
		<li><%= complexContent[174] %></li>
		<li><%= complexContent[175] %></li>
		<li><%= complexContent[176] %></li>
		<li><%= complexContent[177] %></li>
		<li><%= complexContent[178] %></li>
		<li><%= complexContent[179] %></li>
		<li><%= complexContent[180] %></li>
		<li><%= complexContent[181] %></li>
		<li><%= complexContent[182] %></li>
		<li><%= complexContent[183] %></li>
		<li><%= complexContent[184] %></li>
	</ul>
</fieldset>
<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[28] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[185] %>
            <ul class="exercise-sub-list">
                <li><%= complexContent[186] %></li>
                <li><%= complexContent[187] %></li>
                <li><%= complexContent[188] %></li>
                <li><%= complexContent[189] %></li>
            </ul>
        </li>
        <li><%= complexContent[190] %>
		<ul class="exercise-sub-list">
			<li><%= complexContent[191] %></li>
			<li><%= complexContent[192] %></li>
			<li><%= complexContent[193] %></li>
			<li><%= complexContent[194] %></li>
		</ul>
		</li>
		<li><%= complexContent[195] %>
		<ul class="exercise-sub-list">
			<li><%= simpleContent[29] %></li>
			<li><%= simpleContent[30] %></li>
			<li><%= simpleContent[31] %></li>
			<li><%= simpleContent[32] %></li>
		</ul>
		</li>
		<li><%= complexContent[196] %>
		<ul class="exercise-sub-list">
			<li><%= complexContent[197] %></li>
			<li><%= complexContent[198] %></li>
			<li><%= complexContent[199] %></li>
			<li><%= complexContent[200] %></li>
		</ul>
		</li>
		<li><%= complexContent[201] %>
		<ul class="exercise-sub-list">
			<li><%= simpleContent[33] %></li>
			<li><%= complexContent[202] %></li>
			<li><%= simpleContent[34] %></li>
			<li><%= simpleContent[35] %></li>
		</ul>
		</li>
		<li><%= complexContent[203] %>
		<ul class="exercise-sub-list">
			<li><%= complexContent[204] %></li>
			<li><%= complexContent[205] %></li>
			<li><%= complexContent[206] %></li>
			<li><%= complexContent[207] %></li>
		</ul>
		</li>
		<li><%= complexContent[208] %></li>
		<li><%= complexContent[209] %></li>
		<li><%= complexContent[210] %></li>
		<li><%= complexContent[211] %></li>
		<li><%= complexContent[212] %></li>
		<li><%= complexContent[213] %></li>
		<li><%= complexContent[214] %></li>
		<li><%= complexContent[215] %></li>
		<li><%= complexContent[216] %></li>
		<li><%= complexContent[217] %></li>
		<li><%= complexContent[218] %></li>
		<li><%= complexContent[219] %></li>
    </ul>
</fieldset>
</div>
  </body>
</html>


