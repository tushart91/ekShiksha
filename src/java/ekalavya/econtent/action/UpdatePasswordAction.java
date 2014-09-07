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
import ekalavya.econtent.helper.UserHandler;
import ekalavya.econtent.helper.Utility;

public class UpdatePasswordAction extends Action {
    private static final String SUCCESS = "success";
    private static final String INPUT = "input";
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        boolean result = false;
        //gettting HttpSession object
        HttpSession session = request.getSession();
        //declaring error string
        String error = ",";
        //declaring variable for form parameter to be saved
        String password = null;
        String confirmPassword = null;
        String currentPassword = null;
        request.setCharacterEncoding("UTF-8"); // Do this so we can capture non-Latin chars
        //getting the captcha stored in session
        password = request.getParameter("upassword");
        confirmPassword = request.getParameter("cpassword");
        currentPassword = request.getParameter("currentpassword");
        //check the validity of form values
        if(!Utility.isStringValid(currentPassword, 6, 16)) {
            error += "currentpassword,";
        }
        if(!Utility.isStringValid(password, 6, 16)) {
            error += "upassword,";
        }
        if(!Utility.isStringValid(confirmPassword, 5, 16)) {
            error += "cpassword,";
        }
        if(Utility.isStringValid(password, 6, 16) && Utility.isStringValid(confirmPassword, 6, 16)) {
            if(!password.equals(confirmPassword)) {
                error += "notequal,";
            }
        }
        if(error.equals(",")) {
            UserHandler handler = new UserHandler();
            String userId = (String)session.getAttribute("userId");
            if(handler.checkPassword(userId, currentPassword)) {
                if(handler.updatePassword(userId, password)) {
                    error = ",success,";
                    result = true;
                } else {
                    error = ",error,";
                }
            } else {
                error = ",passwordnotmatch,";
            }
        }
        session.setAttribute("passwordUpdateError", error);
        if(result) {
            return mapping.findForward(SUCCESS);
        } else {
            return mapping.findForward(INPUT);
        }
    }

}
