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
           <div class="images"><img src="images_light_VII/figure_1_a.JPG"><br><%= complexContent[1] %></div>
      <p><%= complexContent[2] %><br><%= complexContent[3] %></p>    
           <div class="images"><img src="images_light_VII/figure_1_b.JPG"><br><%= complexContent[4] %></div>
  <h2><%= complexContent[5] %></h2>
      <p><%= complexContent[6] %> </p><p><%= complexContent[7] %></p><p><%= complexContent[8] %></p>
           <div class="images"><img src="images_light_VII/figure_2_a.JPG"><img src="images_light_VII/figure_2_b.JPG"><br><%= complexContent[9] %></div>
           <div class="images"><img src="images_light_VII/figure_3.JPG"><br><%= complexContent[10] %></div>
      
  <h2><%= complexContent[11] %></h2>
      <p><%= complexContent[12] %></p><p><%= complexContent[13] %></p><p><%= complexContent[14] %></p>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[1] %></legend>
     <p><%= complexContent[15] %></p>
  <fieldset class="what-learnt">
     <p><%= complexContent[16] %>
     </p>
       <div class="images"><img src="images_light_VII/figure_4.JPG"><br><%= complexContent[17] %></div>
  </fieldset>
       <div class="images"><img src="images_light_VII/figure_5.JPG"><br><%= complexContent[18] %></div>
    <p><%= complexContent[19] %></p><p><%= complexContent[20] %></p><p><%= complexContent[21] %>
<fieldset class="know-more">
<%= complexContent[22] %> </fieldset>
<%= complexContent[23] %></p><p><%= complexContent[24] %></p>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend>
<div class="think">
<div class="think-heading"> <%= simpleContent[3] %></div>
<p><%= complexContent[25] %></p>
</div>
     <p><%= complexContent[26] %></p><p><%= complexContent[27] %></p>
       <div class="images"><img src="images_light_VII/figure_6.JPG"><br><%= complexContent[28] %></div>
       <fieldset class="know-more">
<%= complexContent[29] %> 
</fieldset>
     <p><%= complexContent[30] %></p><p><%= complexContent[31] %></p><p><%= complexContent[32] %></p>
</fieldset>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[4] %></legend>
   <p><%= complexContent[33] %></p>  
       <div class="images"><img src="images_light_VII/figure_7.JPG"><br><%= complexContent[34] %></div>
       <fieldset class="know-more">
<%= complexContent[35] %>
</fieldset>
   <p><%= complexContent[36] %> </p>
</fieldset>

<h2><%= complexContent[37] %></h2>
  <p><%= complexContent[38] %></p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[5] %></legend>
   <p><%= complexContent[39] %></p><p><%= complexContent[40] %></p>  
      <div class="images"><img src="images_light_VII/figure_8.JPG"><br><%= complexContent[41] %></div>
      <div class="images"><img src="images_light_VII/figure_9.JPG"><br><%= complexContent[42] %></div>
      <div class="images"><%= complexContent[43] %></div>
	  <fieldset class="know-more">
	  <%= complexContent[44] %>
	  </fieldset>
   <p><%= complexContent[45] %></p><p>
      <%= complexContent[46] %></p>
</fieldset>

<h2><%= complexContent[47] %></h2>
<p><%= complexContent[48] %></p><p><%= complexContent[49] %></p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[6] %></legend>
   <p><%= complexContent[50] %></p>  
      <div class="images"><img src="images_light_VII/figure_10.JPG"><br><%= complexContent[51] %></div>
   <p><%= complexContent[52] %></p>
      <div class="images"><img src="images_light_VII/figure_11.JPG"><br><%= complexContent[53] %></div>
<p><%= complexContent[54] %></p><p><%= complexContent[55] %> </p>
      <div class="images"><img src="images_light_VII/figure_12.JPG"><br><%= complexContent[56] %></div>
<fieldset class="what-learnt">
    <p> <%= complexContent[57] %></p><p><%= complexContent[58] %></p>
                  <div class="images"><img src="images_light_VII/figure_13.JPG"><br><%= complexContent[59] %> </div>       				
</fieldset>
 <p><%= complexContent[60] %></p><p><%= complexContent[61] %> </p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[7] %></legend>
<div class="think">
<div class="think-heading"> <%= simpleContent[3] %></div>
<p><%= complexContent[62] %></p>
</div>
         <div class="images"><img src="images_light_VII/figure_14.JPG"><br><%= complexContent[63] %></div>
    
   <p><%= complexContent[64] %></p><p>
    <%= complexContent[65] %></p><p>
    <%= complexContent[66] %></p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[8] %></legend>
    <p><%= complexContent[67] %> </p> 
        <div class="images"><img src="images_light_VII/figure_15_a.JPG"><img src="images_light_VII/figure_15_b.JPG"><br><%= complexContent[68] %></div>
