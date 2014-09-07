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
      <p><%= complexContent[1] %></p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_1.JPG"><br><%= complexContent[2] %></div>
<p><%= complexContent[3] %> 
  </p><p><%= complexContent[4] %>
  </p><p><%= complexContent[5] %>
   </p><p><%= complexContent[6] %></p>
   
<h2><%= complexContent[7] %></h2>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[0] %></legend>
    <p><%= complexContent[8] %></p>
</fieldset>
<p><%= complexContent[9] %></p>
<p><%= complexContent[10] %></p>
<p><%= complexContent[11] %></p>
<div class="paheli">
    <p><%= complexContent[12] %></p>
</div>
<div class="boojho"><p><%= complexContent[13] %></p></div>
<div class="images"><img src="images_stars_solar_system_VIII/figure_2.JPG"><br><%= complexContent[14] %></div>

<p><%= complexContent[15] %></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_3.JPG"><br><%= complexContent[16] %></div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[1] %></legend>
    <p><%= complexContent[17] %></p>
<p><%= complexContent[18] %></p>
<p><%= complexContent[19] %></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_4_a.JPG" style="margin-right:20px;" height="250px"><img src="images_stars_solar_system_VIII/figure_4_b.JPG"  height="250px"></br><%= complexContent[20] %>  </div>
</fieldset>

<div class="images"><img src="images_stars_solar_system_VIII/figure_5.JPG"><br><%= complexContent[21] %></div>

<div class="paheli">
    <p><%= complexContent[22] %></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_6.JPG"><br><%= complexContent[23] %></div>
</div>
<p><%= complexContent[24] %>
    </p><p><%= complexContent[25] %></p>
<div class="boojho"><p><%= complexContent[26] %></p>
</div>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend>
    <p><%= complexContent[27] %></p>
</fieldset>
<p><%= complexContent[28] %></p>
<h4><%= complexContent[29] %></h4>
<p><%= complexContent[30] %></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_7.JPG"><br><%= complexContent[31] %></div>
<p><%= complexContent[32] %></p>
<div class="boojho"><p><%= complexContent[33] %></p>
</div>
<div class="paheli"><p><%= complexContent[34] %></p>
</div>

<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[35] %></legend>
    <p><%= complexContent[36] %></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_8.JPG"></br><%= complexContent[37] %></div>
</fieldset>
<h2><%= complexContent[38] %></h2>
<p><%= complexContent[39] %>
  </p><p><%= complexContent[40] %>
</p>
<fieldset class="what-learnt">
    <p><%= complexContent[41] %></p>
    <p><%= complexContent[42] %></p>
    <p><%= complexContent[43] %></p>
</fieldset>
<div class="boojho"><p><%= complexContent[44] %></p>
</div>
<div class="paheli"><p><%= complexContent[45] %></p>
</div>
<p><%= complexContent[46] %>
   </p><p><%= complexContent[47] %>
  </p><p> <%= complexContent[48] %>
</P>


<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[3] %></legend>
    <p><%= complexContent[49] %></p>
</fieldset>
<p><%= complexContent[50] %>
  </p><p><%= complexContent[51] %>
</p>

<div class="paheli"><p><%= complexContent[52] %></p>
</div>
<div class="boojho"><p><%= complexContent[53] %></p>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[4] %></legend>
    <p><%= complexContent[54] %></p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_9.JPG"></br><%= complexContent[55] %></div>

<p><%= complexContent[56] %></p>
</fieldset>

<p><%= complexContent[57] %>
  </p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_10.JPG"></br><%= complexContent[58] %></div>
<h2><%= simpleContent[5] %></h2>
<p><%= complexContent[59] %>
  </p><p><%= complexContent[60] %></p>

<div class="paheli">
    <p><%= complexContent[61] %></p>
</div>
<p><%= complexContent[62] %>
</p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_11.JPG"></br><%= complexContent[63] %></div>
<P><%= complexContent[64] %>
  </P><P><%= complexContent[65] %></P>
