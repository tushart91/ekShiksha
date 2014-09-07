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
public class ShowTranslationContentAction extends Action {
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
        String tId = (String)request.getParameter("topicId");
        String lId = (String)session.getAttribute("langId");
        if(tId==null) {
            session.removeAttribute("contentList");
            return mapping.findForward(SUCCESS);

        }
        int topicId=0;
        int langId=0;
        try {
            topicId = Integer.parseInt(tId);
            langId = Integer.parseInt(lId);
        }catch(Exception e) {
            session.removeAttribute("contentList");
            return mapping.findForward(SUCCESS);
        }
        ArrayList contentList = contentHelper.getContents(topicId,langId);
        if(contentList!=null && contentList.size()>0)
                session.setAttribute("contentList", contentList);
        else
                session.removeAttribute("contentList");
        return mapping.findForward(SUCCESS);
    }

}
