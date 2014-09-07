<%--
    Document   : introduction
    Created on : Jul 27, 2010, 05:03:57 PM
    Author     : Rajanikant
--%>

<%@page contentType="text/html;charset=utf-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
        String id = request.getParameter("topicId");
        String url = "showTranslationContents.do?topicId="+id;
        session.setAttribute("currentAction",url);
        int count = 0;
%>


            <h2><a href="#"><bean:message key="ec.heading"/></a></h2>
            <table width="100%">
                <thead>
                    <tr>
                        <th colspan="3"><bean:message key="ec.available"/></th>
                    </tr>
                    <tr>
                        <th>Topic</th>
                        <th>Author</th>
                        <th>Level</th>
                    </tr>
                </thead>
                <logic:present name="contentList" scope="session">
                    <tbody>
                    <logic:iterate id="content" name="contentList">
                    <% if(count % 2==0){
                    %>
                    <tr>
                        <td><a href="showTranslationPage.do?topicId=<bean:write name="content" property="topicId"/>&linkId=<bean:write name="content" property="linkId"/>"><bean:write name="content" property="desc"/></a></td>
                        <td><bean:write name="content" property="author"/></td>
                        <td><bean:write name="content" property="level"/></td>
                    </tr>

                    <%
                       } else {
                    %>
                    <tr  class="odd">
                        <td><a href="showTranslationPage.do?topicId=<bean:write name="content" property="topicId"/>&linkId=<bean:write name="content" property="linkId"/>"><bean:write name="content" property="desc"/></a></td>
                        <td class="odd"><bean:write name="content" property="author"/></td>
                        <td class="odd"><bean:write name="content" property="level"/></td>
                    </tr>

                    <%
                       }
                       count++;
                    %>
                    </logic:iterate>
                    </tbody>
                </logic:present>

                <logic:notPresent name="contentList" scope="session">

                <tfoot>
                    <tr>
                        <td><bean:message key="ec.notavailable"/></td>
                    </tr>
                </tfoot>

                </logic:notPresent>
                </table>


