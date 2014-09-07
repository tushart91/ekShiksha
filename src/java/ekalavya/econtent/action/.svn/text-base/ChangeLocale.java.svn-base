/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.util.Locale;
import ekalavya.econtent.helper.UserHandler;
/**
 *
 * @author rajanikant
 */
public class ChangeLocale extends org.apache.struts.actions.DispatchAction {

      /* forward name="success" path="" */
    private final static String SUCCESS = "success";
    //local for english language
    public ActionForward english(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        session.setAttribute("org.apache.struts.action.LOCALE", new Locale("en","US"));
        session.setAttribute("langName","english");
        session.setAttribute("langId","1");
        session.removeAttribute("topicsList");
        String role = (String)session.getAttribute("role");
        String userId = (String)session.getAttribute("userId");
        if(role!=null && userId!=null && role.equals("user") && userId.length()>1) {
            UserHandler handler = new UserHandler();
            handler.updateUserLanguage(userId, 1);
        }
        return mapping.findForward(SUCCESS);
    }

    //local for hindi language
    public ActionForward hindi(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        session.setAttribute("org.apache.struts.action.LOCALE", new Locale("hi","IN"));
        session.setAttribute("langId","2");
        session.setAttribute("langName","hindi");
        session.removeAttribute("topicsList");
        String role = (String)session.getAttribute("role");
        String userId = (String)session.getAttribute("userId");
        if(role!=null && userId!=null && role.equals("user") && userId.length()>1) {
            UserHandler handler = new UserHandler();
            handler.updateUserLanguage(userId, 2);
        }
        return mapping.findForward(SUCCESS);
    }
    public ActionForward tamil(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        session.setAttribute("org.apache.struts.action.LOCALE", new Locale("ta","IN"));
        session.setAttribute("langId","3");
        session.setAttribute("langName","tamil");
        session.removeAttribute("topicsList");
        String role = (String)session.getAttribute("role");
        String userId = (String)session.getAttribute("userId");
        if(role!=null && userId!=null && role.equals("user") && userId.length()>1) {
            UserHandler handler = new UserHandler();
            handler.updateUserLanguage(userId, 3);
        }
        return mapping.findForward(SUCCESS);
    }

    public ActionForward marathi(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        session.setAttribute("org.apache.struts.action.LOCALE", new Locale("mr","IN"));
        session.setAttribute("langId","4");
        session.setAttribute("langName","marathi");
        session.removeAttribute("topicsList");
        String role = (String)session.getAttribute("role");
        String userId = (String)session.getAttribute("userId");
        if(role!=null && userId!=null && role.equals("user") && userId.length()>1) {
            UserHandler handler = new UserHandler();
            handler.updateUserLanguage(userId, 4);
        }
        return mapping.findForward(SUCCESS);
    }

    public ActionForward gujarati(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        session.setAttribute("org.apache.struts.action.LOCALE", new Locale("gu","IN"));
        session.setAttribute("langId","5");
        session.setAttribute("langName","gujarati");
        session.removeAttribute("topicsList");
        String role = (String)session.getAttribute("role");
        String userId = (String)session.getAttribute("userId");
        if(role!=null && userId!=null && role.equals("user") && userId.length()>1) {
            UserHandler handler = new UserHandler();
            handler.updateUserLanguage(userId, 5);
        }
        return mapping.findForward(SUCCESS);
    }

     public ActionForward malayalam(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        session.setAttribute("org.apache.struts.action.LOCALE", new Locale("ml","IN"));
        session.setAttribute("langId","6");
        session.setAttribute("langName","malayalam");
        session.removeAttribute("topicsList");
        String role = (String)session.getAttribute("role");
        String userId = (String)session.getAttribute("userId");
        if(role!=null && userId!=null && role.equals("user") && userId.length()>1) {
            UserHandler handler = new UserHandler();
            handler.updateUserLanguage(userId, 6);
        }
        return mapping.findForward(SUCCESS);
    }

    public ActionForward bengla(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        session.setAttribute("org.apache.struts.action.LOCALE", new Locale("bn","IN"));
        session.setAttribute("langId","7");
        session.setAttribute("langName","bengla");
        session.removeAttribute("topicsList");
        String role = (String)session.getAttribute("role");
        String userId = (String)session.getAttribute("userId");
        if(role!=null && userId!=null && role.equals("user") && userId.length()>1) {
            UserHandler handler = new UserHandler();
            handler.updateUserLanguage(userId, 7);
        }
        return mapping.findForward(SUCCESS);
    }

    public ActionForward telugu(ActionMapping mapping, ActionForm  form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession session = request.getSession();
        session.setAttribute("org.apache.struts.action.LOCALE", new Locale("te","IN"));
        session.setAttribute("langId","8");
        session.setAttribute("langName","telugu");
        session.removeAttribute("topicsList");
        String role = (String)session.getAttribute("role");
        String userId = (String)session.getAttribute("userId");
        if(role!=null && userId!=null && role.equals("user") && userId.length()>1) {
            UserHandler handler = new UserHandler();
            handler.updateUserLanguage(userId, 8);
        }
        return mapping.findForward(SUCCESS);
    }

}