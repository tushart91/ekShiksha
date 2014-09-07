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
import ekalavya.econtent.helper.Utility;

public class AddPropertyAction extends Action{
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
        String key = request.getParameter("key");
        String value = request.getParameter("keyValue");
        String[] errString = new String[4];
        boolean isError = false;
        if(key == null || key.length() < 1) {
            errString[0] = new String("Key can't be empty");
            isError = true;
        }else {
            if(!Utility.checkValidKey(key)) {
                errString[0] = new String("Key Can only have [a-z,A-Z and .] and must start and end with alphabet");
                isError = true;
            }
        }
        if(value == null || value.length() < 1) {
            errString[1] = new String("Value can't be empty");
            isError = true;
        }
        /*if(error != null && error.length() > 1) {
            session.setAttribute("error", error);
            return mapping.findForward(INPUT);
        }*/
        
        if(isError) {
            session.setAttribute("error", errString);
            return mapping.findForward(INPUT);
        }
        PropertiesHandler handler = new PropertiesHandler();
        String filePath = getServlet().getServletContext().getRealPath("/WEB-INF/classes/ekalavya/helper");
        String[] files = {FILENAME+"_en_US"+SUFFIX,FILENAME+"_bn_IN"+SUFFIX,FILENAME+"_gu_IN"+SUFFIX,
                          FILENAME+"_hi_IN"+SUFFIX,FILENAME+"_ml_IN"+SUFFIX,FILENAME+"_mr_IN"+SUFFIX,
                          FILENAME+"_ta_IN"+SUFFIX,FILENAME+"_te_IN"+SUFFIX};
        boolean flag = true;
        for(int i=0;i<files.length;i++) {
            if(!handler.setKeyValuePair(key, value, filePath, files[i])) {
                flag = false;
            }
        }
        if(!flag) {
            errString[2] = new String("<li>Duplicate Key Value</li>");
            session.setAttribute("error", errString);
            return mapping.findForward(INPUT);
        }
        errString[3] = new String("<li>New property successfully added.</li>");
        session.setAttribute("error",errString);
        return mapping.findForward(SUCCESS);
    }

}