<div class="images"><img src="images_stars_solar_system_VIII/figure_12.JPG"></br><%= complexContent[66] %></div>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[6] %></legend>
    <p><%= complexContent[67] %></p>
    <p><%= complexContent[68] %></p>
    <p><%= complexContent[69] %></p>
</fieldset>
<div class="boojho"><p><%= complexContent[70] %></p>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[7] %></legend>
    <p><%= complexContent[71] %>
</p>
</fieldset>
<div class="images"><img src="images_stars_solar_system_VIII/figure_13.JPG"></br><%= complexContent[72] %></div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[8] %></legend>
    <p><%= complexContent[73] %></p>
</fieldset>
<div class="images"><img src="images_stars_solar_system_VIII/figure_14.JPG"></br><%= complexContent[74] %></div>
<p><%= complexContent[75] %></p>
<div class="paheli">
    <p><%= complexContent[76] %></p>
</div>
<p><%= complexContent[77] %>
   </p><p><%= complexContent[78] %> 
</p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_15.JPG"></br><%= complexContent[79] %></div>
<p><%= complexContent[80] %></p>



<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[81] %></legend>
    <p><%= complexContent[82] %>

</p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_16.JPG"></br><%= simpleContent[9] %></div>
</fieldset>

<h2><%= complexContent[83] %></h2>

<p><%= complexContent[84] %>
   </p><p><%= complexContent[85] %>
</p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_17.JPG"></br><%= complexContent[86] %></div>
<p><%= complexContent[87] %></p>

<div class="boojho"><p><%= complexContent[88] %></p>
</div>

<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[89] %></legend>
    <p><%= complexContent[90] %>
</p>
</fieldset>

<p><%= complexContent[91] %></p>


<h4><%= simpleContent[10] %></h4>
<p><%= complexContent[92] %></p>

<h4><%= simpleContent[11] %></h4>
<p><%= complexContent[93] %></p>
   <p><%= complexContent[94] %></p>
   <p><%= complexContent[95] %>
</p>
<div class="boojho"><p><%= complexContent[96] %></p>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[12] %></legend>
    <p><%= complexContent[97] %>
  </p><p><%= complexContent[98] %>
  </p><p><%= complexContent[99] %>

</p>
</fieldset>
<div class="images"><img src="images_stars_solar_system_VIII/figure_18.JPG"></br><%= complexContent[100] %></div>
<p><%= complexContent[101] %></p>


<div class="images"><img src="images_stars_solar_system_VIII/figure_19.JPG"></br><%= complexContent[102] %></div>

<p><%= complexContent[103] %>
</p>
<div class="paheli"><p><%= complexContent[104] %></p>
</div>


<p><%= complexContent[105] %>
  </p><p><%= complexContent[106] %>
</p>
<h4><%= simpleContent[13] %></h4>
<div class="images"><img src="images_stars_solar_system_VIII/mercury.JPG"></br><%= simpleContent[13] %></div>

<p><%= complexContent[107] %>
</p>


<h4><%= simpleContent[14] %></h4>
<div class="images"><img src="images_stars_solar_system_VIII/venus.JPG"></br><%= simpleContent[14] %></div>

<p><%= complexContent[108] %>
   </p><p><%= complexContent[109] %>
</p>


<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[15] %></legend>
    <p><%= complexContent[110] %>
</p>
</fieldset>

<p><%= complexContent[111] %>
</p>

<div class="paheli"><p><%= complexContent[112] %></p>
</div>
<p><%= complexContent[113] %></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_20.JPG"><br><%= complexContent[114] %> </div>

<h4><%= complexContent[115] %></h4>
<div class="images"><img src="images_stars_solar_system_VIII/earth.JPG"></br><%= simpleContent[16] %></div>
<p><%= complexContent[116] %></p>
<div class="boojho"><p><%= complexContent[117] %></p>
</div>

