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
<p><%= complexContent[2] %><br><%= complexContent[3] %></p>
<h2><%= complexContent[4] %></h2>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[1] %></legend>
   <p><%= complexContent[5] %></p>
           <div class="images"><img src="images_light_VIII/figure_1.JPG"><br><%= complexContent[6] %></div>
</fieldset>
<p><%= complexContent[7] %></p>

   <div class="paheli"> <p><%= complexContent[8] %></p></div>

<p><%= complexContent[9] %></p>
           <div class="images"><img src="images_light_VIII/figure_2.JPG"><br><%= complexContent[10] %></div>
<p><%= complexContent[11] %></p>
           <div class="images"><img src="images_light_VIII/figure_3.JPG"><br><%= complexContent[12] %></div>
<h5><strong><%= complexContent[13] %></h5>
<table>
<tr class="green-th">
	<th><%= simpleContent[2] %></th>
	<th><%= complexContent[14] %></th>
	<th><%= complexContent[15] %></th>
<tr>
<tr class="green-td">
	<td><%= translatableContent[0] %></th>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
<tr>
<tr class="green-td">
	<td><%= translatableContent[1] %></td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
<tr>
<tr class="green-td">
	<td><%= translatableContent[2] %></td>
	<td>&nbsp;</td>
	<td>&nbsp;</tdh>
<tr>
<tr class="green-td">
	<td><%= translatableContent[3] %></td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
<tr>
<tr class="green-td">
	<td><%= translatableContent[4] %></td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
<tr>
</table>
<p><%= complexContent[16] %></p>
           <div class="boojho"> <p><%= complexContent[17] %></p> </div>


<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[3] %></legend>
    <p><%= complexContent[18] %></p>
              <div class="images"><img src="images_light_VIII/figure_4_a.JPG" style="margin-right:20px;"><img src="images_light_VIII/figure_4_b.JPG"></div>
<div class="images"><%= complexContent[19] %></div>
</fieldset>
<p> <%= complexContent[20] %><br><%= complexContent[21] %></p>
<div class="paheli">
    <p><%= complexContent[22] %></p>
</div>
<p><%= complexContent[23] %></p>
              
<p><%= complexContent[24] %></p>
	<ul class="roman-small">
                <li><%= complexContent[25] %></li>
                <li><%= complexContent[26] %></li>
                <li><%= complexContent[27] %></li>
                <li><%= complexContent[28] %></li>
              </ul>

</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[4] %></legend>
    <p><%= complexContent[29] %><br><%= complexContent[30] %></p>
              <div class="images"><img src="images_light_VIII/figure_5.JPG"><br><%= complexContent[31] %></div>
</fieldset>
    

<p><%= complexContent[32] %></p>


<h2><%= complexContent[33] %></h2>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[5] %></legend>
<p><%= complexContent[34] %></p>
            <div class="images"><img src="images_light_VIII/figure_6.JPG"><br><%= complexContent[35] %>
</div>
		<div class="images"><img src="images_light_VIII/figure_7.JPG"><br><%= complexContent[36] %>
</div>
</fieldset>

<p><%= complexContent[37] %><br><%= complexContent[38] %> </p>
            <div class="images"><img src="images_light_VIII/figure_8.JPG"><br><%= complexContent[39] %></div>

<div class="paheli">
    <h3 class="paheli-heading"><%= complexContent[40] %></h3>
    <p>
        <%= complexContent[41] %><br><%= complexContent[42] %>
    </p>          
</div>
<div class="boojho"><p><%= complexContent[43] %></p></div>
<p><%= complexContent[44] %></p>


<h2><%= complexContent[45] %></h2>
<p><%= complexContent[46] %><br><%= complexContent[47] %></p>
<div class="images"><img src="images_light_VIII/figure_9.JPG"><br><%= complexContent[48] %></div>
<h2><%= complexContent[49] %></h2>
<p><%= complexContent[50] %></p>
               
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[6] %></legend>
   <p><%= complexContent[51] %></p>
               <div class="images"><img src="images_light_VIII/figure_10.JPG"><br><%= complexContent[52] %></div>
<p><%= complexContent[53] %><br> <%= complexContent[54] %> </p>
               <div class="images"><img src="images_light_VIII/figure_11.JPG"><br><%= complexContent[55] %></div>
</fieldset>
<p><%= complexContent[56] %></p>
<p> <%= complexContent[57] %></p>