<p><%= complexContent[69] %></p>
        <div class="images"><img src="images_light_VII/figure_16.JPG"><br><%= complexContent[70] %></div>
<p><%= complexContent[71] %></p><p><%= complexContent[72] %></p><p><%= complexContent[73] %></p><p><%= complexContent[74] %></p>
        <div class="images"><img src="images_light_VII/figure_17.JPG"><br><%= complexContent[75] %></div>
<p><%= complexContent[76] %></p>
        <div class="images"><img src="images_light_VII/figure_18.JPG"><br><%= complexContent[77] %></div>
<p><%= complexContent[78] %></p><p><%= complexContent[79] %></p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[9] %></legend>
    <p><%= complexContent[80] %></p><p><%= complexContent[81] %></p><p><%= complexContent[82] %> </p> 
            <div class="images"><img src="images_light_VII/figure_19.JPG"><br><%= complexContent[83] %></div>
<h3><%= complexContent[84] %></h3>
            <div class="images"><img src="images_light_VII/figure_20.JPG"><br><%= complexContent[85] %></div>
<p><%= complexContent[86] %></p><p><%= complexContent[87] %></p>

<h2><%= complexContent[88] %></h2>
<p><%= complexContent[89] %></p><p><%= complexContent[90] %></p><p><%= complexContent[91] %></p><p><%= complexContent[92] %></p>
           <div class="images"><img src="images_light_VII/figure_21.JPG"><br><%= complexContent[93] %></div>
<p><%= complexContent[94] %> </p>
           <div class="images"><img src="images_light_VII/figure_22.JPG"><br><%= complexContent[95] %></div>
<p><%= complexContent[96] %></p>
<div class="think">
<div class="think-heading"> <%= simpleContent[3] %></div>
      <p><%= complexContent[97] %></p>
</div>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[10] %></legend>
<p><%= complexContent[98] %></p><p><%= complexContent[99] %> </p>
         <div class="images"><img src="images_light_VII/figure_23.JPG"><br><%= complexContent[100] %></div>
<p><%= complexContent[101] %></p><p><%= complexContent[102] %></p><p><%= complexContent[103] %></p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[11] %></legend>
<p><%= complexContent[104] %></p>
<fieldset class="what-learnt">
    <p><%= complexContent[105] %> </p>
             <div class="images"><img src="images_light_VII/figure_24.JPG"><br><%= complexContent[106] %></div>
</fieldset>
<p><%= complexContent[107] %></p><p><%= complexContent[108] %></p>
<fieldset class="know-more">
	 <%= complexContent[109] %>
	  </fieldset>
         <div class="images"><img src="images_light_VII/figure_25_a.JPG"><img src="images_light_VII/figure_25_b.JPG"><br><%= complexContent[110] %></div>
		 <div class="images"><img src="images_light_VII/figure_26.JPG"><br><%= complexContent[111] %></div>
		 <div class="images"><img src="images_light_VII/figure_27.JPG"><br><%= complexContent[112] %></div>
<p><%= complexContent[113] %></p><p>
    <%= complexContent[114] %></p>
</fieldset>

<h2><%= complexContent[115] %></h2>
<p><%= complexContent[116] %></p> 
             <div class="images"><img src="images_light_VII/figure_28.JPG"><br><%= complexContent[117] %></div>
			 <div class="images"><img src="images_light_VII/figure_29.JPG"><br><%= simpleContent[12] %></div>
<p><%= complexContent[118] %></p>
     
             
			 <fieldset class="know-more">
	 <%= complexContent[119] %>
	  </fieldset>
             <div class="images"><img src="images_light_VII/figure_30.JPG"><br><%= simpleContent[13] %></div>
<p><%= complexContent[120] %></p><p><%= complexContent[121] %></p>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[14] %></legend>
<p><%= complexContent[122] %></p>
             <fieldset class="know-more">
	 <%= complexContent[123] %>
	  </fieldset>
    <p><%= complexContent[124] %></p><p><%= complexContent[125] %></p>
</fieldset>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[15] %></legend>
<p><%= complexContent[126] %></p>
            <div class="images"><img src="images_light_VII/figure_31.JPG"><br><%= simpleContent[16] %></div>
</fieldset>

<fieldset class="what-learnt">
    <p><%= complexContent[127] %> </p>
             <div class="images"><img src="images_light_VII/figure_32.JPG"><br><%= complexContent[128] %> </div>