<p><%= complexContent[118] %> 
  </p><p><%= complexContent[119] %>
</p>
<div class="paheli"><p><%= complexContent[120] %></p></div>

<h4><%= simpleContent[17] %></H4>
<div class="images"><img src="images_stars_solar_system_VIII/marsh.JPG"></br><%= simpleContent[18] %></div>

<p><%= complexContent[121] %></p>

<h4><%= simpleContent[19] %></H4>
<div class="images"><img src="images_stars_solar_system_VIII/juipter.JPG"></br><%= simpleContent[20] %></div>

<p><%= complexContent[122] %></p>

<div class="paheli">
    <p><%= complexContent[123] %></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_21.JPG"></br><%= complexContent[124] %></div>
</div>
<div class="boojho"><p><%= complexContent[125] %></p>
</div>

<div class="images"><img src="images_stars_solar_system_VIII/figure_22.JPG"></br><%= complexContent[126] %></div>

<p><%= complexContent[127] %></p>


<h4><%= simpleContent[21] %></h4>
<p><%= complexContent[128] %></p>
<div class="paheli"><p><%= complexContent[129] %></p>
</div>
<div class="images"><img src="images_stars_solar_system_VIII/figure_23.JPG"></br><%= complexContent[130] %></div>
<p><%= complexContent[131] %>
</p>

<h4><%= complexContent[132] %></h4>
<p><%= complexContent[133] %>
  </p><p><%= complexContent[134] %>
</p>

<div class="images"><img src="images_stars_solar_system_VIII/figure_24.JPG"></br><%= complexContent[135] %></div>
<p><%= complexContent[136] %>
</p>

<h2><%= complexContent[137] %></h2>
<p><%= complexContent[138] %>
</p>
<h4><%= simpleContent[22] %></h4>
<p><%= complexContent[139] %></p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_25.JPG"></br><%= complexContent[140] %></div>

<h4><%= simpleContent[23] %></h4>
<p><%= complexContent[141] %>
</p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_26.JPG"></br><%= complexContent[142] %></div>

<p><%= complexContent[143] %></p>

<div class="paheli">
<h4 style="text-align:center;"><%= complexContent[144] %></h4>
<p><%= complexContent[145] %></p>
</div>
<h4><%= complexContent[146] %></h4>

<p><%= complexContent[147] %>
</p>
<div class="images"><img src="images_stars_solar_system_VIII/figure_27.JPG"></br><%= complexContent[148] %></div>

<p><%= complexContent[149] %>
</p>

<div class="paheli">
<h4 style="text-align:center;"><%= simpleContent[24] %></h4>
<p><%= complexContent[150] %>
</div>
<h4><%= simpleContent[25] %></h4>
<p><%= complexContent[151] %>
  </p><p><%= complexContent[152] %> </p>
<p> <%= complexContent[153] %>
</p>
<div class="boojho"><p><%= complexContent[154] %></p>
</div>
<div class="images"><img src="images_stars_solar_system_VIII/figure_28.JPG"></br><%= complexContent[155] %></div>

<div class="keywords">
<div class="keywords-heading"><%= simpleContent[26] %></div>
    <ul class="what-learnt-list">
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
  <li><%= simpleContent[37] %></li>
  <li><%= simpleContent[38] %></li>
  <li><%= complexContent[156] %></li>
  <li><%= simpleContent[39] %></li>
  <li><%= simpleContent[40] %></li>
  <li><%= simpleContent[41] %></li>
  <li><%= simpleContent[42] %></li>
  <li><%= simpleContent[43] %></li>
  </ul>
</div>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[157] %></legend>
    <ul class="what-learnt-list">
        <li><%= complexContent[158] %></li>
	<li><%= complexContent[159] %></li>
	<li><%= complexContent[160] %></li>
	<li><%= complexContent[161] %></li>
	<li><%= complexContent[162] %></li>
	<li><%= complexContent[163] %></li>
	<li><%= complexContent[164] %></li>
	<li><%= complexContent[165] %></li>
	<li><%= complexContent[166] %></li>
	<li><%= complexContent[167] %></li>
	<li><%= complexContent[168] %></li>
	<li><%= complexContent[169] %></li>
	<li><%= complexContent[170] %></li>
     </ul>
