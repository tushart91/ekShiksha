/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ekalavya.econtent.helper;

/**
 *
 * @author rkjangir
 */

import java.sql.*;
import ekalavya.econtent.bean.Topic;
import ekalavya.econtent.bean.LanguageBean;
import ekalavya.helper.EkShikshaDBConnection;
public class EContentAdminHelper {
    //declaring class variables
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet res;
    private ResultSet langRes;
    
    //declaring constructor of the class
    public EContentAdminHelper() {
        //con = EkShikshaDBConnection.getDBConnection();
    }

    public EContentAdminHelper(Connection con) {
        this.con = con;
    }
    /*
     *  addLanguage() methods adds a new language.
     *  This methods takes two parameter first is language name in english and
     *  second is language name is regional language.
     *  If the language is successfully added then it returns true otherwise false.
     */
    public boolean addLanguage(String langEnglish,String langRegional) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("INSERT INTO languages(lang_name,lang_desc) VALUES(?,?)");
                pstmt.setString(1, langRegional);
                pstmt.setString(2, langEnglish);
                int affected = pstmt.executeUpdate();
                if(affected == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                System.out.println(sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
            
        }
        return result;
    }

    /*
     *  getTopics() methods returns the list of topics that are not translated in particular language.
     *  This function take languageId as a parameter.
     *  This function returns a array of Topic class objects.
     */
    public Topic[] getTopics(int langId) {
        Topic[] topics = null;  // Array of topics to be returned is declared.
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select topic_id from contents where lang_id=?");
                pstmt.setInt(1, langId);
                res = pstmt.executeQuery();
                String query = "select topic_id, topic_name from contents where lang_id=1";
                while(res.next()) {
                    query += " and topic_id<>"+res.getInt("topic_id");
                }
                query += " order by topic_name";
                //pstmt = con.prepareStatement(query);
                pstmt = con.prepareStatement(query, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
                res = pstmt.executeQuery();
                res.last();
                int countRow = res.getRow();
                int counter = 0;
                res.beforeFirst();
                topics = new Topic[countRow];
                while(res.next()) {
                    topics[counter] = new Topic();
                    topics[counter].setTopicId(res.getInt("topic_id"));
                    topics[counter].setTopicName(res.getString("topic_name"));
                    counter++;
                }
            }catch(SQLException sqle) {
                System.out.println(sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return topics;
    }

    /*
     *  getTranslationLanguage() method returns the list of language in which the topic can be translated.
     *  This method takes a parameter topicId.
     *  It returns an array of LanguageBean class.
     */
    public LanguageBean[] getTranslationLanguage(int topicId) {
        LanguageBean[] langBean = null;  // Array of LanguageBean class to be returned is declared.
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select lang_id from contents where topic_id=?");
                pstmt.setInt(1, topicId);
                res = pstmt.executeQuery();
                String query = "select lang_id,lang_name,lang_desc from languages where";
                int counter = 0;
                while(res.next()) {
                    if(counter == 0) {
                        query +=" lang_id<>"+res.getInt("lang_id");
                    }else {
                        query +=" and lang_id<>"+res.getInt("lang_id");
                    }
                    counter++;
                }
                pstmt = con.prepareStatement(query);
                langRes = pstmt.executeQuery();
                int size = langRes.getFetchSize();
                if(size != 0) {
                    langBean = new LanguageBean[size];
                    int index = 0;
                    while(langRes.next()) {
                         langBean[index] = new LanguageBean();
                         langBean[index].setLanguageId(langRes.getInt("lang_id"));
                         langBean[index].setLanguageName(langRes.getString("lang_name"));
                         langBean[index].setDescription(langRes.getString("lang_desc"));
                         index++;
                    }
                }
            }catch(SQLException sqle) {
                System.out.println(sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeResultSet(langRes);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return langBean;
    }

    /*
     *  translateTopic() method insert a translated topic in the database.
     *  This method takes three parameter tipicId, topicName nad langId
     *  This function returns true if insertion is successfull otherwise false
     */
    public boolean translateTopic(int topicId,String topicName,int langId) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("insert into contents(topic_id,topic_name,lang_id) values(?,?,?)");
                pstmt.setInt(1, topicId);
                pstmt.setString(2, topicName);
                pstmt.setInt(3, langId);
                int affected = pstmt.executeUpdate();
                if(affected == 1){
                    result = true;
                }
            }catch(SQLException sqle) {
                System.out.println(sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /*
     *  isDuplicate method check whether the insert query is inserting a duplicate row or not
     *  This methods takes a parameter sql query
     *  This method return false if the value is not duplicate otherwise true.
     */
    public boolean isDuplicate(String query){
        boolean result = true;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement(query);
                res = pstmt.executeQuery();
                if(res.getFetchSize()<1) {
                    result = false;
                }
            }catch(SQLException sqle) {
                System.out.println(sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /*
     *  captalizeFirstChar() methods Capitalize the first character of string.
     *  It takes a string value as a parameter.
     *  It return the formated string value.
     */
    public String captalizeFirstChar(String value) {
        if(value != null && value.length() >1) {
            String firstLetter = value.substring(0,1);  // Get first letter
            String remainder   = value.substring(1);    // Get remainder of word.
            String capitalized = firstLetter.toUpperCase() + remainder.toLowerCase();
            return capitalized;
        }
        return value;
    }
    /*
     *
     *
     */
    public boolean addContent(int linkId, int topicId, String url,String turl, String rurl, String purl, String description, int langId, int originalLangId, String author, String level) {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("insert into links(link_id,topic_id,url,turl,purl,rurl,description,lang_id,original_language,author,level) values(?,?,?,?,?,?,?,?,?,?,?)");
                pstmt.setInt(1, linkId);
                pstmt.setInt(2, topicId);
                pstmt.setString(3, url);
                pstmt.setString(4, turl);
                pstmt.setString(5, purl);
                pstmt.setString(6, rurl);
                pstmt.setString(7, description);
                pstmt.setInt(8, langId);
                pstmt.setInt(9, originalLangId);
                pstmt.setString(10, author);
                pstmt.setString(11, level);
                int affected = pstmt.executeUpdate();
                if(affected == 1) {
                    result = true;
                }
            }catch(SQLException sqle) {
                System.out.println(sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return result;
    }

    /*
     *  getChildTopic() method returns array of child topics.
     *  This method doesn't takes any parameter
     *  This method return a array of Topic class if child topics are available otherwise returns null.
     */
    public Topic[] getChildTopic() {
        Topic[] topics = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                //pstmt = con.prepareStatement("select topics.topic_id,contents.topic_name from topics,contents where topics.topic_id=contents.topic_id and topics.type<>1 and contents.lang_id=1");
                pstmt = con.prepareStatement("select topics.topic_id,contents.topic_name from topics,contents where topics.topic_id=contents.topic_id and topics.type<>1 and contents.lang_id=1", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                res = pstmt.executeQuery();
                res.last();
                int size = res.getRow();
                res.beforeFirst();
                if(size > 0) {
                    topics = new Topic[size];
                    int counter = 0;
                    while(res.next()) {
                        topics[counter] = new Topic();
                        topics[counter].setTopicId(res.getInt("topic_id"));
                        topics[counter].setTopicName(res.getString("topic_name"));
                        counter++;
                    }
                }
            }catch(SQLException sqle) {
                System.out.println(sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return topics;
    }

    /*
     *  getLinkId() method returns a linkId based on topicId.
     *  This method takes a parameter topicId, to find the linkId for that topic.
     *  This method return a linkId if that topic exist otherwise it generate a new linkId and returns.
     */
    public int getLinkId(int topicId) {
        int linkId = 1;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select max(link_id) as num from links where topic_id=?");
                pstmt.setInt(1, topicId);
                res = pstmt.executeQuery();
                res.next();
                linkId = res.getInt("num");
                /*if(linkId == 0) {
                    pstmt = con.prepareStatement("select max(link_id) as num from links");
                    res = pstmt.executeQuery();
                    res.next();
                }*/
                linkId = res.getInt("num")+1;
            }catch(SQLException sqle){
                System.out.println(sqle);
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return linkId;
    }

    /*
     *  getLanguageCode() method finds the language code of a languaged based on language id.
     *  It takes a parameter language id.
     *  It return a language code if the particular language exists otherwise a empty string.
     */
    public String getLanguageCode(int langId) {
        String langCode = "";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select lang_code from languages where lang_id=?");
                pstmt.setInt(1, langId);
                res = pstmt.executeQuery();
                while(res.next()) {
                    langCode = res.getString("lang_code");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return langCode;
    }

    /*
     *  getLanguageDesc() method finds the language description of a languaged based on language id.
     *  It takes a parameter language id.
     *  It return a language description if the particular language exists otherwise a empty string.
     */
    public String getLanguageDesc(int langId) {
        String langCode = "";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select lang_desc from languages where lang_id=?");
                pstmt.setInt(1, langId);
                res = pstmt.executeQuery();
                while(res.next()) {
                    langCode = res.getString("lang_desc");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return langCode;
    }
}
