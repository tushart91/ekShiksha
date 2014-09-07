

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
import ekalavya.econtent.helper.SendMailHTMLSupportBean;
import ekalavya.econtent.helper.HtmlUtility;
import java.util.regex.*;
import java.util.Properties;
import java.io.FileInputStream;
import java.io.IOException;
import ekalavya.econtent.helper.SimpleStringCipher;

public class SignUpAction extends Action{
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

        boolean result = false;
        //gettting HttpSession object
        HttpSession session = request.getSession();
        //declaring error string
        String error = ",";
        //declaring variable for form parameter to be saved
        String firstName = null;
        String lastName = null;
        String userId = null;
        String password = null;
        String confirmPassword = null;
        String displayName = null;
        String email = null;
        String mobile = null;
        String role = null;
        String langId = null;
        String topicId = null;
        String qualification = null;
        String profile = null;
        String answer = null;

        request.setCharacterEncoding("UTF-8"); // Do this so we can capture non-Latin chars
        //getting the captcha stored in session
        Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
        //getting form parameters values
        firstName = request.getParameter("firstName");
        lastName = request.getParameter("lastName");
        userId = request.getParameter("userId");
        password = request.getParameter("upassword");
        confirmPassword = request.getParameter("cpassword");
        displayName = request.getParameter("dispName");
        email = request.getParameter("email");
        mobile = request.getParameter("mobile");
        role = request.getParameter("role");
        langId = request.getParameter("langId");
        topicId = request.getParameter("topicId");
        qualification = request.getParameter("qualification");
        profile = request.getParameter("profile");
        answer = request.getParameter("captchaText");
        
        //check the validity of form values
        if(!Utility.isStringValid(firstName, 3, 30) || !Utility.validateName(firstName)) {
            error += "firstName,";
        }
        if(!Utility.isStringValid(lastName,3,30) || !Utility.validateName(lastName)) {
            error += "lastName,";
        }
        if(!Utility.isStringValid(userId, 5, 16) || !Utility.validateUserId(userId)) {
            error += "userId,";
        }
        if(!Utility.isStringValid(displayName, 5, 30) || !Utility.validateDisplayName(displayName)) {
            error += "dispName,";
        }
        if(!Utility.isStringValid(password, 6, 16)) {
            error += "upassword,";
        }
        if(!Utility.isStringValid(confirmPassword, 6, 16)) {
            error += "cpassword,";
        }
        if(Utility.isStringValid(password, 6, 16) && Utility.isStringValid(confirmPassword, 6, 16)) {
            if(!password.equals(confirmPassword)) {
                error += "notequal,";
            }
        }
        if(!Utility.validateEmail(email)) {
            error += "email,";
        }
        if(!Utility.validateMobileNumber(mobile)) {
            error += "mobile,";
        }
        if(!Utility.isStringValid(role) || langId.trim().equals("-1")) {
            error += "role,";
        }
        if(!Utility.isStringValid(langId) || langId.trim().equals("-1")) {
            error += "langId,";
        }
        if(!Utility.isStringValid(topicId) || topicId.trim().equals("-1")) {
            error += "topicId,";
        }
        if(!Utility.isStringValid(qualification, 2, 30) || !Utility.validateQualification(qualification)) {
            error += "qualification,";
        }
        if(!Utility.isStringValid(profile, 30, 300)) {
            error += "profile,";
        }
        if (answer == null || !captcha.isCorrect(answer)) {
            error += "captcha,";
        }
        if(error.equals(",")) {
            UserHandler userHandler = new UserHandler();
            if(!userHandler.isUserIdExist(userId)) {
                if(!userHandler.isEmailExist(email)) {
                    if(userHandler.createUser(userId, password, displayName, role, Integer.parseInt(langId), Integer.parseInt(topicId), qualification, email, Long.parseLong(mobile), profile, Utility.captalizeFirstChar(firstName), Utility.captalizeFirstChar(lastName))) {
                        error = ",success,";
                        result = true;
                        FileInputStream fis = null;
                        try {
                            String fileName = "registration_mail.html";
                            String contextPath = getServlet().getServletContext().getRealPath("/");
                            String filePath = contextPath+"mail-template";
                            String propertiesFile = contextPath+"properties"+System.getProperty("file.separator")+"setting.properties";
                            fis = new FileInputStream(propertiesFile);
                            Properties props = new Properties();
                            props.load(fis);
                            String validationUrl = props.getProperty("web.url.validate");
                            String contactUrl = props.getProperty("web.url.contactus");
                            String nomyaccountUrl = props.getProperty("web.url.notmyaccount");
                            String encryptedEmail = SimpleStringCipher.encrypt(email);
                            String encryptedCode = SimpleStringCipher.encrypt("true");
                            String encryptedUserId = SimpleStringCipher.encrypt(userId);
                            validationUrl += "?tmpl="+encryptedEmail;
                            validationUrl += "&code="+encryptedCode;
                            nomyaccountUrl += "?tmpl="+encryptedEmail;
                            nomyaccountUrl += "&secret="+encryptedUserId;
                            String message = HtmlUtility.read(filePath,fileName);
                            message = Pattern.compile("#firstname#").matcher(message).replaceFirst(displayName);
                            message = Pattern.compile("#link1#").matcher(message).replaceAll(validationUrl);
                            message = Pattern.compile("#link2#").matcher(message).replaceFirst(nomyaccountUrl);
                            message = Pattern.compile("#link3#").matcher(message).replaceFirst(contactUrl);
                            SendMailHTMLSupportBean mail = new SendMailHTMLSupportBean();
                            mail.send("ekshiksha@cse.iitb.ac.in", email, "", "", "ekShiksha Account Confirmation", message, "cygnus.it.iitb.ac.in");
                        }catch(Exception e) {

                        }finally {
                            fis.close();
                        }
                    } else {
                        error = ",error,";
                    }
                } else {
                    error = ",emailnotavailable,";
                }
            } else {
                error = ",useridnotavailable,";
            }
        }
        
        session.setAttribute("formError", error);
        session.setAttribute("registeredEmail", email);
        if(result) {
            return mapping.findForward(SUCCESS);
        } else {
            return mapping.findForward(INPUT);
        }
    }
}
