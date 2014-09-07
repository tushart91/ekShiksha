/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.action;

/**
 *
 * @author rkjangir
 */
import ekalavya.econtent.helper.SendMailHTMLSupportBean;
import ekalavya.econtent.helper.HtmlUtility;
import java.util.regex.*;
import java.util.Properties;
import java.io.FileInputStream;
import java.io.IOException;
import ekalavya.econtent.helper.SimpleStringCipher;
import ekalavya.econtent.helper.UserHandler;
import ekalavya.econtent.bean.User;
public class RetrieveConfirmationMailAction {
    
    public boolean retrieveUrl(String email, String path) throws IOException {
        boolean result = false;
        FileInputStream fis = null;
        try {
            UserHandler handler = new UserHandler();
            User user = handler.getUserInformation(email);
            String fileName = "registration_mail.html";
            String contextPath = path;
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
            String encryptedUserId = SimpleStringCipher.encrypt(user.getUserId());
            validationUrl += "?tmpl="+encryptedEmail;
            validationUrl += "&code="+encryptedCode;
            nomyaccountUrl += "?tmpl="+encryptedEmail;
            nomyaccountUrl += "&secret="+encryptedUserId;
            String message = HtmlUtility.read(filePath,fileName);
            message = Pattern.compile("#firstname#").matcher(message).replaceFirst(user.getDisplayName());
            message = Pattern.compile("#link1#").matcher(message).replaceAll(validationUrl);
            message = Pattern.compile("#link2#").matcher(message).replaceFirst(nomyaccountUrl);
            message = Pattern.compile("#link3#").matcher(message).replaceFirst(contactUrl);
            SendMailHTMLSupportBean mail = new SendMailHTMLSupportBean();
            mail.send("ekshiksha@cse.iitb.ac.in", email, "", "", "ekShiksha Account Confirmation", message, "cygnus.it.iitb.ac.in");
            result = true;
        }catch(Exception e) {

        }finally {
            fis.close();
        }
        return result;
    }
}
