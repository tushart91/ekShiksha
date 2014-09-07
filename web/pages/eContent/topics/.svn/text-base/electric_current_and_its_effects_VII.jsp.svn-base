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
<div class="images"><img src="images_electric_current_VII/figure_1.JPG"><br><%= complexContent[2] %></div>
<p><%= complexContent[3] %></p>
<h2><%= complexContent[4] %></h2>
<p><%= complexContent[5] %></p>
<p><%= complexContent[6] %></p>
<p><%= complexContent[7] %></p>
<p><%= complexContent[8] %></p>

<h4><%= complexContent[9] %></h4>
<table style="border:1px solid black;">
    <tr class="pink-th">
	<th><%= simpleContent[0] %></th>
	<th><%= simpleContent[1] %></th>
	<th><%= simpleContent[2] %></th>
    </tr>
    <tr class="pink-td">
	<td ><%= translatableContent[0] %></td>
	<td><%= simpleContent[3] %><div class="images"><img src="images_electric_current_VII/tbl1_symbol_1.JPG" width="150" height="80"/></div></td>
	<td ><div class="images"><img src="images_electric_current_VII/tbl1_symbol_7.JPG" width="80" height="30"/></div></td>
    </tr>
    <tr class="pink-td">
	<td ><%= translatableContent[1] %></td>
	<td><%= simpleContent[4] %><div class="images"><img src="images_electric_current_VII/tbl1_symbol_2.JPG" width="150" height="80"/></div></td>
	<td ><div class="images"><img src="images_electric_current_VII/tbl1_symbol_8.JPG" width="80" height="30"/></div></td>
    </tr>
    <tr class="pink-td">
	<td ><%= translatableContent[2] %></td>
	<td><%= complexContent[10] %><div class="images"><img src="images_electric_current_VII/tbl1_symbol_3.JPG" width="150" height="80"/></div></td>
	<td ><div class="images"><img src="images_electric_current_VII/tbl1_symbol_9.JPG" width="80" height="30"/></div></td>
    </tr>
    <tr class="pink-td">
	<td ><%= translatableContent[3] %></td>
	<td><%= complexContent[11] %><div class="images"><img src="images_electric_current_VII/tbl1_symbol_4.JPG" width="150" height="80"/></div></td>
	<td ><div class="images"><img src="images_electric_current_VII/tbl1_symbol_10.JPG" width="80" height="30"/></div></td>
    </tr>
    <tr class="pink-td">
	<td ><%= translatableContent[4] %></td>
	<td><%= simpleContent[5] %><div class="images"><img src="images_electric_current_VII/tbl1_symbol_5.JPG" width="150" height="80"/></div></td>
	<td ><div class="images"><img src="images_electric_current_VII/tbl1_symbol_11.JPG" width="80" height="30"/></div></td>
    </tr>
    <tr class="pink-td">
	<td ><%= translatableContent[5] %></td>
	<td><%= simpleContent[6] %><div class="images"><img src="images_electric_current_VII/tbl1_symbol_6.JPG" width="150" height="80"/></div></td>
	<td ><div class="images"><img src="images_electric_current_VII/tbl1_symbol_12.JPG" width="80" height="30"/></div></td>
    </tr>
</table>
<p><%= complexContent[12] %></p>
<p><%= complexContent[13] %></p>
<p><%= complexContent[14] %></p>
<div class="images"><img src="images_electric_current_VII/figure_2.JPG"><br><%= complexContent[15] %></div>
<div class="images"><img src="images_electric_current_VII/figure_3.JPG"><br><%= complexContent[16] %></div>
<div class="images"><img src="images_electric_current_VII/figure_4.JPG"><br><%= complexContent[17] %></div>
<div class="images"><img src="images_electric_current_VII/figure_5.JPG"><br><%= complexContent[18] %></div>
<p><%= complexContent[19] %></p>
<p><%= complexContent[20] %></p> 
<fieldset class="what-learnt">
    <p><%= complexContent[21] %>
</p>
<div class="images"><img src="images_electric_current_VII/figure_6.JPG"><br><%= complexContent[22] %></div>				
</fieldset>
<p><%= complexContent[23] %></p>
<p><%= complexContent[24] %></p>
<p><%= complexContent[25] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[7] %></legend>
<p><%= complexContent[26] %></p>
<p><%= complexContent[27] %></p>
<p><%= complexContent[28] %></p>
<p><%= complexContent[29] %></p>
<p><%= complexContent[30] %></p>
<p><%= complexContent[31] %></p>
<div class="images"><img src="images_electric_current_VII/figure_7.JPG"><br><%= complexContent[32] %></div>

