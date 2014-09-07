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
import ekalavya.econtent.helper.Utility;
import ekalavya.econtent.helper.UserHandler;
import nl.captcha.Captcha;
import ekalavya.econtent.bean.Feedback;

public class FeedbackAction  extends Action{
    private static final String SUCCESS = "success";
    private static final String INPUT = "input";
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        boolean result = false;
        //gettting HttpSession object
        HttpSession session = request.getSession();
        //creating object of UserHandler class
        UserHandler userHandler = new UserHandler();
        //declaring error string
        String error = ",";
        //declaring variable for form parameter to be saved
        String name = null;
        String userId = null;
        String email = null;
        String topic = null;
        String pageUrl = null;
        String comment = null;
        String answer = null;
        String ipAddress = null;
        request.setCharacterEncoding("UTF-8"); // Do this so we can capture non-Latin chars
        //getting the captcha stored in session
        Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
        //getting form parameters values
        name = request.getParameter("name");
        userId = request.getParameter("userId");
        topic = request.getParameter("topic");
        email = request.getParameter("email");
        pageUrl = request.getParameter("pageUrl");
        comment = request.getParameter("comment");
        answer = request.getParameter("captchaText");

        //check the validity of form values
        if(!Utility.isStringValid(name, 5, 30) || !Utility.validateUserName(name)) {
            error += "name,";
        }
        if(!Utility.isStringValid(userId, 5, 16) || !Utility.validateUserId(userId)) {
            error += "userId,";
        }
        if(!Utility.validateEmail(email)) {
            error += "email,";
        }
        if(!Utility.isStringValid(topic) || topic.equals("-1")) {
            error += "topic,";
        }
        if(!Utility.isStringValid(comment, 10, 1000)) {
            error += "comment,";
        }
        if (answer == null || !captcha.isCorrect(answer)) {
            error += "captcha,";
        }
        if(error != null && error.equals(",")) {
            ipAddress = request.getHeader("X-FORWARDED-FOR");
            if(ipAddress == null) {
                ipAddress = request.getRemoteAddr();
            }
            Feedback feedback = new Feedback();
            feedback.setTopic(topic);
            feedback.setName(name);
            feedback.setEmail(email);
            feedback.setUserId(userId);
            feedback.setComment(comment);
            feedback.setPageUrl(pageUrl);
            feedback.setIpAddress(ipAddress);
            if(!userHandler.checkValidFeedback(feedback)) {
                error = ",error,";
            } else if(userId.equalsIgnoreCase("Guest")) {
                if(userHandler.saveFeedback(feedback)) {
                    result = true;
                } else {
                    error = ",error,";
                }
            } else {
                if(userHandler.isUserIdExist(userId)) {
                    if(userHandler.saveFeedback(feedback)) {
                        result = true;
                    } else {
                        error = ",error,";
                    }
                } else {
                    error = ",useridnotexist,";
                }
            }
        } else {
            error += "info,";
        }
        session.setAttribute("error", error);
        if(result) {
            return mapping.findForward(SUCCESS);
        } else {
            return mapping.findForward(INPUT);
        }
        
       
    }

}
