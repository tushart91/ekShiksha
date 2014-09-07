/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.action;

/**
 *
 * @author rkjangir
 */
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import org.apache.struts.upload.FormFile;
import org.apache.struts.action.Action;
import ekalavya.econtent.bean.HtmlContent;
import ekalavya.econtent.helper.ParserUtility;
import ekalavya.econtent.helper.ContentHandler;
import ekalavya.econtent.helper.EContentAdminHelper;
import ekalavya.econtent.helper.HtmlUtility;
import ekalavya.econtent.helper.EContentMenuHelper;
import ekalavya.econtent.bean.LanguageBean;
import java.util.ArrayList;
import java.util.Iterator;
public class AddHtmlContentAction extends Action{
    /* forward name="success" path="" */
    private final static String SUCCESS = "success";
    private final static String ERROR = "error";
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String[] errorString = new String[6];
        HttpSession session = request.getSession();

        int langId = Integer.parseInt((String)session.getAttribute("langId"));
        boolean flag = true;
        String[] parsedContent = null;
        EContentAdminHelper adminHelper = new EContentAdminHelper();
        ContentHandler contentHandler = new ContentHandler();
        HtmlContent htmlContent = (HtmlContent)form;
        FormFile htmlFile = htmlContent.getUrl();
        int topicId = htmlContent.getTopicId();
        String description = htmlContent.getDescription();
        String author = htmlContent.getAuthor();
        String level = htmlContent.getLevel();
        System.out.println(author+" : "+level);
        /* getting the link id for new content */
        int linkId = adminHelper.getLinkId(topicId);
        //Get the servers upload directory real path name
	String filePath = getServlet().getServletContext().getRealPath("/") +"pages/eContent/topics";
        String libPath = getServlet().getServletContext().getRealPath("/") +"pages/eContent/tools";
        if(topicId == -1) {
            errorString[0] = "Please select any topic.";
            flag = false;
        }
        if(htmlFile.getFileName() == null || htmlFile.getFileName().equals("")) {
            errorString[1] = "Please choose a file.";
            flag = false;
        }
        if(description == null || description.length()<1) {
            errorString[2] = "Please provide a description of content";
            flag = false;
        }
        if(author == null || author.length()<1) {
            errorString[5] = "Please provide author of the document.";
            flag = false;
        }
        //create the upload folder if not exists
	File folder = new File(filePath);
	if(!folder.exists()){
	    folder.mkdir();
	}
        String fileName = htmlFile.getFileName();
        //checking whether the file name is not null or empty
        if(fileName!=null && !("").equals(fileName) && flag){
	        File newFile = new File(filePath,fileName); //creating new file
	        if(!newFile.exists()){ //checking whether the file with same name already exist or not
	          FileOutputStream fos = new FileOutputStream(newFile);
	          fos.write(htmlFile.getFileData()); //writing the data into file and saving the file on disk
	          fos.flush();
	          fos.close();
                  /* parsing the html file */
                  try {
                      ParserUtility parserUtility = new ParserUtility();
                      //parsing the html file
                      parsedContent = parserUtility.parseHtmlFile(fileName, filePath, libPath);
                      if(parsedContent != null) {
                          /* saving the parsed data into database */
                          contentHandler.insertParsedContent(parsedContent[0], parsedContent[1], parsedContent[2], parsedContent[3], topicId, linkId, 1);
                          /* creating the name of jsp file */
                          String jspFile = fileName.substring(0,fileName.lastIndexOf("."))+".jsp";
                          String tjspFile = fileName.substring(0,fileName.lastIndexOf("."))+"_trans"+".jsp";
                          String pjspFile = fileName.substring(0,fileName.lastIndexOf("."))+"_pub"+".jsp";
                          String rjspFile = fileName.substring(0,fileName.lastIndexOf("."))+"_review"+".jsp";
                          /* creating the jsp file */
                          String[] simpleContentIds = contentHandler.getSimpleIds(topicId, linkId);
                          /* creating the simple jsp file for showing the contents. */
                          HtmlUtility.createJspPage(parsedContent[0], filePath, jspFile, "contenthandler.jsp");
                          /* creating the translator jsp file for translation of contents */
                          HtmlUtility.createTranslatorJspPage(parsedContent[0], filePath, tjspFile, "contenthandler_translator.jsp",simpleContentIds);
                          /* creating the reviewer jsp file for reviewing of contents */
                          HtmlUtility.createReviewerJspPage(parsedContent[0], filePath, rjspFile, "contenthandler_reviewer.jsp",simpleContentIds);
                          /* creating the publisher jsp file for publishing of contents */
                          HtmlUtility.createPublisherJspPage(parsedContent[0], filePath, pjspFile, "contenthandler_publisher.jsp",simpleContentIds);
                          /* inserting the reference of this content into links table */
                           EContentMenuHelper menuHelper = new EContentMenuHelper();
                           ArrayList langList = menuHelper.getAvailableLanguage();
                           Iterator it = langList.iterator();
                           while(it.hasNext()) {
                               LanguageBean lBean = (LanguageBean)it.next();
                               //inserting document links for all the available language with original document language as english
                               if(!adminHelper.addContent(linkId, topicId, jspFile,tjspFile,rjspFile, pjspFile, description,lBean.getLanguageId(),1,author,level)) {
                                  newFile.delete();
                                  errorString[3] = "<li>Sorry, your request can't be processed, try again later.</li>";
                                  flag =false;
                              }
                           }
                      }
                  }catch(Exception e) {
                      newFile.delete();
                      errorString[3] = "<li>Sorry, your request can't be processed, try again later.</li>";
                      flag =false;
                  }
                  
	        } else {
                    errorString[3] = "<li>The file you are trying to upload is already exist.</li>";
                    flag = false;
                }
	}
        if(!flag) {
            session.setAttribute("error", errorString);
            return mapping.findForward(ERROR);
        }
        errorString[4] = "You have successfully completed this operation.";
        session.setAttribute("error", errorString);
        return mapping.findForward(SUCCESS);
    }
}
