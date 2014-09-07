<%
    String langId = request.getParameter("langId");
    final String SUFFIX = ".properties";
    final String FILENAME = "ApplicationResources";
    String filePath = getServletContext().getRealPath("/WEB-INF/classes/ekalavya/helper");
    ekalavya.econtent.helper.PropertiesHandler handler = new ekalavya.econtent.helper.PropertiesHandler();
    ekalavya.econtent.helper.EContentAdminHelper helper = new ekalavya.econtent.helper.EContentAdminHelper();
    String langCode = helper.getLanguageCode(Integer.parseInt(langId));
    String[][] keyValues = null;
    int size = 0;
    if(langId!=null && !langId.equals("-1")){
        keyValues = handler.getKeyValuePairs(filePath, FILENAME+langCode+SUFFIX);
        if( keyValues!= null && keyValues.length > 1) {
            size = keyValues.length;
        }
    }
    response.setContentType("text/xml");
    response.setCharacterEncoding("UTF-8");
%><?xml version="1.0" encoding="UTF-8"?>
        <items>
            <item>
               <display>Select any key</display>
               <value>-1</value>
            </item>
            <%
                for(int i=0;i<size;i++) {
                    int decValue = keyValues[i][1].charAt(0);
                    if((decValue > 64 && decValue < 91) || (decValue > 98 && decValue < 123)) {
            %>
            <item>
                <display><%= keyValues[i][0] %></display>
                <value><%= keyValues[i][0] %></value>
            </item>
            <%
                    }
                }
            %>
        </items>