<div class="images"><img src="images_electric_current_VII/figure_8.JPG"><br><%= complexContent[33] %></div>
    <ul class="activity-list">
        <li><%= complexContent[34] %></li>
        <li><%= complexContent[35] %></li>
        <li><%= complexContent[36] %></li>
     </ul>
<div class="images"><img src="images_electric_current_VII/figure_9.JPG"><br><%= complexContent[37] %></div>
<p><%= complexContent[38] %></p>
<div class="think">
<div class="think-heading"> <%= simpleContent[8] %></div>
<p><%= complexContent[39] %></p>
</div>
<p><%= complexContent[40] %></p>
<p><%= complexContent[41] %></p>
</fieldset>

<h2><%= complexContent[42] %></h2>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[9] %></legend>
<p><%= complexContent[43] %></p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[10] %></legend>
<p><%= complexContent[44] %></p>
<div class="images"><img src="images_electric_current_VII/figure_10.JPG"><br><%= simpleContent[11] %></div>

<div class="think">
<div class="think-heading"> <%= simpleContent[8] %></div>
<p><%= complexContent[45] %></p>
</div>
<p><%= complexContent[46] %></p><p>
<%= complexContent[47] %>
<div class="images"><img src="images_electric_current_VII/heater.JPG"></div>
<%= complexContent[48] %></p>
<fieldset class="what-learnt">
    <p> <%= complexContent[49] %></p>
                  <div class="images"><img src="images_electric_current_VII/figure_11.JPG"><br><%= complexContent[50] %></div>       				
</fieldset>
                  <div class="images"><img src="images_electric_current_VII/figure_12.JPG"><br><%= complexContent[51] %></div>
<p> <%= complexContent[52] %></p><p>
     <%= complexContent[53] %></p><p>
    <%= complexContent[54] %></p><p>
     <%= complexContent[55] %></p><p>
<%= complexContent[56] %> </p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[12] %></legend>
<p><%= complexContent[57] %></p>
<fieldset class="what-learnt">
  <p> <%= complexContent[58] %></p>
                  <div class="images"><img src="images_electric_current_VII/figure_13.JPG"><br><%= complexContent[59] %></div>
 <p><%= complexContent[60] %></p>    				
</fieldset>
                 <div class="images"><img src="images_electric_current_VII/figure_14.JPG"><br><%= complexContent[61] %></div>
<p><%= complexContent[62] %></p><p>
    <%= complexContent[63] %></p>
                 <div class="images"><img src="images_electric_current_VII/figure_15.JPG"><br><%= complexContent[64] %></div>
<p><%= complexContent[65] %></p>

<div class="think">
<div class="think-heading"> <%= simpleContent[8] %></div>
<p><%= complexContent[66] %></p>
</div>
<fieldset class="what-learnt">
  <p> <%= complexContent[67] %></p>    				
</fieldset>
<p><%= complexContent[68] %></p>

<fieldset class="what-learnt">
  <p> <%= complexContent[69] %></p>
         	<div class="images"><img src="images_electric_current_VII/figure_16.JPG"><br><%= complexContent[70] %></div>			
</fieldset>

<div class="think">
<div class="think-heading"> <%= simpleContent[8] %></div>
<p><%= complexContent[71] %></p>
</div>
</fieldset>

<h2><%= complexContent[72] %></h2>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[13] %></legend>
    <p><%= complexContent[73] %></p><p>
     <%= complexContent[74] %></p>
                <div class="images"><img src="images_electric_current_VII/figure_17.JPG"><br><%= complexContent[75] %></div>
<p><%= complexContent[76] %></p><p>
      <%= complexContent[77] %></p><p>
      <%= complexContent[78] %></p>
                <div class="images"><img src="images_electric_current_VII/figure_18.JPG"><br><%= complexContent[79] %></div>
<p><%= complexContent[80] %></p><p>
   <%= complexContent[81] %></p><p>
<%= complexContent[82] %></p>
</fieldset>

<h2><%= simpleContent[14] %></h2>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[15] %></legend>
<p><%= complexContent[83] %></p>
              <div class="images"><img src="images_electric_current_VII/figure_19.JPG"><br><%= complexContent[84] %></div>

