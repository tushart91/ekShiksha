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
import ekalavya.econtent.helper.EContentAdminHelper;
import java.util.Locale;

public class LoginAction extends Action{
    private final static String SUCCESS = "success";
    private final static String ERROR = "error";
    //local for english language
    public ActionForward execute(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        boolean flag = true;
        String errString = "";
        String userId = request.getParameter("userid");
        String password = request.getParameter("password");
        UserHandler handler = new UserHandler();
        HttpSession session = request.getSession();
        String role = handler.login(userId, password);
        if(role == null || role.trim().isEmpty()) {
            flag = false;
            errString = "invalid";
        }
        if(flag) {
            EContentAdminHelper helper = new EContentAdminHelper();
            String displayName = handler.getDisplayName(userId);
            int langId = handler.getUserLanguage(userId);
            int topicId = handler.getUserTopic(userId);
            String langName = helper.getLanguageDesc(langId);
            String localeCode = helper.getLanguageCode(langId);
            String langCode = "en";
            String countryCode = "US";
            if(localeCode != null && localeCode.length()>1) {
             langCode = localeCode.substring(localeCode.indexOf("_")+1, localeCode.lastIndexOf("_"));
             countryCode = localeCode.substring(localeCode.lastIndexOf("_")+1);
            }
            if(langId == 0) {
                langName = "English";
                langId = 1;
            }
            session.setAttribute("userId", userId);
            session.setAttribute("role", role);
            session.setAttribute("user", displayName);
            if(role.equals("translator")) {
                session.setAttribute("translatorLangId", String.valueOf(langId));
                session.setAttribute("translatorTopic", String.valueOf(topicId));
            } else if(role.equals("reviewer")) {
                session.setAttribute("reviewerLangId", String.valueOf(langId));
                session.setAttribute("reviewerTopic", String.valueOf(topicId));
            } else if(role.equals("publisher")) {
                session.setAttribute("publisherLangId", String.valueOf(langId));
                session.setAttribute("publisherTopic", String.valueOf(topicId));
            }
            session.setAttribute("langId", String.valueOf(langId));
            session.setAttribute("langName",langName.toLowerCase());
            session.setAttribute("org.apache.struts.action.LOCALE", new Locale(langCode,countryCode));
            session.removeAttribute("topicsList");
            session.setAttribute("error", errString);
            return mapping.findForward(SUCCESS);
        } else {
            session.setAttribute("error", errString);
            return mapping.findForward(ERROR);
        }
        
    }

}
