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
<div class="images"><img src="images_friction_VIII/figure_1.JPG"><br><%= complexContent[1] %></div>
<p><%= complexContent[2] %></p>

<h2><%= complexContent[3] %></h2>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[1] %></legend>
    <p><%= complexContent[4] %></p>
<div class="images"><img src="images_friction_VIII/figure_2_a.JPG" style="margin-right:20px" width="250" height="200"><img src="images_friction_VIII/figure_2_b.JPG"   width="250" height="200"><br><%= complexContent[5] %></div>
</fieldset>
<p><%= complexContent[6] %> </p><p><%= complexContent[7] %></p><p><%= complexContent[8] %></p>


<h2><%= complexContent[9] %></h2>
<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[2] %></legend>
    <p><%= complexContent[10] %></p>
<div class="images"><img src="images_friction_VIII/figure_3.JPG"><br><%= complexContent[11] %></div>
<p><%= complexContent[12] %></p>
</fieldset>
<div class="person">
<div class="person-heading"><%= simpleContent[3] %></div>
<p><%= complexContent[13] %></p>
<div class="images"><img src="images_friction_VIII/spring.JPG"></div>
</div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[4] %></legend>
    <p><%= complexContent[14] %></p>
<div class="images"><img src="images_friction_VIII/figure_4.JPG"><br><%= complexContent[15] %></div>
<p><%= complexContent[16] %></p>
</fieldset>
<p><%= complexContent[17] %></p><p> <%= complexContent[18] %></p>
<div class="boojho"><%= complexContent[19] %></div>
<p><%= complexContent[20] %></p>
<div class="images"><img src="images_friction_VIII/figure_5.JPG"><br><%= complexContent[21] %></div>
<p><%= complexContent[22] %></p><p><%= complexContent[23] %></p><p><%= complexContent[24] %></p>
<div class="images"><img src="images_friction_VIII/figure_6.JPG"><br><%= complexContent[25] %></div>
<p><%= complexContent[26] %></p>


<h2><%= complexContent[27] %></h2>
<p><%= complexContent[28] %></p> <p><%= complexContent[29] %></p>
<div class="images"><img src="images_friction_VIII/figure_7.JPG"><br><%= complexContent[30] %> </div>
<p><%= complexContent[31] %></p>
   <p><%= complexContent[32] %></p>
<div class="images"><img src="images_friction_VIII/figure_8.JPG"><br><%= complexContent[33] %></div>
<p><%= complexContent[34] %></p>
    <p><%= complexContent[35] %></p>
   <p><%= complexContent[36] %></p>
<div class="images"><img src="images_friction_VIII/figure_9.JPG"><br><%= complexContent[37] %></div>
<p><%= complexContent[38] %></p>
<div class="images"><img src="images_friction_VIII/figure_10.JPG"><br><%= complexContent[39] %></div>
<p><%= complexContent[40] %></p>

<h2><%= complexContent[41] %></h2>
<p><%= complexContent[42] %></p><p>
   <%= complexContent[43] %> </p>
<div class="images"><img src="images_friction_VIII/figure_11.JPG"><br><%= complexContent[44] %></div>
<p><%= complexContent[45] %></p><p><%= complexContent[46] %> </p>
<div class="images"><img src="images_friction_VIII/figure_12.JPG"><br><%= complexContent[47] %> </div>
<p><%= complexContent[48] %></p>
<div class="images"><img src="images_friction_VIII/figure_13.JPG"><br><%= complexContent[49] %></div>
<div class="paheli"><p><%= complexContent[50] %></p></div>
<div class="boojho"><p><%= complexContent[51] %></p></div>

<h2><%= complexContent[52] %></h2>
<p><%= complexContent[53] %></p>
<div class="images"><img src="images_friction_VIII/figure_14.JPG"><br><%= complexContent[54] %></div>

<fieldset class="activity">
    <legend class="activity-legend"><%= simpleContent[5] %></legend>
    <p><%= complexContent[55] %></p>
