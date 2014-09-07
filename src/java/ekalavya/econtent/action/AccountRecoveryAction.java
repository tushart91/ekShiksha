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
import ekalavya.econtent.bean.User;
import ekalavya.econtent.helper.SendMailHTMLSupportBean;
import ekalavya.econtent.helper.HtmlUtility;
import java.util.regex.*;
import java.util.Properties;
import java.io.FileInputStream;
import java.io.IOException;
public class AccountRecoveryAction extends Action {
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
        String email = null;
        String answer = null;

        request.setCharacterEncoding("UTF-8"); // Do this so we can capture non-Latin chars
        //getting the captcha stored in session
        Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
        //getting form parameters values
        email = request.getParameter("email");
        answer = request.getParameter("captchaText");

        //check the validity of form values
        if(!Utility.validateEmail(email)) {
            error += "email,";
        }
        if (answer == null || !captcha.isCorrect(answer)) {
            error += "captcha,";
        }
        if(error.equals(",")) {
            UserHandler userHandler = new UserHandler();
                if(userHandler.isEmailExist(email)) {
                    FileInputStream fis = null;
                    try{
                        User user = userHandler.getUserDetails(email);
                        String fileName = "password_recovery.html";
                        String contextPath = getServlet().getServletContext().getRealPath("/");
                        String filePath = contextPath+"mail-template";
                        String propertiesFile = contextPath+"properties"+System.getProperty("file.separator")+"setting.properties";
                        fis = new FileInputStream(propertiesFile);
                        Properties props = new Properties();
                        props.load(fis);
                        String homeUrl = props.getProperty("web.url.home");
                        String contactUrl = props.getProperty("web.url.contactus");
                        String message = HtmlUtility.read(filePath,fileName);
                        System.out.println("Message : "+message);
                        System.out.println("Email : "+user.getEmail());
                        message = Pattern.compile("#firstname#").matcher(message).replaceFirst(user.getDisplayName());
                        message = Pattern.compile("#loginid#").matcher(message).replaceFirst(user.getUserId());
                        message = Pattern.compile("#password#").matcher(message).replaceFirst(user.getPassword());
                        message = Pattern.compile("#link1#").matcher(message).replaceFirst(homeUrl);
                        message = Pattern.compile("#link2#").matcher(message).replaceFirst(contactUrl);
                        SendMailHTMLSupportBean mail = new SendMailHTMLSupportBean();
                        mail.send("ekshiksha@cse.iitb.ac.in", user.getEmail(), "", "", "ekShiksha account recovery", message, "cygnus.it.iitb.ac.in");
                        result = true;
                    }catch(Exception e) {
                        result = false;
                        error = ",error,";
                    }finally {
                        fis.close();
                    }
                    
                } else {
                    error = ",emailnotavailable,";
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
