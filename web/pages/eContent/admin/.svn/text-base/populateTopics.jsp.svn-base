<%
    ekalavya.econtent.helper.EContentAdminHelper helper = new ekalavya.econtent.helper.EContentAdminHelper();
    ekalavya.econtent.bean.Topic[] topics = null;
    String langId = request.getParameter("langId");
    int size = 0;
    if(langId!=null && !langId.equals("-1")){
        topics = helper.getTopics(Integer.parseInt(langId));
        if(topics != null) {
            size = topics.length;
        }
    }
response.setContentType("text/xml");
response.setCharacterEncoding("UTF-8");
%><?xml version="1.0" encoding="UTF-8"?>
        <items>
            <item>
               <display>Select any topic</display>
               <value>-1</value>
            </item>
<%
    for(int i=0;i<size;i++) {
%>
            <item>
               <display><%= topics[i].getTopicName() %></display>
               <value><%= topics[i].getTopicId() %></value>
            </item>
<%

    }
%>
        </items>