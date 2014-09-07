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
import ekalavya.econtent.helper.UserHandler;
import ekalavya.econtent.bean.User;
import ekalavya.econtent.helper.Utility;
public class UpdateProfileAction extends Action{
    private static final String SUCCESS = "success";
    private static final String INPUT = "input";
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        //gettting HttpSession object
        HttpSession session = request.getSession();
        session.removeAttribute("formError");
        //declaring error string
        String error = ",";
        String role = (String)session.getAttribute("role");
        boolean result = false;
        if(role != null) {
            //declaring variable for form parameter to be saved
            String firstName = null;
            String lastName = null;
            String userId = null;
            String displayName = null;
            String email = null;
            String qualification = null;
            String profile = null;

            //getting form parameters values
            firstName = request.getParameter("firstName");
            lastName = request.getParameter("lastName");
            userId = request.getParameter("userId");
            displayName = request.getParameter("dispName");
            email = request.getParameter("email");
            qualification = request.getParameter("qualification");
            profile = request.getParameter("profile");
            request.setCharacterEncoding("UTF-8"); // Do this so we can capture non-Latin chars

            //check the validity of form values
            if(!Utility.isStringValid(firstName, 3, 30) || !Utility.validateName(firstName)) {
                error += "firstName,";
            }
            if(!Utility.isStringValid(lastName,3,30) || !Utility.validateName(lastName)) {
                error += "lastName,";
            }
            if(!Utility.isStringValid(displayName, 5, 30) || !Utility.validateDisplayName(displayName)) {
                error += "dispName,";
            }
            if(!Utility.validateEmail(email)) {
                error += "email,";
            }
            if(!Utility.isStringValid(qualification, 2, 30) || !Utility.validateQualification(qualification)) {
                error += "qualification,";
            }
            if(!Utility.isStringValid(profile, 30, 300)) {
                error += "profile,";
            }
            if(error.equals(",")) {
                UserHandler handler = new UserHandler();
                User user = new User();
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setDisplayName(displayName);
                user.setEmail(email);
                user.setQualification(qualification);
                user.setProfile(profile);
                user.setUserId(userId);
                String oldEmail = handler.getUserEmail(userId);
                if(oldEmail.equals(email)) {
                    if(handler.updateUserProfile(user)) {
                        error = ",success,";
                        result = true;
                    } else {
                        error= ",error,";
                    }
                } else {
                    if(!handler.isEmailExist(email)) {
                        if(handler.updateUserProfile(user)) {
                            error = ",success,";
                            result = true;
                        } else {
                            error= ",error,";
                        }
                    }else {
                        error = ",emailnotavailable,";
                    }
                }
            }
        }
        session.setAttribute("formError", error);
        if(result) {
            return mapping.findForward(SUCCESS);
        } else {
            return mapping.findForward(INPUT);
        }
    }
}


