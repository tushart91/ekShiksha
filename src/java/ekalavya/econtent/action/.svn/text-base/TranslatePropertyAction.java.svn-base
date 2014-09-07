/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.action;

/**
 *
 * @author rkjangir
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

import ekalavya.econtent.helper.PropertiesHandler;
import ekalavya.econtent.helper.EContentAdminHelper;
public class TranslatePropertyAction extends Action{
        private static final String SUCCESS = "success";
        private static final String INPUT = "input";
        private static final String SUFFIX = ".properties";
        private static final String FILENAME = "ApplicationResources";
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        String[] errString = new String[5];
        boolean flag = true;
        String langId = request.getParameter("langId");
        String key = request.getParameter("key");
        String keyValue = request.getParameter("rkeyValue");
        String unicodeKeyValue = "";
        if(keyValue != null && keyValue.length() > 1) {
            unicodeKeyValue = new String(keyValue.getBytes("ISO8859-1"),"UTF8");
        }
        if(langId == null || langId.equals("-1")) {
            errString[0] = new String("Please select any language");
            flag = false;
        }
        if(key == null || key.equals("-1")) {
            errString[1] = new String("Please select any key");
            flag = false;
        }
        if(unicodeKeyValue == null || unicodeKeyValue.length() < 1) {
            errString[2] = new String("Property value can't be empty.");
            flag = false;
        }
        if(!flag) {
            session.setAttribute("error", errString);
            return mapping.findForward(INPUT);
        }
        EContentAdminHelper helper = new EContentAdminHelper();
        String langCode = helper.getLanguageCode(Integer.parseInt(langId));
        if(langCode != null) {
            PropertiesHandler handler = new PropertiesHandler();
            String filePath = getServlet().getServletContext().getRealPath("/WEB-INF/classes/ekalavya/helper");
            String fileName = FILENAME+langCode+SUFFIX;
            if(handler.updateKeyValuePair(key, unicodeKeyValue, filePath, fileName)) {
                flag = true;
            }
            
        }
        if(flag) {
            errString[3] = new String("<li>Translation of "+unicodeKeyValue+" successfully completed.</li>");
            session.setAttribute("error", errString);
            return mapping.findForward(SUCCESS);
        }
        errString[4] = new String("<li>Sorry, We can't proceed your request.</li>");
        session.setAttribute("error", errString);
        return mapping.findForward(INPUT);
    }
}
