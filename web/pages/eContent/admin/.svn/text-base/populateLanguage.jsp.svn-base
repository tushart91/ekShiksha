<%
ekalavya.econtent.helper.EContentAdminHelper helper = new ekalavya.econtent.helper.EContentAdminHelper();
    ekalavya.econtent.bean.LanguageBean[] lBean = null;
    String topicId = request.getParameter("topicId");
    int size = 0;
    if(topicId!=null && !topicId.equals("-1")){
        lBean = helper.getTranslationLanguage(Integer.parseInt(topicId));
        if(lBean != null) {
            size = lBean.length;
        }
    }
response.setContentType("text/xml");
response.setCharacterEncoding("UTF-8");
%><?xml version="1.0" encoding="UTF-8"?>
<items>
    <item>
<display>Select language</display>
		<value>-1</value>
</item>
<%
    for(int i=0;i<size;i++) {
%>
<item>
    <display><%= lBean[i].getDescription() %></display>
    <value><%= lBean[i].getLanguageId() %></value>
</item>
<%

    }
%>


</items>