<h4><%= simpleContent[7] %></h4>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[8] %></legend>
    <p><%= complexContent[58] %></p>
            <div class="images"><img src="images_light_VIII/figure_12.JPG"><br><%= complexContent[59] %></div>
</fieldset>
<p><%= complexContent[60] %></p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[9] %></legend>
   <p><%= complexContent[61] %></p>
             <div class="images"><img src="images_light_VIII/figure_13.JPG"><br><%= complexContent[62] %></div>                          
</fieldset>
<h2><%= complexContent[63] %></h2>
<p><%= complexContent[64] %></p>

<h2><%= complexContent[65] %></h2>
<p><%= complexContent[66] %><br><%= complexContent[67] %></p>
<div class="images"><img src="images_light_VIII/figure_14.JPG"><br><%= complexContent[68] %></div>
<div class="think">
<div class="think-heading"> <%= simpleContent[10] %></div>
      <p><%= complexContent[69] %></p>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[11] %></legend>
    <p><%= complexContent[70] %></p>
<p><%= complexContent[71] %></p>
</fieldset>
<p><%= complexContent[72] %><br>
<%= complexContent[73] %></p>
              <ul class="roman-small">
                <li><%= complexContent[74] %></li>
                <li> <%= complexContent[75] %></li>
              </ul>
    <p><%= complexContent[76] %></p>   

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[12] %></legend>
  <p><%= complexContent[77] %></p>
<div class="images"><img src="images_light_VIII/figure_15.JPG"><br><%= complexContent[78] %></div> 
</fieldset>
<p><%= complexContent[79] %></p>


<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[13] %></legend>
   <p><%= complexContent[80] %></p>
                   <div class="images"><img src="images_light_VIII/figure_16.JPG"><br><%= complexContent[81] %> </div>
</fieldset>

<p><%= complexContent[82] %></p><p><%= complexContent[83] %></p><p><%= complexContent[84] %></p><p><%= complexContent[85] %></p><p><%= complexContent[86] %></p>


<h2><%= complexContent[87] %></h2>
<p><%= complexContent[88] %></p>
      <ul class="roman-small">
         <li><%= complexContent[89] %></li>
         <li> <%= complexContent[90] %> </li>

         <li><%= complexContent[91] %></li>
         <li><%= complexContent[92] %></li>
         <li><%= complexContent[93] %></li>
         <li><%= complexContent[94] %></li>
      </ul>
<p><%= complexContent[95] %></p>
<p> <%= complexContent[96] %></p>
<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[97] %></legend>
    <p>
        <%= complexContent[98] %></p><p><%= complexContent[99] %>
    </p>
             <div class="images"><img src="images_light_VIII/figure_17.JPG"><br><%= complexContent[100] %></div>
</fieldset>

<p><%= complexContent[101] %></p>

<h2><%= complexContent[102] %></h2>
<p><%= complexContent[103] %></p>
<div class="paheli">
    <p><%= complexContent[104] %></p><p>  <%= complexContent[105] %></p>
</div>
<h2><%= complexContent[106] %></h2>
<p><%= complexContent[107] %></p>
<div class="person">
    <div class="person-heading"><%= simpleContent[14] %></div>
    <p><%= complexContent[108] %>
</p>
<div class="images"> <img src="images_light_VIII/braille.JPG"> </div>
</div>
<p><%= complexContent[109] %></p>

<div class="paheli">
    <p><%= complexContent[110] %></p> <br> 
                <div class="images"><img src="images_light_VIII/figure_18.JPG"><br><%= complexContent[111] %></div>
<p><%= complexContent[112] %></p><p><%= complexContent[113] %></p>
</div>
<p><%= complexContent[114] %></p>

<div class="paheli">
<p><%= complexContent[115] %><br>
     <%= complexContent[116] %><br>
   <%= complexContent[117] %><br>
     <%= complexContent[118] %></p>
        <div class="images"><img src="images_light_VIII/keller.JPG"></div>
