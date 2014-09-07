/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.bean;

/**
 *
 * @author rkjangir
 */
public class EmailMessages {
    public static StringBuffer registrationMessage = new StringBuffer("");
    public static StringBuffer confirmationMessage = new StringBuffer("");
    public static StringBuffer passwordRecoveryMessage = 
            new StringBuffer("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"><html> <head>"+
    "<title></title><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head>"+
    "<body><div style=\"width:850px;background: #f4f4f4;padding:20px;text-align: center;\">"+
   "<p style=\"background:#25579c;color: #FCFDFE;margin-bottom: 0px;font-size: 15px;font-weight: bold;padding:5px;padding-left: 10px;text-align: left;\">Welcome to ekShiksha!</p>"+
   "<div style=\"text-align: left;background: #FCFDFE;margin-top: 0px;padding-left: 10px;font-size: 13px;\">"+
   "<p style=\"margin-top: 0px; padding-top: 20px;font-size: 16px;font-weight: bold;\">Dear #firstname#,</p>"+
   "<p style=\"margin-bottom: 4px;margin-top:10px;\">This is with reference to your request to reset the password for accessing your account on ekShiksha.</p>"+
   "<p>The password for Login ID  #loginid# has been reset to #password#<br>"+
   "For your account security we advise you not to disclose your password.</p>"+
   "<p>Log in now to get started. <a href=\"#link1#\">Login</a></p>"+
   "<hr style=\"color: #f4f4f4;margin-right:10px;\">"+
   "<p style=\"font-size: 16px;color: #aaaaaa;margin-bottom: 3px;\">The ekShiksha Team</p>"+
   "<p style=\"font-size: 11px;color: #aaaaaa;padding-bottom: 20px;\">Please do not reply to this message; it was sent from an unmonitored email address. This message is a service email related to your use of ekShiksha. For general inquiries or to request support with your ekShiksha account, please visit us at ekShiksha <a href=\"#link2#\">Contact Us.</a> </p>"+
   "</div></div></body></html>");

    public static String getRegistrationMessage() {
        return registrationMessage.toString();
    }
    
    public static String getConfirmationMessage() {
        return confirmationMessage.toString();
    }

    public static String getPasswordRecoveryMessage() {
        return passwordRecoveryMessage.toString();
    }
}