</fieldset>



<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[44] %></legend>
    <ul class="exercise-list">
<h4><%= complexContent[171] %></h4>
 <li><%= complexContent[172] %>
            <ul class="exercise-sub-list">
                <li><%= simpleContent[45] %></li>
                <li><%= simpleContent[46] %></li>
                <li><%= simpleContent[47] %></li>
                <li><%= simpleContent[48] %></li>
            </ul>
</li>
 <li><%= complexContent[173] %>
            <ul class="exercise-sub-list">
                <li><%= simpleContent[49] %></li>
                <li><%= simpleContent[50] %></li>
                <li><%= simpleContent[51] %></li>
                <li><%= simpleContent[16] %></li>
            </ul>  
</li>
	<li><%= complexContent[174] %>
            <ul class="exercise-sub-list">
                 <li><%= complexContent[175] %> </li>
				<li><%= complexContent[176] %> </li>
				<li><%= complexContent[177] %> </li>
				<li><%= complexContent[178] %></li>
            </ul>  
	</li>		 
 <li><%= complexContent[179] %>
             <ul class="exercise-sub-list">
                <li><%= complexContent[180] %></li>
                <li><%= complexContent[181] %></li>
                <li><%= complexContent[182] %></li>
                <li> <%= complexContent[183] %></li>
                <li><%= complexContent[184] %></li>
				<li><%= complexContent[185] %></li>
            </ul>
</li>			
<li><%= complexContent[186] %>
<ul class="exercise-sub-list">
                <li><%= complexContent[187] %></li>
                <li><%= complexContent[188] %></li>
                <li><%= complexContent[189] %></li>
                <li> <%= complexContent[190] %></li>
                <li><%= complexContent[191] %></li>
                <li><%= complexContent[192] %></li>  
                <li><%= complexContent[193] %></li>
          </ul> 
</li>
            
	  <li> <%= complexContent[194] %>
		<table style="border:none;">
		<tr class="green-th">
		<th style="color:black;"><%= translatableContent[0] %></th>
		<th style="color:black;"><%= translatableContent[1] %></th>
		</tr>
		<tr class="green-td">
		<td style="vertical-align:top;">
			<ul style="list-style:lower-roman;">
			<li><%= simpleContent[52] %></li>
			<li><%= simpleContent[53] %></li>
			<li><%= simpleContent[54] %></li>
			<li><%= complexContent[195] %></li>
			</ul>		
		</td>
		<td style="vertical-align:top;">
			<ul style="list-style:lower-alpha;">
			<li><%= simpleContent[51] %></li>
			<li><%= simpleContent[55] %></li>
			<li><%= simpleContent[56] %></li>
			<li><%= simpleContent[57] %></li>
			<li><%= simpleContent[16] %></li>
			<li><%= simpleContent[58] %></li>
			<li><%= simpleContent[18] %></li>
			</ul>	
		</td>
		</tr>
		</table>
          </li>		  
		  
		 
		 
    <li><%= complexContent[196] %></li>
    <li><%= complexContent[197] %></li>
    <li><%= complexContent[198] %></li>
    
	<li><%= complexContent[199] %>
            <ul class="exercise-sub-list">
                <li><%= complexContent[200] %></li>
                <li><%= simpleContent[58] %></li>
	    </ul>
        </li>
	<li><%= complexContent[201] %></li><%= complexContent[202] %></li>
<li><%= complexContent[203] %></li>
<li><%= complexContent[204] %></li>
<li><%= complexContent[205] %></li>
<li><%= complexContent[206] %></li>			
<div class="images"><img src="images_stars_solar_system_VIII/figure_29.JPG"></br><%= simpleContent[59] %></div>
 </fieldset>
