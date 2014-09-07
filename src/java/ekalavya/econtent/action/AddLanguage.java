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
public class AddLanguage extends Action{
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
        String langEnglish = (String)request.getParameter("languageName");
        String langRegional = (String)request.getParameter("description");
        String unicodeRegional = "";
        if(langRegional != null && langRegional.length() < 1) {
            unicodeRegional = new String(langRegional.getBytes("ISO8859-1"),"UTF8");
        }
        if((langEnglish == null || langEnglish.length()<1) || (unicodeRegional == null || unicodeRegional.length() <1 )){
            return mapping.findForward(INPUT);
        }
        EContentAdminHelper helper = new EContentAdminHelper();
        langEnglish = helper.captalizeFirstChar(langEnglish);
        String query = "select lang_desc from languages where lang_desc='"+langEnglish+"'";
        if(!helper.isDuplicate(query)) {
            if(helper.addLanguage(langEnglish, unicodeRegional)) {
                return mapping.findForward(SUCCESS);
            }
        }
        HttpSession session = request.getSession();
        session.setAttribute("error", "Sorry, we can't proceed your request. This may be a duplicate entry.");
        return mapping.findForward(INPUT);
    }
}
