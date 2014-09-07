
package ekalavya.econtent.listener;

/** SessionListener class executes when a new session is created.
 * Currently it is used to count the website hit.
 *
 * @author rkjangir
 */
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletContext;
import java.io.IOException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Scanner;
import java.io.OutputStreamWriter;
import java.io.Writer;

public class SessionListener implements HttpSessionListener {
    private int sessionCount = 0;
    final static String FS = System.getProperty("file.separator");

    /**sessionCreated() method invoked when a new session is created.
     * This method is used to implement website hit counter. It reads a text file (hitcount.txt) and
     * increment its value by 1 whenever a new session is created. After incrementing the value by 1,
     * it again write the value to hitcount.txt file.
     *
     * @param event An object of HttpSessionEvent class
     *
     * @return void This method returns nothing
     * 
     */
    public void sessionCreated(HttpSessionEvent event) {
        //getting the session object from the session event
        HttpSession session = event.getSession();
        //getting the ServletContext object from the session object
        ServletContext context = session.getServletContext();
        //getting the real path of hitcount.txt file
        String filePath = context.getRealPath("/")+"properties";
        String fileName = "hitcount.txt";
        synchronized (this) {
            sessionCount++;
            try {
                //read the current counter value from the file
                String count = read(fileName,filePath);
                if(count != null) { //checking whether count is null or not
                    //parsing the string to integer value
                    int countValue = Integer.parseInt(count);
                    //increment the counter value by 1
                    countValue++;
                    //writing the counter value back to hitcount.txt file
                    write(String.valueOf(countValue), filePath, fileName);
                }
            }catch(IOException io) { //catching any exception occured during reading the file
                io.printStackTrace(); //print the stack trace of the exception
            }catch(NumberFormatException nfe) { //catching exception occured while parsing string to int
                nfe.printStackTrace(); //print the stack trace of the exception
            }
        }
    }

    public void sessionDestroyed(HttpSessionEvent event) {
        /*HttpSession session = event.getSession();
        ServletContext context = session.getServletContext();
        String filePath = context.getRealPath("/")+"properties";
        String fileName = "hitcount.txt";
        synchronized (this) {
            sessionCount--;
            try {
                String count = read(fileName,filePath);
                if(count != null) {
                    int countValue = Integer.parseInt(count);
                    countValue--;
                    write(String.valueOf(countValue), filePath, fileName);
                }
            }catch(IOException io) { //catching any exception occured during reading the file
                io.printStackTrace();
            }catch(NumberFormatException nfe) { //catching exception occured while parsing string to int
                nfe.printStackTrace();
            }
        }*/
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
    private String read(String fileName,String filePath) throws IOException {
        //creating object of String class
        String text = new String();
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
        //return the text to the calling function
        return text;
    }

    /**write() method write contents to the given file
     *
     * @param text A string containing the content to be written
     *
     * @param filePath A string containing the path of the file
     *
     * @param fileName A string containing the name of the file
     *
     * @exception IOException It throws IOException if occurs while reading the file
     *
     * @return void This function returns nothing
     */
    private void write(String text, String filePath, String fileName) throws IOException  {
        //getting output stream to write the contents to file
        Writer out = new OutputStreamWriter(new FileOutputStream(filePath+FS+fileName), "UTF-8");
        try {
            //writing the contents to file
            out.write(text);
        }
        finally {
            //close the output stream
            out.close();
        }
    }

}
