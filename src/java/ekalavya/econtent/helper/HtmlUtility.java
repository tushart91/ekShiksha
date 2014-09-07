/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */
import java.util.regex.*;
import java.io.*;
import java.util.Scanner;
import ekalavya.econtent.helper.ContentHandler;
public class HtmlUtility {
    final static String FS = System.getProperty("file.separator");
    final static String NL = System.getProperty("line.separator");
    
public static void createJspPage(String html, String filePath, String fileName, String tempFile)
{
        String contents = "";
        try {
            contents = read(filePath,tempFile);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
        contents += createJspContent(html);
        try {
             write(fileName,filePath,contents);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
}

public static void createJspPage(String html, String filePath, String fileName, String tempFile, String[] sId)
{
        String contents = "";
        try {
            contents = read(filePath,tempFile);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
        contents += createJspContent(html,sId);
        try {
             write(fileName,filePath,contents);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
}
/*
 * this method create a dynamic jsp page for translator to translate the content.
 */
public static void createTranslatorJspPage(String html, String filePath, String fileName, String tempFile, String[] sId)
{
        String contents = "";
        try {
            //reading the template file to include in the translator jsp page
            contents = read(filePath,tempFile);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
        contents += createTranslatorJspContent(html,sId);
        try {
             write(fileName,filePath,contents);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
}

/*
 * this method create a dynamic jsp page for translator to translate the content.
 */
public static void createReviewerJspPage(String html, String filePath, String fileName, String tempFile, String[] sId)
{
        String contents = "";
        try {
            //reading the template file to include in the reviewer jsp page
            contents = read(filePath,tempFile);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
        contents += createReviewerJspContent(html,sId);
        try {
             write(fileName,filePath,contents);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
}

/*
 * this method create a dynamic jsp page for translator to translate the content.
 */
public static void createPublisherJspPage(String html, String filePath, String fileName, String tempFile, String[] sId)
{
        String contents = "";
        try {
            //reading the template file to include in the publisher jsp page
            contents = read(filePath,tempFile);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
        contents += createPublisherJspContent(html,sId);
        try {
             write(fileName,filePath,contents);
        }catch(IOException ioe) {
            ioe.printStackTrace();
        }
}

public static String createJspContent(String html, String[] sId)
{
            StringBuffer htmlString = new StringBuffer("");
            String delimiter =  "\\$\\$\\$\\$\\$.*?\\$\\$\\$\\$\\$";
            String simpleContent = "";
            String complexContent = "";
            String translatableContent = "";
            Pattern p = Pattern.compile(delimiter);
            Matcher m = p.matcher(html);
            int beginIndex = 0;
            int startIndex = 0;
            int endIndex = 0;
            while(m.find()) {
                startIndex = m.start();
                endIndex = startIndex + 16;
                String temp = html.substring(startIndex, endIndex);
                String tempId = temp.substring(5,11);
                htmlString.append(html.substring(beginIndex, startIndex));
                System.out.println(html.substring(beginIndex, startIndex));
                beginIndex = endIndex;

                int id = 0;
                try {
                    id = Integer.parseInt(tempId.substring(1));
                }catch(NumberFormatException nfe) {
                    nfe.printStackTrace();
                }
                //System.out.println(id);
                if(tempId.startsWith("C")) {
                    complexContent = "<%= complexContent["+id+"] %>"+"<a class=\"regular\" href=\"translateIt.do\" target=\"name\" onclick=\"modalWin('translateIt.do?contentId="+id+"&type=complex'); return false;\">Translate</a>";
                    htmlString.append(complexContent);
                } else if(tempId.startsWith("S")) {
                    simpleContent = "<%= simpleContent["+id+"] %>"+"<a class=\"regular\" href=\"translateIt.do\" target=\"name\" onclick=\"modalWin('translateIt.do?contentId="+sId[id]+"&index="+id+"&type=simple'); return false;\">Translate</a>";
                    htmlString.append(simpleContent);
                } else if(tempId.startsWith("T")) {
                    translatableContent = "<%= translatableContent["+id+"] %>";
                    htmlString.append(translatableContent);
                }
            }
            htmlString.append(html.substring(beginIndex));
            return htmlString.toString();
}

public static String createJspContent(String html)
{
            StringBuffer htmlString = new StringBuffer("");
            String delimiter =  "\\$\\$\\$\\$\\$.*?\\$\\$\\$\\$\\$";
            String simpleContent = "";
            String translatableContent = "";
            String complexContent = "";
            Pattern p = Pattern.compile(delimiter);
            Matcher m = p.matcher(html);
            int beginIndex = 0;
            
            while(m.find()) {

                int startIndex = m.start();
                int endIndex = startIndex + 16;
                String temp = html.substring(startIndex, endIndex);
                String tempId = temp.substring(5,11);
                htmlString.append(html.substring(beginIndex, startIndex));
                System.out.println(html.substring(beginIndex, startIndex));
                beginIndex = endIndex;

                int id = 0;
                try {
                    id = Integer.parseInt(tempId.substring(1));
                }catch(NumberFormatException nfe) {
                    nfe.printStackTrace();
                }
                //System.out.println(id);
                if(tempId.startsWith("C")) {
                    complexContent = "<%= complexContent["+id+"] %>";
                    htmlString.append(complexContent);
                }else if(tempId.startsWith("S")) {
                    simpleContent = "<%= simpleContent["+id+"] %>";
                    htmlString.append(simpleContent);
                }else if(tempId.startsWith("T")) {
                    translatableContent = "<%= translatableContent["+id+"] %>";
                    htmlString.append(translatableContent);
                }
            }
            htmlString.append(html.substring(beginIndex));
            return htmlString.toString();
}
/*
 * this method is used to create content of the translator page for a topic.
 * @param html(Parsed html fragement of a html file) and simpleContent's id array of that document.
 * @return (String) it returns a string representation of the contents of the topic
 */
public static String createTranslatorJspContent(String html, String[] sId)
{
            StringBuffer htmlString = new StringBuffer("");
            String delimiter =  "\\$\\$\\$\\$\\$.*?\\$\\$\\$\\$\\$";
            String simpleContent = "";
            String translatableContent = "";
            String complexContent = "";
            Pattern p = Pattern.compile(delimiter);
            Matcher m = p.matcher(html);
            int beginIndex = 0;

            while(m.find()) {

                int startIndex = m.start();
                int endIndex = startIndex + 16;
                String temp = html.substring(startIndex, endIndex);
                String tempId = temp.substring(5,11);
                htmlString.append(html.substring(beginIndex, startIndex));
                beginIndex = endIndex;

                int id = 0;
                try {
                    id = Integer.parseInt(tempId.substring(1));
                }catch(NumberFormatException nfe) {
                    nfe.printStackTrace();
                }
                //System.out.println(id);
                if(tempId.startsWith("C")) {
                    complexContent = "<a title=\"Click to translate this content\" class=\"regular\" style=\"color:<%= complexContent["+id+"][1] %>\" href=\"translateIt.do\" target=\"name\" onclick=\"modalWin('translateIt.do?contentId="+id+"&type=complex'); return false;\"><%= complexContent["+id+"][0] %></a>";
                    htmlString.append(complexContent);
                }else if(tempId.startsWith("S")) {
                    simpleContent = "<a title=\"Click to translate this content\" class=\"regular\" style=\"color:<%= simpleContent["+id+"][1] %>\" href=\"translateIt.do\" target=\"name\" onclick=\"modalWin('translateIt.do?contentId="+sId[id]+"&index="+id+"&type=simple'); return false;\"><%= simpleContent["+id+"][0] %></a>";
                    htmlString.append(simpleContent);
                }else if(tempId.startsWith("T")) {
                    translatableContent = "<%= translatableContent["+id+"] %>";
                    htmlString.append(translatableContent);
                }
            }
            htmlString.append(html.substring(beginIndex));
            return htmlString.toString();
}

/*
 * this method is used to create content of the reviewer page for a topic.
 * @param html(Parsed html fragement of a html file) and simpleContent's id array of that document.
 * @return (String) it returns a string representation of the contents of the topic
 */
public static String createReviewerJspContent(String html, String[] sId)
{
            StringBuffer htmlString = new StringBuffer("");
            String delimiter =  "\\$\\$\\$\\$\\$.*?\\$\\$\\$\\$\\$";
            String simpleContent = "";
            String translatableContent = "";
            String complexContent = "";
            Pattern p = Pattern.compile(delimiter);
            Matcher m = p.matcher(html);
            int beginIndex = 0;

            while(m.find()) {

                int startIndex = m.start();
                int endIndex = startIndex + 16;
                String temp = html.substring(startIndex, endIndex);
                String tempId = temp.substring(5,11);
                htmlString.append(html.substring(beginIndex, startIndex));
                beginIndex = endIndex;

                int id = 0;
                try {
                    id = Integer.parseInt(tempId.substring(1));
                }catch(NumberFormatException nfe) {
                    nfe.printStackTrace();
                }
                //System.out.println(id);
                if(tempId.startsWith("C")) {
                    complexContent = "<a title=\"Click to review this content\" class=\"regular\" style=\"color:<%= complexContent["+id+"][1] %>\" href=\"reviewIt.do\" target=\"name\" onclick=\"modalWin('reviewIt.do?contentId="+id+"&type=complex'); return false;\"><%= complexContent["+id+"][0] %></a>";
                    htmlString.append(complexContent);
                }else if(tempId.startsWith("S")) {
                    simpleContent = "<a title=\"Click to reviewer this content\" class=\"regular\" style=\"color:<%= simpleContent["+id+"][1] %>\" href=\"reviewIt.do\" target=\"name\" onclick=\"modalWin('reviewIt.do?contentId="+sId[id]+"&index="+id+"&type=simple'); return false;\"><%= simpleContent["+id+"][0] %></a>";
                    htmlString.append(simpleContent);
                }else if(tempId.startsWith("T")) {
                    translatableContent = "<%= translatableContent["+id+"] %>";
                    htmlString.append(translatableContent);
                }
            }
            htmlString.append(html.substring(beginIndex));
            return htmlString.toString();
}

/*
 * this method is used to create content of the publisher page for a topic.
 * @param html(Parsed html fragement of a html file) and simpleContent's id array of that document.
 * @return (String) it returns a string representation of the contents of the topic
 */
public static String createPublisherJspContent(String html, String[] sId)
{
            StringBuffer htmlString = new StringBuffer("");
            String delimiter =  "\\$\\$\\$\\$\\$.*?\\$\\$\\$\\$\\$";
            String simpleContent = "";
            String translatableContent = "";
            String complexContent = "";
            Pattern p = Pattern.compile(delimiter);
            Matcher m = p.matcher(html);
            int beginIndex = 0;

            while(m.find()) {

                int startIndex = m.start();
                int endIndex = startIndex + 16;
                String temp = html.substring(startIndex, endIndex);
                String tempId = temp.substring(5,11);
                htmlString.append(html.substring(beginIndex, startIndex));
                beginIndex = endIndex;

                int id = 0;
                try {
                    id = Integer.parseInt(tempId.substring(1));
                }catch(NumberFormatException nfe) {
                    nfe.printStackTrace();
                }
                //System.out.println(id);
                if(tempId.startsWith("C")) {
                    complexContent = "<a title=\"Click to publish this content\" class=\"regular\" style=\"color:<%= complexContent["+id+"][1] %>\" href=\"publishIt.do\" target=\"name\" onclick=\"modalWin('publishIt.do?contentId="+id+"&type=complex'); return false;\"><%= complexContent["+id+"][0] %></a>";
                    htmlString.append(complexContent);
                }else if(tempId.startsWith("S")) {
                    simpleContent = "<a title=\"Click to publish this content\" class=\"regular\" style=\"color:<%= simpleContent["+id+"][1] %>\" href=\"publishIt.do\" target=\"name\" onclick=\"modalWin('publishIt.do?contentId="+sId[id]+"&index="+id+"&type=simple'); return false;\"><%= simpleContent["+id+"][0] %></a>";
                    htmlString.append(simpleContent);
                }else if(tempId.startsWith("T")) {
                    translatableContent = "<%= translatableContent["+id+"] %>";
                    htmlString.append(translatableContent);
                }
            }
            htmlString.append(html.substring(beginIndex));
            return htmlString.toString();
}

    /** Read the contents of the given file. */
public static String read(String filePath, String fileName) throws IOException
{
        StringBuilder text = new StringBuilder();
        Scanner scanner = new Scanner(new FileInputStream(filePath+FS+fileName), "UTF-8");
        try {
            while (scanner.hasNextLine()){
                text.append(scanner.nextLine() + NL);
            }
         }
         finally{
             scanner.close();
         }
         return text.toString();
}
    /** Write fixed content to the given file. */
public static void write(String fileName,String filePath, String contents) throws IOException 
{
        Writer out = new OutputStreamWriter(new FileOutputStream(filePath+FS+fileName), "UTF-8");
        try {
            out.write(contents);
        }
        finally {
            out.close();
        }
}
}
