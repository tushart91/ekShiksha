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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= complexContent[0] %></title>
        <link rel="stylesheet" type="text/css" href="style/content_style.css" />
        <script type="text/javascript" src="pages/eContent/topics/learningObjects.js"></script>
        
    </head>
    <body>
      
       <div id="contentPanel" class="contentPane">
           <h1><%= complexContent[1] %></h1>
           <p>
               <%= complexContent[2] %>
           </p>
           <ul>
               <li><%= complexContent[3] %></li>
               <li><%= simpleContent[0] %></li>
               <li><%= simpleContent[1] %></li>
           </ul>
           <p><%= complexContent[4] %></p>
           <hr>
	   <h5><strong><%= complexContent[5] %></h5>
           <form name="motionExercise" onsubmit="return doAlert();">
           <table>
               <tr class="blue-th">
                   <th width="47%"><%= simpleContent[2] %></th>
                   <th widht="53%"><%= complexContent[6] %></th>
               </tr>
               <tr class="blue-td">
                   <td><%= complexContent[7] %></td>
                   <td>
                       <input type="radio" name="soldiers" value="1"><%= simpleContent[3] %>
                       <input type="radio" name="soldiers" value="2" ><%= simpleContent[4] %>
                       <input type="radio" name="soldiers" value="3" ><%= simpleContent[5] %>
                   </td>
               </tr>
               <tr class="blue-td">
                   <td><%= complexContent[8] %></td>
                   <td>
                       <input type="radio" name="bullock" value="1"><%= simpleContent[3] %>
                       <input type="radio" name="bullock" value="2" ><%= simpleContent[4] %>
                       <input type="radio" name="bullock" value="3" ><%= simpleContent[5] %>
                   </td>
               </tr>
               
               <tr class="blue-td">
                   <td><%= complexContent[9] %></td>
                   <td>
                       <input type="radio" name="hands" value="1" ><%= simpleContent[3] %>
                       <input type="radio" name="hands" value="2" ><%= simpleContent[4] %>
                       <input type="radio" name="hands" value="3" ><%= simpleContent[5] %>
                   </td>
               </tr>
               <tr class="blue-td">
                   <td><%= complexContent[10] %></td>
                   <td>
                       <input type="radio" name="pedal" value="1" ><%= simpleContent[3] %>
                       <input type="radio" name="pedal" value="2" ><%= simpleContent[4] %>
                       <input type="radio" name="pedal" value="3" ><%= simpleContent[5] %>
                   </td>
               </tr>
               <tr class="blue-td">
                   <td><%= complexContent[11] %></td>
                   <td>
                       <input type="radio" name="earth" value="1" ><%= simpleContent[3] %>
                       <input type="radio" name="earth" value="2" ><%= simpleContent[4] %>
                       <input type="radio" name="earth" value="3" ><%= simpleContent[5] %>
                   </td>
               </tr>
               <tr class="blue-td">
                   <td><%= complexContent[12] %></td>
                   <td>
                       <input type="radio" name="swing" value="1" ><%= simpleContent[3] %>
                       <input type="radio" name="swing" value="2" ><%= simpleContent[4] %>
                       <input type="radio" name="swing" value="3" ><%= simpleContent[5] %>
                   </td>
               </tr>
               <tr class="blue-td">
                   <td><%= complexContent[13] %></td>
                    <td>
                       <input type="radio" name="pendulum" value="1" ><%= simpleContent[3] %>
                       <input type="radio" name="pendulum" value="2" ><%= simpleContent[4] %>
                       <input type="radio" name="pendulum" value="3" ><%= simpleContent[5] %>
                   </td>
               </tr>
               <tr>
                   <td colspan="2"><input type="submit" value="Show Result" onclick="doAlert();"></td>
               </tr>
               
           </table>
               <p id="result" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
           </form>
           <hr>
           <p><%= complexContent[14] %></p>
           <p><%= complexContent[15] %></p>
           <hr>
           <h5><strong><%= complexContent[16] %></h5>
           <div style="width:49%; float: left; font-size: small;"><img src="images_m_t_VII/road1.png" alt="Picture of cars on a road" width="330px" height="200px"><br><%= complexContent[17] %></div>
           <div style="width:49%; float: left; font-size: small;"><img src="images_m_t_VII/road2.png" alt="Same road after few seconds" width="330px" height="200px"><br><%= complexContent[18] %></div>
           
           <form name="exercise2">
           <p><br>
               <%= simpleContent[6] %> &nbsp;<input type="radio" name="exercise2fast" value="1"><%= translatableContent[0] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2fast" value="2"><%= translatableContent[1] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2fast" value="3"><%= translatableContent[2] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2fast" value="4"><%= translatableContent[3] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2fast" value="5"><%= translatableContent[4] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2fast" value="6"><%= translatableContent[5] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2fast" value="7"><%= translatableContent[6] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2fast" value="8"><%= translatableContent[7] %>&nbsp;&nbsp;<br>
               <%= simpleContent[7] %> <input type="radio" name="exercise2slow" value="1"><%= translatableContent[0] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2slow" value="2"><%= translatableContent[1] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2slow" value="3"><%= translatableContent[2] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2slow" value="4"><%= translatableContent[3] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2slow" value="5"><%= translatableContent[4] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2slow" value="6"><%= translatableContent[5] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2slow" value="7"><%= translatableContent[6] %>&nbsp;&nbsp;
               <input type="radio" name="exercise2slow" value="8"><%= translatableContent[7] %>&nbsp;&nbsp;<br>
               <input type="button" onclick="exercise2Result();" value="Show Result">
           </p>
           <p id="result2" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
           </form>
           <hr>
           <p>
               <%= complexContent[19] %>
           </p>
           <hr>
           <h5><b><%= complexContent[20] %></h5>
           <div style="width:49%; float: left; font-size: small;"><img src="images_m_t_VII/bus2.jpg" alt="Picture of bus and cyclist on a road" width="330px" height="200px"><%= complexContent[21] %></div>
           <div style="width:49%; float: left; font-size: small;"><img src="images_m_t_VII/bus1.jpg" alt="Same road after 1 minutes" width="330px" height="200px"><%= complexContent[22] %></div>
           <p>&nbsp;</p>
           
           <form name="exercise3">
           <p><%= complexContent[23] %> &nbsp;&nbsp;
               <input type="radio" name="exercise3opt" value="bus"><%= simpleContent[8] %>&nbsp;&nbsp;
               <input type="radio" name="exercise3opt" value="cycle"><%= simpleContent[9] %>&nbsp;&nbsp;
               <input type="button" value="Show Result" onclick="exercise3Result();">
           </p>
           </form>
           <p id="result3" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
           <hr>
           <p><%= complexContent[24] %></p>
           <p><%= complexContent[25] %></p>
           <hr>
           <h5><b><%= complexContent[26] %></h5>
           <div class="images"><img src="images_m_t_VII/racefinish.png" alt="A simple pendulum"><br><%= complexContent[27] %></div>

           
           <form name="exercise4"><p><%= complexContent[28] %> <input type="text" name="exercise4runner">&nbsp;&nbsp;
           <input type="button" value="Show Result" onclick="exercise4Result();"></p></form>
           <p id="result4" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>

           <hr>
           <h2><%= simpleContent[10] %></h2>
           <p><%= complexContent[29] %><br>
              <%= complexContent[30] %>
           </p>
           <ul>
               <li><%= complexContent[31] %></li>
               <li><%= complexContent[32] %></li>
           </ul>
           <p>
               <%= complexContent[33] %><br>
           </p>
           <p>
               <%= complexContent[34] %>
           </p>
           <p>
               <%= complexContent[35] %>
           </p>
           <p>
               <%= complexContent[36] %>
           </p>
           <div class="equation">
               <%= complexContent[37] %>
           </div>
           <p>
               <%= complexContent[38] %>
           </p>
           <p>
               <%= complexContent[39] %>
           </p>
           <h1><%= complexContent[40] %></h1>
           <p><%= complexContent[41] %></p>
           <p>
               <%= complexContent[42] %>
           </p>
           <div class="images"> <img src="images_m_t_VII/clock1.png" alt="" width="200px" height="150px">
				<img src="images_m_t_VII/clock2.png" alt="" width="200px" height="150px">
				<img src="images_m_t_VII/clock3.png" alt="" width="200px" height="150px">
           <br><%= complexContent[43] %></div>
           
           <p><%= complexContent[44] %></p>
           <br>
           
            <hr>

           <p><%= complexContent[45] %></p>
           <p><%= complexContent[46] %></p>
           <p><%= complexContent[47] %></p>
           <hr>
           <p><b><%= complexContent[48] %></b></p>
           <p>
               <%= complexContent[49] %>
               
           </p>
           <p>
               <%= complexContent[50] %>

           </p>
           <p>
               <%= complexContent[51] %>
               
           </p>
           <br>
           <table>
               <tr class="pink-td">
                   <td colspan="3"><%= complexContent[52] %>&nbsp;<input type="text" name="length"></td>
               </tr>
               <tr class="pink-th">
                   <th><%= simpleContent[11] %></th>
                   <th><%= complexContent[53] %></th>
                   <th><%= simpleContent[12] %></th>
               </tr>
               <tr class="pink-td">
                   <td><input type="text" name="recordsn" value="1" readonly></td>
                   <td><input type="text" name="recordosc"></td>
                   <td><input type="text" name="recordtp"></td>
               </tr>
               <tr class="pink-td">
                   <td><input type="text" name="record2sn" value="2" readonly></td>
                   <td><input type="text" name="record2osc"></td>
                   <td><input type="text" name="record2tp"></td>
               </tr>
               <tr class="pink-td">
                   <td><input type="text" name="record3sn" value="3" readonly></td>
                   <td><input type="text" name="record3osc"></td>
                   <td><input type="text" name="record3tp"></td>
               </tr>
               <tr class="pink-td">
                   <td><input type="text" name="record4sn" value="4" readonly></td>
                   <td><input type="text" name="record4osc"></td>
                   <td><input type="text" name="record4tp"></td>
               </tr>
               <tr class="pink-td">
                   <td><input type="text" name="record5sn" value="5" readonly></td>
                   <td><input type="text" name="record5osc"></td>
                   <td><input type="text" name="record5tp"></td>
               </tr>
               <tr>
                   <td colspan="3"><input type="button" value="Show Result" onclick=""></td>
               </tr>
           </table>

           <div></div>
           <br>
           <hr>
           <p>
               <applet code="ModelingScience.Pendulum.pendulum_pkg.pendulumApplet.class"
                       codebase="applet"
                       archive="cpendulum.jar"
                       name="cpendulum"  id="cpendulum"
                       width="400" height="600">
                        <param name="draggable" value="true">
                </applet>
           </p>
           
           <p>
               <%= complexContent[54] %></p>
