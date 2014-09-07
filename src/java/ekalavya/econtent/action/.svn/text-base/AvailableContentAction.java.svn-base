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
import ekalavya.econtent.helper.ShowContentHelper;
import java.util.ArrayList;
public class AvailableContentAction extends Action {
        /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */

    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        ShowContentHelper contentHelper = new ShowContentHelper();
        String lId = (String)session.getAttribute("langId");
        if(lId==null) {
            lId = "1";
        }
        int langId = Integer.parseInt(lId);
        ArrayList contentList = contentHelper.getContents(langId);
        if(contentList!=null && contentList.size()>0)
                session.setAttribute("contentList", contentList);
        else
                session.removeAttribute("contentList");
        return mapping.findForward(SUCCESS);
    }

}
