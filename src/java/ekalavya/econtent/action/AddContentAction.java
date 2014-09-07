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
import ekalavya.econtent.helper.EContentAdminHelper;
public class AddContentAction extends Action{
        private static final String SUCCESS = "success";
        private static final String INPUT = "input";
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
        String error = "";
        String tId = request.getParameter("topicId");
        if(tId == null || tId.equals("-1")) {
            error = "<li>Please select any topic</li>";
        }
        int topicId = Integer.parseInt(tId);
        String url = request.getParameter("url");
        if(url == null || url.length() < 1) {
            error += "<li>Url can't be empty.</li>";
        }
        String desc = request.getParameter("description");
        if(desc == null || desc.length()<1) {
            error += "<li>Description can't be empty.</li>";
        }
        if(error.length() > 1) {
            session.setAttribute("error", error);
            return mapping.findForward(INPUT);
        }
        EContentAdminHelper helper = new EContentAdminHelper();
        int linkId = helper.getLinkId(topicId);
        if(helper.addContent(linkId,topicId,url,"","","",desc,1,1,"","")){
            return mapping.findForward(SUCCESS);
        }
        if(error == null || error.length()<1) {
            error = "<li>Sorry, we can't proceed your request. Try again.</li>";
            session.setAttribute("error", error);
        }
        return mapping.findForward(INPUT);
    }
}