</div>
<h3><%= simpleContent[15] %></h3>
    <ul class="what-learnt-list">
        <li><%= complexContent[119] %></li>
        <li><%= simpleContent[16] %></li>
        <li><%= simpleContent[17] %></li>
        <li><%= simpleContent[18] %></li>
        <li><%= simpleContent[19] %></li>
        <li><%= simpleContent[20] %></li>
        <li><%= simpleContent[21] %></li>
        <li><%= simpleContent[22] %></li>
        <li><%= simpleContent[23] %></li>
        <li><%= simpleContent[24] %></li>
        <li><%= simpleContent[25] %></li>
        <li><%= simpleContent[26] %></li>
        <li><%= complexContent[120] %></li>
        <li><%= simpleContent[27] %></li>
        <li><%= simpleContent[28] %></li>
        <li><%= simpleContent[29] %></li>
        <li><%= simpleContent[30] %></li>
        <li><%= simpleContent[29] %></li>
        <li><%= simpleContent[31] %></li>
        <li><%= simpleContent[32] %></li>
    </ul>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[121] %></legend>
    <ul class="what-learnt-list">
          <li><%= complexContent[122] %></li>
          <li><%= complexContent[123] %></li>
          <li><%= complexContent[124] %></li>
          <li><%= complexContent[125] %></li>
               <ul class="roman-small">
                <li><%= complexContent[126] %></li>
                <li><%= complexContent[127] %></li>
               </ul>
          <li><%= complexContent[128] %></li>
          <li><%= complexContent[129] %></li>
          <li><%= complexContent[130] %></li>
          <li><%= complexContent[131] %></li>
          <li><%= complexContent[132] %></li>
          <li><%= complexContent[133] %></li>
          <li><%= complexContent[134] %></li>
          <li><%= complexContent[135] %></li>
          <li><%= complexContent[136] %></li>
     </ul>
</fieldset>

<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[33] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[137] %></li>
        <li><%= complexContent[138] %></li>
        <li><%= complexContent[139] %>
            <ul class="exercise-sub-list">
                <li><%= complexContent[140] %></li>
                <li><%= simpleContent[34] %></li>
                <li> <%= simpleContent[35] %></li>
                <li><%= complexContent[141] %></li>
                <li><%= simpleContent[36] %></li>
                <li><%= complexContent[142] %></li>
            </ul>      
        </li>
    <li><%= complexContent[143] %></li> 
    <li><%= complexContent[144] %></li>
    <li><%= complexContent[145] %>
             <ul class="exercise-sub-list">
                <li><%= complexContent[146] %></li>
                <li> <%= complexContent[147] %></li>
                <li><%= complexContent[148] %></li>
                <li><%= complexContent[149] %></li>
            </ul>         
    </li>
<h4><%= complexContent[150] %></h4>               
<li><%= complexContent[151] %>
             <ul class="exercise-sub-list">
                <li><%= simpleContent[37] %></li>
                <li><%= simpleContent[38] %></li>
                <li><%= complexContent[152] %></li>
                <li><%= simpleContent[39] %></li>
            </ul>         
</li>
<li><%= complexContent[153] %>
             <ul class="exercise-sub-list">
                <li><%= complexContent[154] %></li>
                <li><%= complexContent[155] %></li>
                <li><%= complexContent[156] %></li>
                <li><%= complexContent[157] %></li>
            </ul>         
</li>
<li><%= complexContent[158] %></li>
<li><%= complexContent[159] %></li>
<li><%= complexContent[160] %></li>
<li> <%= complexContent[161] %></li>
<li><%= complexContent[162] %></li>
<li><%= complexContent[163] %></li>  
<li><%= complexContent[164] %></li>           
<div class="images"><img src="images_light_VIII/figure_19.JPG"><br><%= simpleContent[40] %></div>
<li><%= complexContent[165] %></li>
<div class="images"><img src="images_light_VIII/figure_20.JPG"><br><%= simpleContent[41] %></div>

<li>
       <ul class="exercise-sub-list">
                <li><%= complexContent[166] %></li>
                <li><%= complexContent[167] %></li>
                <li><%= complexContent[168] %></li>
                <li><%= complexContent[169] %></li>
       </ul>    
           <div class="images"><img src="images_light_VIII/figure_21.JPG"><br><%= simpleContent[42] %></div>     
</li>
</fieldset>    
<div class="project">   
<div class="project-heading"><%= complexContent[170] %></div>
   <ul class="exercise-list">
     <li><%= complexContent[171] %></li> 
     <li><%= complexContent[172] %></li>
     <li><%= complexContent[173] %></li>
     <li><%= complexContent[174] %></li>
</div>

<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[175] %></legend>
    <p>
        <%= complexContent[176] %></p>
           <ul class="exercise-sub-list">
                <li><%= complexContent[177] %></li>
                <li><%= complexContent[178] %></li>
                <li><%= simpleContent[43] %></li>
                <li><%= complexContent[179] %></li>
          </ul>
    <p><%= complexContent[180] %></p>
</fieldset>
<div class="boojho">
    <p><%= complexContent[181] %></p>
</div>
</div>
  </body>
</html>

