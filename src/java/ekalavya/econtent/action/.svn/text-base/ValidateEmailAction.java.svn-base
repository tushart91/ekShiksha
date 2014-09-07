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
import ekalavya.econtent.bean.User;
import ekalavya.econtent.helper.SendMailHTMLSupportBean;
import ekalavya.econtent.helper.HtmlUtility;
import java.util.regex.*;
import java.util.Properties;
import java.io.FileInputStream;
import java.io.IOException;
public class ValidateEmailAction extends Action {
    private static final String SUCCESS = "success";
     @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
         String message = ",";
         String email = "";
         String code = "false";
         String encryptedEmail = request.getParameter("tmpl");
         String encryptedCode = request.getParameter("code");
         try {
            email = SimpleStringCipher.decrypt(encryptedEmail);
            code = SimpleStringCipher.decrypt(encryptedCode);
         }catch(Exception e) {
             message = ",invalid,";
         }
         if(email == null || code == null) {
             message = ",invalid,";
         } else {
             UserHandler handler = new UserHandler();
             if(code.equals("true") && handler.confirmUser(email)) {
                 message = ",valid,";
                 User user = handler.getUserInformation(email);
                 FileInputStream fis = null;
                 try {
                      String fileName = "welcome_mail.html";
                      String contextPath = getServlet().getServletContext().getRealPath("/");
                      String filePath = contextPath+"mail-template";
                      String propertiesFile = contextPath+"properties"+System.getProperty("file.separator")+"setting.properties";
                      fis = new FileInputStream(propertiesFile);
                      Properties props = new Properties();
                      props.load(fis);
                      String forgotPasswordUrl = props.getProperty("web.url.forgotpassword");
                      String contactUrl = props.getProperty("web.url.contactus");
                      String signinUrl = props.getProperty("web.url.home");
                      String emailMessage = HtmlUtility.read(filePath,fileName);
                      emailMessage = Pattern.compile("#firstname#").matcher(emailMessage).replaceFirst(user.getDisplayName());
                      emailMessage = Pattern.compile("#email#").matcher(emailMessage).replaceFirst(email);
                      emailMessage = Pattern.compile("#userid#").matcher(emailMessage).replaceFirst(user.getUserId());
                      emailMessage = Pattern.compile("#link1#").matcher(emailMessage).replaceFirst(forgotPasswordUrl);
                      emailMessage = Pattern.compile("#link2#").matcher(emailMessage).replaceFirst(signinUrl);
                      emailMessage = Pattern.compile("#link3#").matcher(emailMessage).replaceFirst(contactUrl);
                      SendMailHTMLSupportBean mail = new SendMailHTMLSupportBean();
                      mail.send("ekshiksha@cse.iitb.ac.in", email, "", "", "Welcome to ekShiksha", emailMessage, "cygnus.it.iitb.ac.in");
                  }catch(Exception e) {

                  }finally {
                            fis.close();
                  }
             } else {
                 message = ",invalid,";
             }
         }
         HttpSession session = request.getSession();
         session.setAttribute("message", message);
         return mapping.findForward(SUCCESS);
     }
}
