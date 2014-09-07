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
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.Action;

public class LogoutAction extends Action{
    /* forward name="success" path="" */
    private final static String SUCCESS = "success";

    //local for english language
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        HttpSession session = request.getSession();
        session.removeAttribute("userId");
        session.removeAttribute("role");
        session.removeAttribute("user");
        session.removeAttribute("translatorLangId");
        session.removeAttribute("translatorTopic");
        session.invalidate();
        return mapping.findForward(SUCCESS);
    }
}