<div class="think"><p>
<%= complexContent[55] %>
           </p>
</div>
           <h4 style="color:#21bef7;"><%= complexContent[56] %></h4>
           <p><%= complexContent[57] %>
           <p><%= complexContent[58] %><br>
<%= complexContent[59] %></p>
           <p>
               <%= complexContent[60] %>
           </p>
           <hr>
           <form name="exercise6">
           <h5><b><%= complexContent[61] %></h5>
           <p>
               <%= complexContent[62] %> <input type="text" name="exercise6sec">
               <input type="button" value="Show Result" onclick="exercise6AResult();">
           </p>
           <p id="result6a" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
           <p>
               <%= complexContent[63] %> <input type="text" name="exercise6hour">
               <input type="button" value="Show Result" onclick="exercise6BResult();">
           </p>
           <p id="result6b" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
           </form>
           <hr>
           <p>
               <%= complexContent[64] %>
           </p>
           <div style="width:66%; float: left;margin-bottom: 20px;"><img src="images_m_t_VII/time1.png" alt="" width="400px" height="320px"></div>
           <div style="width:33%; float: left;margin-bottom: 20px;"><img src="images_m_t_VII/time2.png" alt="" width="150px" height="150px"></div><br>
           <div style="width:33%; float: left;margin-bottom: 20px;"><img src="images_m_t_VII/time3.png" alt="" width="150px" height="150px"></div>
           <div class="images"><%= complexContent[65] %></div>
           <div class="think">
           <p>
               <%= complexContent[66] %>
           </p>
	   </div>
           <h2><%= simpleContent[13] %></h2>
           <p>
               <%= complexContent[67] %>
           </p>
           <hr>
           <h5><b><%= complexContent[68] %></h5>
           <p>
               <%= complexContent[69] %>
           </p><br>
           <div class="images"><img src="images_m_t_VII/rollingball.png" alt=""><br><%= complexContent[70] %></div>
           <p>
               <%= complexContent[71] %>
           </p>
           <form name="exercise7" id="exercise7" action="" onsubmit="return false;">
           <table>
               <tr class="pink-th">
                   <th><%= complexContent[72] %></th>
                   <th><%= complexContent[73] %></th>
                   <th><%= complexContent[74] %></th>
                   <th><%= complexContent[75] %></th>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[8] %></td>
                   <td><input type="text" name="dist1" id="dist1" size="15"/></td>
                   <td><input type="text" name="time1" id="time1" size="15"/></td>
                   <td><input type="text" name="speed1" id="speed1" size="15" readonly/><div></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[9] %></td>
                   <td><input type="text" name="dist2" id="dist2" size="15"/></td>
                   <td><input type="text" name="time2" id="time2" size="15"/></td>
                   <td><input type="text" name="speed2" id="speed2" size="15" readonly/></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[10] %></td>
                   <td><input type="text" name="dist3" id="dist3" size="15"/></td>
                   <td><input type="text" name="time3" id="time3" size="15"/></td>
                   <td><input type="text" name="speed3" id="speed3" size="15" readonly/></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[11] %></td>
                   <td><input type="text" name="dist4" id="dist4" size="15"/></td>
                   <td><input type="text" name="time4" id="time4" size="15"/></td>
                   <td><input type="text" name="speed4" id="speed4" size="15" readonly/></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[12] %></td>
                   <td><input type="text" name="dist5" id="dist5" size="15"/></td>
                   <td><input type="text" name="time5" id="time5" size="15"/></td>
                   <td><input type="text" name="speed5" id="speed5" size="15" readonly/><div></td>
               </tr>
	       <tr>
                   <td colspan="4"><input type="submit" value="Show Result" onclick="resultExercise7();"></td>
               </tr>
           </table>
           </form>
           <hr>
           <p>
               <%= complexContent[76] %>
           </p>
           <hr>
           <h5><b><%= complexContent[77] %></b></h5>
           <table>
               <tr class="pink-th">
                   <th><%= simpleContent[11] %></th>
                   <th><%= complexContent[78] %></th>
                   <th><%= complexContent[79] %></th>
                   <th><%= complexContent[80] %></th>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[8] %></td>
                   <td><%= simpleContent[14] %></td>
                   <td><%= translatableContent[13] %></td>
                   <td><%= translatableContent[14] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[9] %></td>
                   <td><%= simpleContent[15] %></td>
                   <td><%= translatableContent[15] %></td>
                   <td><%= translatableContent[16] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[10] %></td>
                   <td><%= simpleContent[16] %></td>
                   <td><%= translatableContent[17] %></td>
                   <td><%= translatableContent[18] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[11] %></td>
                   <td><%= simpleContent[17] %></td>
                   <td><%= translatableContent[19] %></td>
                   <td><%= translatableContent[20] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[12] %></td>
                   <td><%= simpleContent[18] %></td>
                   <td><%= translatableContent[21] %></td>
                   <td><%= translatableContent[22] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[23] %></td>
                   <td><%= simpleContent[19] %></td>
                   <td><%= translatableContent[24] %></td>
                   <td><%= translatableContent[25] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[26] %></td>
                   <td><%= simpleContent[20] %></td>
                   <td><%= translatableContent[27] %></td>
                   <td><%= translatableContent[28] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[29] %></td>
                   <td><%= simpleContent[21] %></td>
                   <td><%= translatableContent[30] %></td>
                   <td><%= translatableContent[31] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[32] %></td>
                   <td><%= simpleContent[22] %></td>
                   <td><%= translatableContent[33] %></td>
                   <td><%= translatableContent[34] %></td>
               </tr>
           </table>
           <p>
               <%= complexContent[81] %>
           </p>
           <form name="exercise8">
           <p>
               <%= simpleContent[23] %> <input type="text" name="exercise8comp" size="10"> <%= complexContent[82] %>
               <input type="button" value="Show Result" onclick="exercise8Result();">
           </p>
           </form>
           <p id="result8" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
           <hr>
           <p>
               <%= complexContent[83] %>
           </p>
           <div class="equation"><%= complexContent[84] %></div>
           <p>
               <%= complexContent[85] %>
           </p>
           <div class="equation"><%= complexContent[86] %></div>
           <p>
               <%= complexContent[87] %>
           </p>
           <div class="images"><img src="images_m_t_VII/odometer1.png" alt="" width="200px" height="170px" style="margin-right:20px;">
           <img src="images_m_t_VII/odometer2.png" alt="" width="300px" height="170px"><br><%= complexContent[88] %></div>
           
           <p>
               <%= complexContent[89] %>
           </p>
           <table>
               <tr class="blue-th">
                   <th><%= simpleContent[24] %></th>
                   <th><%= complexContent[90] %></th>
                   <th><%= complexContent[91] %></th>
               </tr>
               <tr class="blue-td">
                   <td><%= translatableContent[35] %></td>
                   <td><%= translatableContent[36] %></td>
                   <td><%= translatableContent[37] %></td>
               </tr>
               <tr class="blue-td">
                   <td><%= translatableContent[38] %></td>
                   <td><%= translatableContent[39] %></td>
                   <td><%= translatableContent[40] %></td>
               </tr>
               <tr class="blue-td">
                   <td><%= translatableContent[41] %></td>
                   <td><%= translatableContent[42] %></td>
                   <td><%= translatableContent[43] %></td>
               </tr>
               <tr class="blue-td">
                   <td><%= translatableContent[44] %></td>
                   <td><%= translatableContent[45] %></td>
                   <td><%= translatableContent[46] %></td>
               </tr>
               <tr class="blue-td">
                   <td><%= translatableContent[47] %></td>
                   <td><%= translatableContent[48] %></td>
                   <td><%= translatableContent[49] %></td>
               </tr>
           </table>
           <p>
               <%= complexContent[92] %>
           </p>
           <h2><%= simpleContent[25] %></h2>
           <p>
               <%= complexContent[93] %>
           </p>
           <div class="images"><img src="images_m_t_VII/graph1.png" alt="" width="340px" height="170px"><br><%= complexContent[94] %></div>
           <p>
               <%= complexContent[95] %>
           </p>
           <div class="images"><img src="images_m_t_VII/graph2.png" alt="" width="250px" height="150px"><br><%= complexContent[96] %></div>
           <p><%= complexContent[97] %></p>
           <div class="images"><img src="images_m_t_VII/graph3.png" alt="" width="300px" height="150px"><br><%= complexContent[98] %></div>
           <p>
               <%= complexContent[99] %>
           </p>
           <div class="images"><img src="images_m_t_VII/graph4.png" alt="" width="200px" height="200px"><br><%= complexContent[100] %></div>
           <p>
               <%= complexContent[101] %>
           </p>
           <table>
               <tr class="green-th">
                   <th><%= simpleContent[11] %></th>
                   <th><%= simpleContent[26] %></th>
                   <th><%= simpleContent[27] %></th>
               </tr>
               <tr class="green-td">
                   <td><%= translatableContent[8] %></td>
                   <td><%= translatableContent[37] %></td>
                   <td><%= translatableContent[37] %></td>
               </tr>
               <tr class="green-td">
                   <td><%= translatableContent[9] %></td>
                   <td><%= translatableContent[8] %></td>
                   <td><%= translatableContent[8] %></td>
               </tr>
               <tr class="green-td">
                   <td><%= translatableContent[10] %></td>
                   <td><%= translatableContent[9] %></td>
                   <td><%= translatableContent[9] %></td>
               </tr>
               <tr class="green-td">
                   <td><%= translatableContent[11] %></td>
                   <td><%= translatableContent[10] %></td>
                   <td><%= translatableContent[10] %></td>
               </tr>
               <tr class="green-td">
                   <td><%= translatableContent[12] %></td>
                   <td><%= translatableContent[11] %></td>
                   <td><%= translatableContent[11] %></td>
               </tr>
               <tr class="green-td">
                   <td><%= translatableContent[23] %></td>
                   <td><%= translatableContent[12] %></td>
                   <td><%= translatableContent[12] %></td>
               </tr>
           </table>
           <p>
               <%= complexContent[102] %>
           </p>
           <ul>
               <li><%= complexContent[103] %></li>
               <li><%= complexContent[104] %></li>
           </ul>
           <p>
               <%= complexContent[105] %>
           </p>
           <ul>
               <li><%= complexContent[106] %>
                   <div class="equation"><%= complexContent[107] %></div>
                   <div class="equation"><%= complexContent[108] %></div>
               </li>
               <li>
                   <%= complexContent[109] %>
               </li>
               <li>
                   <%= complexContent[110] %>
               </li>
               <li>
                   <%= complexContent[111] %>
               </li>
               <li>
                   <%= complexContent[112] %>
               </li>
               <li>
                   <%= complexContent[113] %>
               </li>
           </ul>
           <div class="images"><img src="images_m_t_VII/graph6.png" alt="" ><img src="images_m_t_VII/graph7.png" alt="" style="margin-left:20px"><br><%= complexContent[114] %></div>
           <p>
               <%= complexContent[115] %>
           </p>
           <p>
               <%= complexContent[116] %>
           </p>
           <table>
               <tr class="pink-th">
                   <th><%= simpleContent[24] %></th>
                   <th><%= complexContent[117] %></th>
                   <th><%= complexContent[118] %></th>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[35] %></td>
                   <td><%= translatableContent[36] %></td>
                   <td><%= translatableContent[37] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[38] %></td>
                   <td><%= translatableContent[39] %></td>
                   <td><%= translatableContent[40] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[41] %></td>
                   <td><%= translatableContent[42] %></td>
                   <td><%= translatableContent[43] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[44] %></td>
                   <td><%= translatableContent[45] %></td>
                   <td><%= translatableContent[46] %></td>
               </tr>
               <tr class="pink-td">
                   <td><%= translatableContent[47] %></td>
                   <td><%= translatableContent[48] %></td>
                   <td><%= translatableContent[49] %></td>
               </tr>
           </table>
           <p>
               <%= complexContent[119] %>
           </p>
           <div class="images"><img src="images_m_t_VII/graph8.png" alt=""><br><%= complexContent[120] %></div>
           <applet code="users.ekShiksha.graphdrawing_pkg.graphdrawingApplet.class"
              codebase="applet" archive="graphdrawing.jar"
              name="graphdrawing"  id="graphdrawing"
              width="600" height="422">
                <param name="draggable" value="true">
        </applet>

           <p>
               <%= complexContent[121] %>
           </p>
           <ul class="decimal">
               <li><%= complexContent[122] %></li>
               <li><%= complexContent[123] %></li>
               <li><%= complexContent[124] %></li>
           </ul>
           <p>
               <%= complexContent[125] %>
               <br> <%= complexContent[126] %>
               <br><%= complexContent[127] %>
           </p>
           <p>
               <%= complexContent[128] %>
           </p>
           <p>
               <%= complexContent[129] %>
           </p>
	   <fieldset class="what-learnt">
	   <legend class="what-learnt-legend"><%= complexContent[130] %></legend>
	   <ul class="what-learnt-list">
               <li><%= complexContent[131] %></li>
               <li><%= complexContent[132] %></li>
               <li><%= complexContent[133] %></li>
               <li><%= complexContent[134] %></li>
               <li><%= complexContent[135] %></li>
           </ul>
           </fieldset>
           
	  <fieldset class="exercise">
	   <legend class="exercise-legend"><%= complexContent[136] %></legend>
	   <ul class="exercise-list">
               <li><%= complexContent[137] %>
                   <ul class="exercise-sub-list">
                       <li><%= complexContent[138] %></li>
                       <li><%= complexContent[139] %></li>
                       <li><%= complexContent[140] %></li>
                       <li><%= complexContent[141] %></li>
                       <li><%= complexContent[142] %></li>
                       <li><%= complexContent[143] %></li>
                   </ul>
               </li>
               <li>
                   <%= complexContent[144] %>
                   <ul class="exercise-sub-list">
                       <li><%= complexContent[145] %>&nbsp;&nbsp;<input type="radio" name="wyhl1" value="true" onclick="funcwyhl1(true)"><%= simpleContent[28] %>&nbsp;<input type="radio" name="wyhl1" value="false" onclick="funcwyhl1(false)"><%= simpleContent[29] %></li>
                       <li><%= complexContent[146] %>&nbsp;&nbsp;<input type="radio" name="wyhl2" value="true" onclick="funcwyhl2(true)"><%= simpleContent[28] %>&nbsp;<input type="radio" name="wyhl2" value="false" onclick="funcwyhl2(false)"><%= simpleContent[29] %></li>
                       <li><%= complexContent[147] %>&nbsp;&nbsp;<input type="radio" name="wyhl3" value="true" onclick="funcwyhl3(true)"><%= simpleContent[28] %>&nbsp;<input type="radio" name="wyhl3" value="false" onclick="funcwyhl3(false)"><%= simpleContent[29] %></li>
                       <li><%= complexContent[148] %>&nbsp;&nbsp;<input type="radio" name="wyhl4" value="true" onclick="funcwyhl4(true)"><%= simpleContent[28] %>&nbsp;<input type="radio" name="wyhl4" value="false" onclick="funcwyhl4(false)"><%= simpleContent[29] %></li>
                       <li><%= complexContent[149] %>&nbsp;&nbsp;<input type="radio" name="wyhl5" value="true" onclick="funcwyhl5(true)"><%= simpleContent[28] %>&nbsp;<input type="radio" name="wyhl5" value="false" onclick="funcwyhl5(false)"><%= simpleContent[29] %></li>
                   </ul>
               </li>
	       <p id="resultwyhl" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
               <li>
                   <%= complexContent[150] %>
               </li>
               <li>
                    <%= complexContent[151] %>
               </li>
               <li>
                    <%= complexContent[152] %>
               </li>
               <li>
                    <%= complexContent[153] %>
               </li>
               <li>
                   <%= complexContent[154] %>
                   <ul class="exercise-sub-list">
                       <li><%= complexContent[155] %></li>
                       <li><%= complexContent[156] %></li>
                       
                   </ul>
               </li>
               <li>
                   <%= complexContent[157] %>
                   <ul class="exercise-sub-list">
                       <li><%= complexContent[158] %></li>
                       <li><%= complexContent[159] %></li>
                       <li><%= complexContent[160] %></li>
                       <li><%= complexContent[161] %></li>
                   </ul>
		<input type="radio" name="wyhl8" value="a" onclick="funcwyhl8('a')"><%= translatableContent[50] %>&nbsp;<input type="radio" name="wyhl8" value="b" onclick="funcwyhl8('b')"><%= translatableContent[51] %>&nbsp;<input type="radio" name="wyhl8" value="c" onclick="funcwyhl8('c')"><%= translatableContent[52] %>&nbsp;<input type="radio" name="wyhl8" value="d" onclick="funcwyhl8('d')"><%= translatableContent[53] %><p id="resultwyhl8" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
               </li>
               <li>
                   <%= complexContent[162] %>
                   <ul class="exercise-sub-list">
                       <li><%= simpleContent[30] %></li>
                       <li><%= simpleContent[31] %></li>
                       <li><%= simpleContent[32] %></li>
                       <li><%= simpleContent[33] %></li>
                   </ul>
		<input type="radio" name="wyhl9" value="a" onclick="funcwyhl9('a')"><%= translatableContent[50] %>&nbsp;<input type="radio" name="wyhl9" value="b" onclick="funcwyhl9('b')"><%= translatableContent[51] %>&nbsp;<input type="radio" name="wyhl9" value="c" onclick="funcwyhl9('c')"><%= translatableContent[52] %>&nbsp;<input type="radio" name="wyhl9" value="d" onclick="funcwyhl9('d')"><%= translatableContent[53] %><p id="resultwyhl9" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
               </li>
               <li>
                   <%= complexContent[163] %>
                   <ul class="exercise-sub-list">
                       <li><%= simpleContent[34] %></li>
                       <li><%= simpleContent[35] %></li>
                       <li><%= simpleContent[36] %></li>
                       <li><%= simpleContent[37] %></li>
			
                   </ul>
		   <input type="radio" name="wyhl10" value="a" onclick="funcwyhl10('a')"><%= translatableContent[50] %>&nbsp;<input type="radio" name="wyhl10" value="b" onclick="funcwyhl10('b')"><%= translatableContent[51] %>&nbsp;<input type="radio" name="wyhl10" value="c" onclick="funcwyhl10('c')"><%= translatableContent[52] %>&nbsp;<input type="radio" name="wyhl10" value="d" onclick="funcwyhl10('d')"><%= translatableContent[53] %><p id="resultwyhl10" style="display:none;border:solid 1px #048a26;color: #010101;background: #d5ecdb;padding:5px;"></p>
               </li>
               <li>
                   <%= complexContent[164] %>
               </li>
               <li>
                   <%= complexContent[165] %>
               </li>
               <li>
                   <%= complexContent[166] %>
               </li>
           </ul>
           </fieldset>
	   <fieldset class="what-learnt">
	   <legend class="what-learnt-legend"><%= complexContent[167] %></legend>
	   <ul class="what-learnt-list">
               <li>
                   <p><%= complexContent[168] %></p>
                   <p><%= complexContent[169] %></p>
               </li>
               <li>
                   <%= complexContent[170] %>
               </li>
               <li>
                   <%= complexContent[171] %> 
               </li>
               <li>
                   <%= complexContent[172] %>
               </li>
           </ul>
           </fieldset>
           <fieldset class="know-more">
           <legend class="know-more-legend"><%= complexContent[173] %></legend>
	   <p><p><%= complexContent[174] %></p>
	   </fieldset>
           
       </div>
    </body>
</html>