<fieldset class="what-learnt">
  <p> <%= complexContent[85] %></p>
</fieldset> 
<p><%= complexContent[86] %></p><p>
     <%= complexContent[87] %></p><p>
<%= complexContent[88] %></p><p>
<%= complexContent[89] %></p><p>
    <%= complexContent[90] %></p>
</fieldset>

<h2><%= simpleContent[16] %></h2>
<p><%= complexContent[91] %></p><p>
     <%= complexContent[92] %></p>
            <div class="images"><img src="images_electric_current_VII/figure_20.JPG"><br><%= complexContent[93] %></div>
<p><%= complexContent[94] %></p><p>
      <%= complexContent[95] %></p>

<h3><%= simpleContent[17] %></h3>
    <ul class="what-learnt-list">
        <li><%= simpleContent[5] %></li>
        <li><%= simpleContent[18] %></li>
        <li><%= simpleContent[19] %></li>
        <li><%= simpleContent[20] %></li>
        <li><%= simpleContent[21] %></li>
        <li><%= simpleContent[22] %></li>
        <li><%= simpleContent[23] %></li>
        <li><%= simpleContent[24] %></li>
    </ul>

<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[96] %></legend>
    <ul class="what-learnt-list">
          <li><%= complexContent[97] %></li>
          <li><%= complexContent[98] %></li>
          <li><%= complexContent[99] %></li>
          <li><%= complexContent[100] %></li>
          <li><%= complexContent[101] %></li>
          <li><%= complexContent[102] %></li>  
    </ul>
</fieldset>

<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[25] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[103] %></li>
        <li><%= complexContent[104] %></li>
           <div class="images"><img src="images_electric_current_VII/figure_21.JPG"><br><%= simpleContent[26] %></div> 
        <li><%= complexContent[105] %></li>
           <div class="images"><img src="images_electric_current_VII/figure_22.JPG"><br><%= simpleContent[27] %></div> 
        <li><%= complexContent[106] %></li>
           <div class="images"><img src="images_electric_current_VII/figure_23.JPG"><br><%= simpleContent[28] %></div>  
        <li><%= complexContent[107] %></li>
        <li><%= complexContent[108] %></li>
        <li><%= complexContent[109] %></li>  
           <div class="images"><img src="images_electric_current_VII/figure_24.JPG"><br><%= simpleContent[29] %></div>
        <li><%= complexContent[110] %>
             <ul class="exercise-sub-list">
                <li><%= complexContent[111] %></li>
                <li><%= complexContent[112] %></li>
                <li><%= complexContent[113] %></li>
                <li><%= complexContent[114] %> </li>
            </ul>         
        </li>
        
        <li><%= complexContent[115] %>   
               <ul class="exercise-sub-list">
                <li><%= complexContent[116] %></li>
                <li><%= complexContent[117] %></li>
                <li><%= complexContent[118] %></li>
                <li><%= complexContent[119] %></li>
              </ul>
        </li>
        <li><%= complexContent[120] %></li>
        <li><%= complexContent[121] %></li>
        <li><%= complexContent[122] %></li>
        <li><%= complexContent[123] %>
           <div class="images"><img src="images_electric_current_VII/figure_25.JPG"><br><%= simpleContent[30] %></div>
              <ul class="roman-small">
                <li><%= complexContent[124] %> </li>
                <li><%= complexContent[125] %></li>
              </ul>
        </li>
   </ul>
</fieldset>
<fieldset class="what-learnt">
<legend class="what-learnt-legend"><%= complexContent[126] %></legend>

             <ul class="what-learnt-list">
                 <li><%= complexContent[127] %></li> 
                 <li><%= complexContent[128] %></li>
<div class="think">
  <p>   <%= complexContent[129] %></p><p>
     <%= complexContent[130] %></p>
</div>
                <li><%= complexContent[131] %></li>
                     <div class="images"><img src="images_electric_current_VII/figure_26.JPG"><br><%= complexContent[132] %></div>
                <li><%= complexContent[133] %></li>  
             </ul>
</fieldset>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[134] %></legend>
    <p>
        <%= complexContent[135] %>
    </p>
             <div class="images"><img src="images_electric_current_VII/figure_27.JPG"><br><%= complexContent[136] %></div>
</fieldset>
	</div>
</body>
</html>

