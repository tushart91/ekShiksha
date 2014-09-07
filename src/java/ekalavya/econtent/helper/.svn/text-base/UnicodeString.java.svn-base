/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */
import java.io.*;
import java.sql.*;
import java.util.Scanner;
import ekalavya.helper.EkShikshaDBConnection;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Frame;
import java.awt.Graphics;
import java.awt.Insets;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import javax.swing.*;
import java.util.Locale;
import java.io.UnsupportedEncodingException;
public class UnicodeString {
        private String filePath = "";
        private String fileName = "";
        private final String encoding = "UTF-8";
        private Connection con;
        /*public UnicodeString(String filePath,String fileName) {
            this.filePath = filePath;
            this.fileName = fileName;
            con = EkShikshaDBConnection.getDBConnection();
        }*/
        /*public static void main(String[] args) throws Exception {

            UnicodeString test = new UnicodeString("/home/rkjangir/","testing.txt");
            try {
                PreparedStatement pstmt = test.con.prepareStatement("select characterid,unicodevalue from charactertable where lang_id=1 order by characterid");
                PreparedStatement pstmt1 = test.con.prepareStatement("insert into charactertable(characterid,unicodevalue,lang_id) values(?,?,?)");
                ResultSet res = pstmt.executeQuery();
                while(res.next()) {
                    System.out.println(res.getInt("characterid"));
                    pstmt1.setInt(1,res.getInt("characterid"));
                    pstmt1.setString(2, res.getString("unicodevalue"));
                    pstmt1.setInt(3, 8);
                    pstmt1.executeUpdate();
                }
            } catch(Exception e) {
                e.printStackTrace();
            }
            //test.read();
            System.out.println(test.read());
        }*/
        private void log(String message) {
            System.out.println(message);
        }
        public String read() throws IOException {
            log("Reading from file");
            StringBuilder text = new StringBuilder();
            String NL = System.getProperty("line.separator");
            Scanner scanner = new Scanner(new File(filePath+fileName),encoding);
            try {
                while(scanner.hasNextLine()) {
                    text.append(scanner.nextLine() + NL);
                }
            }finally {
                scanner.close();
            }
            log("Text read in : "+text);
            String data = text.toString();
            System.out.println(data.indexOf("\n"));
            System.out.println("Reading stopped");
            data = data.replaceAll("\n", "<br>");
            return data;
        }


        String outString;
	public static void main(String[] args) throws Exception{

                //String test = null;
		//test = readInput("/home/rkjangir/testing.txt");
                //test = getDataFromDB(33);
                //System.out.print(new String(test.getBytes("UTF8"),"UTF8"));
                //String original = new String("A" + "\u0045" + "\u00f1" +"\u00fc" + "C");
                //System.out.println(original);
                String unicode = "\u092C";
                //String unicode = readInput("/home/rkjangir/testing.txt");
                //System.out.println(unicode);
                updateDB(unicode,98,2);

                //char ch = '`';
                //System.out.println((int)ch);
	}


	public static String readInput(String fileName) {

	    StringBuffer buffer = new StringBuffer();
	    try {
	      FileInputStream fis = new FileInputStream(fileName);
	      InputStreamReader isr = new InputStreamReader(fis, "UTF-8");
	      Reader in = new BufferedReader(isr);
	      int ch;
	      while ((ch = in.read()) > -1) {
	        buffer.append((char) ch);
	      }
	      	in.close();
	      return buffer.toString();
	    } catch (IOException e) {
	      	e.printStackTrace();
	      return null;
	    }
    }


	//Constructures

	// database modification methods

	public static void insertIntoDB(String lang_name,String lang_desc,String keyword){
            Connection con = null;
            PreparedStatement pstmt = null;
            try{
                con = EkShikshaDBConnection.getDBConnection();
                pstmt = con.prepareStatement("insert into charactertable(lang_name,lang_desc,keyword) values(?,?,?)");
                pstmt.setString(1, lang_name);
                pstmt.setString(2,lang_desc);
                pstmt.setString(3,keyword);
                int affect = pstmt.executeUpdate();
            }catch(SQLException sqle){
                System.out.println("Connection couldn't established"+sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
    }

	public static String getDataFromDB(int cId){
            Connection con = null;
            PreparedStatement pstmt = null;
            String name=null;
            try{
                
                con = EkShikshaDBConnection.getDBConnection();
                pstmt = con.prepareStatement("select unicodevalue from charactertable where characterid=? and lang_id=1");
                pstmt.setInt(1, cId);
                ResultSet res = pstmt.executeQuery();
                while(res.next()){
                    name = res.getString("unicodevalue");
                }
                //return new String(name.getBytes("UTF8"),"UTF8");
            } catch(SQLException sqle){
                System.out.println("Connection couldn't established"+sqle);
            }catch(Exception e){
                System.out.println(e);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
            return name;
        }
         public static void updateDB(String unicode,int cid, int langId) {
           Connection con = null;
           PreparedStatement pstmt = null;
	   try{
                con = EkShikshaDBConnection.getDBConnection();
                pstmt = con.prepareStatement("update charactertable set unicodevalue=? where characterid=? and lang_id=?");
                pstmt.setString(1, unicode);
                pstmt.setInt(2,cid);
                pstmt.setInt(3,langId);
                int affect = pstmt.executeUpdate();
            }catch(SQLException sqle){
                System.out.println("Connection couldn't established"+sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
     }


}