</fieldset>

<h3><%= simpleContent[17] %></h3>
    <ul class="what-learnt-list">
        <li><%= simpleContent[18] %></li>
        <li><%= simpleContent[19] %></li>
        <li><%= simpleContent[20] %></li>
        <li><%= simpleContent[21] %></li>
        <li><%= simpleContent[22] %></li>
        <li><%= simpleContent[23] %></li>
        <li><%= simpleContent[24] %></li>
        <li><%= simpleContent[25] %></li>
        <li><%= simpleContent[26] %></li>
        <li><%= simpleContent[27] %></li>
        <li><%= complexContent[129] %></li>
        <li><%= simpleContent[28] %> </li>
        <li><%= simpleContent[29] %></li>
        <li><%= simpleContent[30] %></li>
    </ul>

<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[130] %></legend>
    <ul class="what-learnt-list">
          <li><%= complexContent[131] %></li>
          <li><%= complexContent[132] %></li>
          <li><%= complexContent[133] %></li>
          <li><%= complexContent[134] %></li>
          <li><%= complexContent[135] %></li>
          <li><%= complexContent[136] %></li>
          <li><%= complexContent[137] %></li> 
          <li><%= complexContent[138] %></li> 
          <li><%= complexContent[139] %></li> 
          <li><%= complexContent[140] %></li>
          <li><%= complexContent[141] %></li>
    </ul>
</fieldset>

<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[31] %></legend>
    <ul class="exercise-list">
        <li><%= complexContent[142] %>
             <ul class="exercise-sub-list">
                <li><%= complexContent[143] %></li>
                <li><%= complexContent[144] %></li>
                <li><%= complexContent[145] %></li>
                <li><%= complexContent[146] %> </li>
                <li><%= complexContent[147] %></li>
            </ul>         
        </li>
        
        <li><%= complexContent[148] %>   
               <ul class="exercise-sub-list">
                <li><%= complexContent[149] %></li>
                <li><%= complexContent[150] %></li>
                <li><%= complexContent[151] %></li>
                <li><%= complexContent[152] %></li>
                <li><%= complexContent[153] %></li>
              </ul>
        </li>
        
        <li><%= complexContent[154] %></li>
        <li><%= complexContent[155] %></li>
        <li><%= complexContent[156] %></li>
        <li><%= complexContent[157] %></li>

        <li><%= complexContent[158] %></li>

        <li><%= complexContent[159] %></li>

        <li><%= complexContent[160] %></li>
        <li><%= complexContent[161] %></li>
<h4><%= complexContent[162] %></h4>
        <li><%= complexContent[163] %>
              <ul class="roman-small">
                <li><%= simpleContent[32] %></li>
                <li><%= simpleContent[33] %></li>
                <li><%= simpleContent[34] %></li>
                <li><%= simpleContent[35] %></li>
              </ul>
        </li>

        <li> <%= complexContent[164] %>
              <ul class="roman-small">
                <li><%= simpleContent[36] %></li>
                <li><%= simpleContent[37] %></li>
                <li><%= simpleContent[38] %></li>
                <li><%= simpleContent[39] %></li>
              </ul>
        </li>
    
        <li><%= complexContent[165] %>
              <ul class="roman-small">
                <li><%= simpleContent[40] %></li>
                <li><%= simpleContent[41] %></li>
                <li><%= simpleContent[42] %></li>
                <li><%= simpleContent[43] %></li>
              </ul>
        </li>
   </ul>
</fieldset>
<fieldset class="what-learnt">
<legend class="what-learnt-legend"><%= complexContent[166] %></legend>
             <ul class="exercise-list">
                 <li><%= complexContent[167] %><br> <%= complexContent[168] %></li> 
                 <li><%= complexContent[169] %><br><%= complexContent[170] %>  <div class="images"><img src="images_light_VII/figure_33.JPG"><br><%= complexContent[171] %> </div> <%= complexContent[172] %></li>
                  <li><%= complexContent[173] %><br><%= complexContent[174] %></li> 
                  <li><%= complexContent[175] %></li>
                  <li><%= complexContent[176] %></li>
                  <li><%= simpleContent[44] %><br> <%= complexContent[177] %></li>
             </ul>
</fieldset>



<fieldset class="know-more">
    <legend class="know-more-legend"><%= complexContent[178] %></legend>
    <p>
        <%= complexContent[179] %>
    </p>
             <div class="images"><img src="images_light_VII/figure_34.JPG"><br><%= complexContent[180] %></div>
</fieldset>
</div>
 </body>
</html>

