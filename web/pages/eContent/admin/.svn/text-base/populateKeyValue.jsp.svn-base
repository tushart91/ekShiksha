<%@page import="ekalavya.econtent.helper.PropertiesHandler"%>
<%@page import="ekalavya.econtent.helper.EContentAdminHelper"%>
<%
    final String SUFFIX = ".properties";
    final String FILENAME = "ApplicationResources";
    String key = request.getParameter("key");
    String langId = request.getParameter("langId");
    EContentAdminHelper helper = new EContentAdminHelper();
    String langCode = helper.getLanguageCode(Integer.parseInt(langId));
    String filePath = getServletContext().getRealPath("/WEB-INF/classes/ekalavya/helper");
    String fileName = FILENAME+langCode+SUFFIX;
    PropertiesHandler handler = new PropertiesHandler();
    String result = handler.getValue(key, filePath, fileName);
    out.print(result);
    
%>