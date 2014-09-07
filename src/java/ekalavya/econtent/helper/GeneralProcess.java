
package ekalavya.econtent.helper;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Scanner;

/**
 * Document   : GeneralProcess
 * Created on : 19 Apr, 2012, 3:05:37 PM
 * @author rkjangir
 */
public class GeneralProcess {
    final static String FS = System.getProperty("file.separator");
    
    public GeneralProcess() {

    }

    /** read() method reads content of a given file
     *
     * @param fileName A string containing name of the file
     *
     * @param filePath A string containing path of the file
     *
     * @exception IOException It throws IOException if occurs while reading the file
     *
     * @return String It returns content of the file if exist otherwise empty String object.
     *
     */
    public static String read(String fileName,String filePath) {
        //creating object of String class
        String text = new String();
        try {
            //Getting input stream to read the content of the file
            Scanner scanner = new Scanner(new FileInputStream(filePath+FS+fileName), "UTF-8");
            try {
                while (scanner.hasNextLine()){ //iterating until file has text lines
                    text = scanner.nextLine(); // assigning the text to the variable
                }
            }
            finally{
              scanner.close(); //closing the input stream
            }
        } catch(Exception e) {

        }
        //return the text to the calling function
        return text;
    }
}
