/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.action;

/**
 *
 * @author rajanikant
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import ekalavya.econtent.helper.EContentAdminHelper;
public class TranslateTopic extends Action{
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
        HttpSession session = request.getSession();
        String error = "";
        boolean valid = true;
        String[] errString = new String[5];
        String topicId = (String)request.getParameter("topicId");
        String langId = (String)request.getParameter("langId");
        String topicName = (String)request.getParameter("topicName");
        String unicodeName = new String(topicName.getBytes("ISO8859-1"),"UTF8");
        if(langId == null || langId.equals("-1")) {
            errString[0] = new String("Please select any language.");
            valid = false;
        }
        if(topicId == null || topicId.equals("-1")){
            errString[1] = new String("Please select any topic.");
            valid = false;
        }
        if(unicodeName == null || unicodeName.length()<1) {
            errString[2] = new String("Topic name can't be empty.");
            valid = false;
        }
        if(!valid) {
            session.setAttribute("error", errString);
            return mapping.findForward(INPUT);
        }
        EContentAdminHelper helper = new EContentAdminHelper();
        if(helper.translateTopic(Integer.parseInt(topicId), unicodeName, Integer.parseInt(langId))){
            errString[3] = new String("<li>Translation of "+unicodeName+" successfully completed</li>");
            session.setAttribute("error", errString);
            return mapping.findForward(SUCCESS);
        }
        errString[4] = new String("<li>Sorry, we can't proceed your request. Try again.</li>");
        session.setAttribute("error", errString);
        return mapping.findForward(INPUT);
    }
}