<div class="project">      
<div class="project-heading"> <%= complexContent[207] %></div>
   <ul class="project-list">
   <li><%= complexContent[208] %></li>
<li><%= complexContent[209] %></li>
<li><%= complexContent[210] %></li>
<li><%= complexContent[211] %>
</li>
<div class="images"><img src="images_stars_solar_system_VIII/figure_30.JPG"></br><%= simpleContent[60] %></div>
<p> <%= complexContent[212] %></p>

<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[213] %></legend>
    <p><%= complexContent[214] %></p>
<p><%= complexContent[215] %></p>
</fieldset>

<li><%= complexContent[216] %></li>


<h5><strong><%= simpleContent[61] %></strong></h5>
<table style="border:none;">
    <tr class="green-th">
    	<th><%= complexContent[217] %></th>
	<th><%= complexContent[218] %></th>
	<th><%= complexContent[219] %></th>
	<th><%= complexContent[220] %></th>
	<th><%= complexContent[221] %></th>
    </tr>
    <tr class="green-td">
    	<td><%= simpleContent[50] %></td>
	<td><%= translatableContent[2] %></td>
	<td><%= translatableContent[3] %></td>
	<td><%= simpleContent[62] %></td>
	<td><%= simpleContent[63] %></td>
    </tr>
    <tr class="green-td">
    	<td><%= simpleContent[64] %></td>
	<td><%= translatableContent[4] %></td>
	<td><%= translatableContent[5] %></td>
	<td><%= simpleContent[65] %></td>
	<td><%= simpleContent[66] %></td>
    </tr>
    <tr class="green-td">
    	<td><%= simpleContent[16] %></td>
	<td><%= translatableContent[6] %></td>
	<td><%= translatableContent[6] %></td>
	<td><%= simpleContent[67] %></td>
	<td><%= simpleContent[68] %></td>
    </tr>
    <tr class="green-td">
    	<td><%= simpleContent[18] %></td>
	<td><%= translatableContent[7] %></td>
	<td><%= translatableContent[8] %></td>
	<td><%= simpleContent[69] %></td>
	<td><%= simpleContent[70] %></td>
    </tr>
    <tr class="green-td">
    	<td><%= simpleContent[71] %></td>
	<td><%= translatableContent[9] %></td>
	<td><%= translatableContent[10] %></td>
	<td><%= simpleContent[70] %></td>
	<td><%= complexContent[222] %></td>
    </tr>
    <tr class="green-td">
    	<td><%= simpleContent[51] %></td>
	<td><%= translatableContent[11] %></td>
	<td><%= translatableContent[12] %></td>
	<td><%= simpleContent[72] %></td>
	<td><%= simpleContent[73] %></td>
    </tr>
    <tr class="green-td">
    	<td><%= simpleContent[74] %></td>
	<td><%= translatableContent[13] %></td>
	<td><%= translatableContent[14] %></td>
	<td><%= simpleContent[75] %></td>
	<td><%= simpleContent[76] %></td>
    </tr>
    <tr class="green-td">
    	<td><%= simpleContent[77] %></td>
	<td><%= translatableContent[15] %></td>
	<td><%= translatableContent[16] %></td>
	<td><%= simpleContent[78] %></td>
	<td><%= translatableContent[17] %></td>
    </tr>
</table>
<li><%= complexContent[223] %></li>
<li><%= complexContent[224] %></li>

 <p><%= complexContent[225] %></p>
 <p><%= complexContent[226] %></p>
 <p><%= complexContent[227] %></p>
 <p><%= complexContent[228] %></p>
 <p><%= complexContent[229] %></p>
 <p><%= complexContent[230] %></p>
</div>  
 
 <fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[231] %></legend>
    <p><%= complexContent[232] %></p>
<p><%= complexContent[233] %></p>
<p><%= complexContent[234] %></p>

</fieldset>
  </div>
  </body>
</html>

