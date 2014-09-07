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
import ekalavya.econtent.helper.SimpleStringCipher;
import ekalavya.econtent.helper.Utility;
import java.util.Calendar;

public class NotMyAccountAction extends Action {
    private static final String SUCCESS = "success";
     @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
         String message = ",";
         String encryptedEmail = request.getParameter("tmpl");
         String encryptedUserId = request.getParameter("secret");
         String email = "";
         String userId = "";
         try {
            email = SimpleStringCipher.decrypt(encryptedEmail);
            userId = SimpleStringCipher.decrypt(encryptedUserId);
         }catch(Exception e) {
             message = ",invalid,";
         }
         if(!Utility.isStringValid(email) && !Utility.isStringValid(userId)) {
             message = ",invalid,";
         } else {
             UserHandler handler = new UserHandler();
             if(handler.searchUser(email, userId)) {
                 message = ",valid,";
             } else {
                 message = ",invalid,";
             }
         }
         HttpSession session = request.getSession();
         session.setAttribute("message", message);
         session.setAttribute("requestedEmail", email);
         session.setAttribute("requestedUserId", userId);
         session.setAttribute("requestType", "search");
         return mapping.findForward(SUCCESS);
     }
}
