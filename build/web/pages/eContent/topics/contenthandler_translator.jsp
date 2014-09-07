<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="helper" class="ekalavya.econtent.helper.ContentHandler"/>
<%
        String[][] simpleContent = null;
        String[][] complexContent = null;
        String[] translatableContent = null;
        String topicId = request.getParameter("topicId");
        String linkId = request.getParameter("linkId");
        String langId = (String)session.getAttribute("translatorLangId");
        if(langId == null) {
            langId = "1";
        }
        if(topicId != null && linkId != null && langId != null) {
            session.setAttribute("topicId", topicId);
            session.setAttribute("linkId",linkId);
            simpleContent = helper.getSimpleContentForTranslator(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            complexContent = helper.getComplexContentForTranslator(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            translatableContent = helper.getTranslatableContent(Integer.parseInt(topicId), Integer.parseInt(linkId), Integer.parseInt(langId));
            String[] simple = helper.getSimpleContent(Integer.parseInt(topicId), Integer.parseInt(linkId), 1);
            String[] complex = helper.getComplexContent(Integer.parseInt(topicId), Integer.parseInt(linkId), 1);
            session.setAttribute("simpleContent",simple);
            session.setAttribute("complexContent",complex);
        }
%>