<div class="images"><img src="images_friction_VIII/figure_15.JPG"><br><%= complexContent[56] %></div>
</fieldset>
<p><%= complexContent[57] %></p><p><%= complexContent[58] %> </p>
<div class="images"><img src="images_friction_VIII/figure_16.JPG"><br><%= complexContent[59] %> </div>

<h2><%= complexContent[60] %></h2>
<p><%= complexContent[61] %></p>
<div class="paheli">
    <p><%= complexContent[62] %></p>
</div>
<p><%= complexContent[63] %></p><p><%= complexContent[64] %></p>
<div class="images"><img src="images_friction_VIII/figure_17.JPG"><br><%= complexContent[65] %></div>
<h3><%= simpleContent[6] %></h3>
    <ul class="what-learnt-list">
        <li><%= simpleContent[7] %></li>
        <li><%= simpleContent[8] %></li>
        <li><%= simpleContent[9] %></li>
        <li><%= simpleContent[0] %></li>
        <li><%= simpleContent[10] %></li>
        <li><%= simpleContent[11] %></li>
        <li><%= simpleContent[12] %></li>
        <li><%= simpleContent[13] %></li>
        <li><%= simpleContent[14] %></li>
   </ul>
<fieldset class="what-learnt">
    <legend class="what-learnt-legend"><%= complexContent[66] %></legend>
    <ul class="what-learnt-list">
          <li><%= complexContent[67] %></li>
          <li><%= complexContent[68] %></li>
          <li><%= complexContent[69] %></li>
          <li><%= complexContent[70] %></li>
          <li><%= complexContent[71] %></li>
          <li><%= complexContent[72] %></li>
          <li><%= complexContent[73] %></li>
          <li><%= complexContent[74] %></li>
          <li><%= complexContent[75] %></li>
          <li><%= complexContent[76] %></li>
          <li><%= complexContent[77] %></li>
          <li><%= complexContent[78] %></li>
          <li><%= complexContent[79] %></li>
          <li><%= complexContent[80] %></li>
          <li><%= complexContent[81] %></li>
     </ul>
</fieldset>

<fieldset class="exercise">
    <legend class="exercise-legend"><%= simpleContent[15] %></legend>
    <ul class="exercise-list">

         <li><%= complexContent[82] %>
             <ul class="exercise-sub-list">
                <li><%= complexContent[83] %></li>
                <li> <%= complexContent[84] %></li>
                <li><%= complexContent[85] %></li>
                <li><%= complexContent[86] %></li>
                <li><%= complexContent[87] %></li>
            </ul>         
    </li>
        <li><%= complexContent[88] %></li>
            <ul class="exercise-sub-list">
                <li><%= complexContent[89] %></li>
                <li><%= complexContent[90] %></li>
                <li><%= complexContent[91] %></li>
                <li><%= complexContent[92] %></li>
            </ul>  
        <li><%= complexContent[93] %></li>
            <ul class="exercise-sub-list">
                <li><%= complexContent[94] %></li>
                <li><%= complexContent[95] %></li>
                <li><%= complexContent[96] %></li>
                <li><%= complexContent[97] %></li>
            </ul>   
    <li><%= complexContent[98] %></li> 
    <li><%= complexContent[99] %></li>
    <li><%= complexContent[100] %></li>
    <li><%= complexContent[101] %></li>
    <li><%= complexContent[102] %></li>
    <li><%= complexContent[103] %></li>
    <li><%= complexContent[104] %></li>      
</ul>
</fieldset>
<div class="project">      
<div class="project-heading"><%= complexContent[105] %></div>
   <ul class="project-list">
     <li><%= complexContent[106] %></li> 
     <li><%= complexContent[107] %></li>
     <li><%= complexContent[108] %></li>
     <li><%= complexContent[109] %><p><%= complexContent[110] %></p>
<p><%= complexContent[111] %></p>
<p><%= complexContent[112] %></p>

<div class="images"><img src="images_friction_VIII/figure_18.JPG"><br><%= simpleContent[16] %> </div></li>
   </ul>
       
</div>
<fieldset class="know-more">
    <legend class="know-more-legend"> <%= complexContent[113] %></legend>
    <p><%= complexContent[114] %></p>
</fieldset>
</div>
  </body>
</html>

