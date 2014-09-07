/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */
public class ParserUtility {
    public native void parseHtml(String fileName);
    public native String getHtmlString();
    public native String getSimpleString();
    public native String getComplexString();
    public native String getTranslatableString();
    static {
       try {
           System.load("/home/rkjangir/NetBeansProjects/ekShiksha/build/web/pages/eContent/tools/libparser.so");
       }catch(UnsatisfiedLinkError ule) {
           System.out.println("Error while loading library:"+ule);
       }
    }
    public synchronized String[] parseHtmlFile(String fileName, String path, String libPath) {
        String[] parsedContent = new String[4];
        final String FS = System.getProperty("file.separator");
        String htmlString;
        String simpleString;
        String complexString;
        String translatableString;
        try {
            
            /* Parsing the html file */
            parseHtml(path+FS+fileName);
            /* Getting the html text from the parsed html file */
            htmlString = getHtmlString();
            /* Getting the simple strings from the parsed html file */
            simpleString = getSimpleString();
            /* Getting the complex strings from the parsed html file */
            complexString = getComplexString();
            /* Getting the translatable strings from the parsed html file */
            translatableString = getTranslatableString();
            /* Putting the parsed value into array of string */
            parsedContent[0] = htmlString;
            parsedContent[1] =complexString;
            parsedContent[2] =  simpleString;
            parsedContent[3] = translatableString;
            System.out.println("HTML :" +htmlString);
            System.out.println("Simple :"+simpleString);
            System.out.println("Complex :"+complexString);
            System.out.println("Translatable : "+translatableString);
        }catch(UnsatisfiedLinkError ule) {
            ule.printStackTrace();
        }
        return parsedContent;
    }
}
