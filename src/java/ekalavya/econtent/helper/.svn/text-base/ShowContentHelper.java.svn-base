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
import java.util.*;
import ekalavya.helper.EkShikshaDBConnection;
import ekalavya.econtent.bean.URLBean;
public class ShowContentHelper {

        //declaring class variables
        private Connection con;
        private PreparedStatement pstmt;
        private ResultSet res;
        private Statement stmt;

        //declaring constructor of the class
        public ShowContentHelper() {
            //con = EkShikshaDBConnection.getDBConnection();
        }

        public ShowContentHelper(Connection con) {
            this.con = con;
        }
       
       /** getContents() function is used for retreiving contents from database.
        *  This function returns a list of topics depending on topic id and language id of
        *  contents in databse.
        *
        * @param topicId an integer containing topic id
        *
        * @param langId an integer containing language id
        *
        * @see ArrayList
        *
        * @see URLBean
        *
        * @return ArrayList It returns an ArrayList of objects of URLBean class if content is found otherwise empty ArrayList.
        *
        */
        public ArrayList getContents(int topicId,int langId)
        {
            ArrayList urlList = new ArrayList();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT topic_id,link_id,url,description,author,level,translator_id,reviewer_id,publisher_id FROM links WHERE topic_id=? AND lang_id=? AND verified=true");
                    pstmt.setInt(1,topicId);
                    pstmt.setInt(2, langId);
                    res = pstmt.executeQuery();
                    while(res.next()) {
                        URLBean url = new URLBean();
                        url.setTopicId(res.getInt("topic_id"));
                        url.setLinkId(res.getInt("link_id"));
                        url.setUrl(res.getString("url"));
                        url.setDesc(res.getString("description"));
                        url.setAuthor(res.getString("author"));
                        url.setLevel(res.getString("level"));
                        url.setTranslatorId(res.getString("translator_id"));
                        url.setReviewerId(res.getString("reviewer_id"));
                        url.setPublisherId(res.getString("publisher_id"));
                        urlList.add(url);
                    }
                    return urlList;
                }catch(SQLException sqle) {
                    System.out.println(sqle);
                }catch(Exception e) {
                    System.out.println(e);
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return urlList;
        }

        /*
         * getUrl() method is used for retreiving url of a particular content from database.
         *
         * @param linkId an integer containing link id of content
         *
         * @param topicId an integer containing topic id of content
         *
         * @param langId an integer containing language id of content
         *
         * @return String It returns a String containing url for a particular content if found otherwise null
         *
        */
        public String getUrl(int linkId,int topicId,int langId) {
            String url = null;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT url FROM links WHERE link_id=?  AND topic_id=? AND (lang_id=? or lang_id=1) AND verified=true order by lang_id desc");
                    pstmt.setInt(1, linkId);
                    pstmt.setInt(2,topicId);
                    pstmt.setInt(3,langId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        url = res.getString("url");
                    }
                }catch(SQLException sqle) {
                    System.out.println(sqle);
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return url;
        }

        /*
         * getTranslatorUrl() method is used for retreiving url of a particular topic for translation. *
         *
         * @param linkId an integer containing link id of content
         *
         * @param topicId an integer containing topic id of content
         *
         * @param langId an integer containing language id of content
         *
         * @return String It returns a String containing url for a particular content if found otherwise null
         * 
        */
        public String getTranslatorUrl(int linkId,int topicId, int langId, String userId) {
            String url = null;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT turl FROM links WHERE translator_id=? and link_id=?  and topic_id=? and lang_id=? and verified=true");
                    pstmt.setString(1,userId);
                    pstmt.setInt(2, linkId);
                    pstmt.setInt(3,topicId);
                    pstmt.setInt(4, langId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        url = res.getString("turl");
                    }
                }catch(SQLException sqle) {
                    System.out.println(sqle);
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return url;
        }

        public String[] getDetailedContents(int topicId, int linkId, int langId) {
            String[] contents = null;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT utext FROM topicdata WHERE link_id=? AND topic_id=? AND lang_id=? ORDER BY eid");
                    pstmt.setInt(1, linkId);
                    pstmt.setInt(2,topicId);
                    pstmt.setInt(3,langId);
                    res = pstmt.executeQuery();
                    int rows = res.getFetchSize();
                    if(rows > 0) {
                        contents = new String[rows];
                    }
                    int counter = 0;
                    while(res.next()){
                        contents[counter] = res.getString("utext");
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
            return contents;
        }

        /*
         *  getContents() function is used for retreiving contents from database. *
         *  This function returns a list of topics depending on language id of
         *  contents in databse. *
         *  This function takes one arguments languageId
         *  If no Content found, it returns a empty list of contents. *
        */
        public ArrayList getContents(int langId)
        {
            ArrayList urlList = new ArrayList();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT topic_id,link_id,url,description,author,level,translator_id,reviewer_id,publisher_id FROM links WHERE lang_id=? AND verified=true");
                    pstmt.setInt(1, langId);
                    res = pstmt.executeQuery();
                    while(res.next()) {
                        URLBean url = new URLBean();
                        url.setTopicId(res.getInt("topic_id"));
                        url.setLinkId(res.getInt("link_id"));
                        url.setUrl(res.getString("url"));
                        url.setDesc(res.getString("description"));
                        url.setAuthor(res.getString("author"));
                        url.setLevel(res.getString("level"));
                        url.setTranslatorId(res.getString("translator_id"));
                        url.setReviewerId(res.getString("reviewer_id"));
                        url.setPublisherId(res.getString("publisher_id"));
                        urlList.add(url);
                    }
                    return urlList;
                }catch(SQLException sqle) {
                    System.out.println(sqle);
                }catch(Exception e) {
                    System.out.println(e);
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return urlList;
        }
        
        /*
         * getReviewerUrl() method is used for retreiving url of a particular topic for reviewing. *
         * This function return a String containing url for a particular topic and language. *
         * If no url found, it returns a empty string *
        */
        public String getReviewerUrl(int linkId,int topicId, String userId) {
            String url = null;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT rurl FROM links WHERE reviewer_id=? and link_id=?  AND topic_id=? and verified=true");
                    pstmt.setString(1,userId);
                    pstmt.setInt(2, linkId);
                    pstmt.setInt(3,topicId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        url = res.getString("rurl");
                    }
                }catch(SQLException sqle) {
                    System.out.println(sqle);
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return url;
        }

        /*
         * getPublisherUrl() method is used for retreiving url of a particular topic for reviewing. *
         * This function return a String containing url for a particular topic and language. *
         * If no url found, it returns a empty string *
        */
        public String getPublisherUrl(int linkId,int topicId, String userId) {
            String url = null;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT purl FROM links WHERE publisher_id=? and link_id=?  AND topic_id=? and verified=true");
                    pstmt.setString(1,userId);
                    pstmt.setInt(2, linkId);
                    pstmt.setInt(3,topicId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        url = res.getString("purl");
                    }
                }catch(SQLException sqle) {
                    System.out.println(sqle);
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return url;
        }
        
        /**
         *  searchAuthorizedReviewer() function checks whether the logged in user is authorized to review this
         *  content.
         *
         * @param topicId an integer containing topic id
         *
         * @param linkId an integer containing link id
         *
         * @param userId a string containing user id
         *
         * @return boolean it returns true if the logged in person is authorized to review this content otherwise false.
         */
        public boolean searchAuthorizedReviewer(int topicId, int linkId, String userId) {
            boolean result = false;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("select verified from links where topic_id=? and link_id=? and reviewer_id=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    pstmt.setString(3, userId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        result = true;
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }

        /**
         *  searchAuthorizedTranslation() function checks whether the logged in user is authorized to translate this
         *  content.
         *
         * @param topicId an integer containing topic id
         *
         * @param linkId an integer containing link id
         *
         * @param userId a string containing user id
         *
         * @return (boolean) it returns true if the logged in person is authorized to translate this content otherwise false.
         */
        public boolean searchAuthorizedTranslation(int topicId, int linkId, String userId) {
            boolean result = false;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("select verified from links where topic_id=? and link_id=? and translator_id=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    pstmt.setString(3, userId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        result = true;
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }

        /**
         *  searchAuthorizedPublisher() function checks whether the logged in user is authorized to publish this
         *  content.
         *
         * @param topicId an integer containing topic id
         *
         * @param linkId an integer containing link id
         *
         * @param userId a string containing user id
         *
         * @return (boolean) it returns true if the logged in person is authorized to publish this content otherwise false.
         */
        public boolean searchAuthorizedPublisher(int topicId, int linkId, String userId) {
            boolean result = false;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("select verified from links where topic_id=? and link_id=? and publisher_id=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    pstmt.setString(3, userId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        result = true;
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }
        /**isTranslatorAssigned() function check whether the translator is assigned to this content or not.
         *
         * @param topicId an integer containing topic id
         *
         * @param linkId an integer containing link id
         *
         * @param langId an integer containing language id
         *
         * @return boolean It returns true if translator is assigned to this content otherwise false
         *
         */
        public boolean isTranslatorAssigned(int topicId, int linkId, int langId)
        {
            boolean result = false;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try {
                    pstmt = con.prepareStatement("select translator_assigned from links where topic_id=? and link_id=? and lang_id=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    pstmt.setInt(3, langId);
                    res = pstmt.executeQuery();
                    while(res.next()) {
                        result = res.getBoolean("translator_assigned");
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }

        /**isReviewerAssigned() function check whether the reviewer is assigned to this content or not.
         *
         * @param topicId an integer containing topic id
         *
         * @param linkId an integer containing link id
         *
         * @param langId an integer containing language id
         *
         * @return boolean It returns true if reviewer is assigned to this content otherwise false
         *
         */
        public boolean isReviewerAssigned(int topicId, int linkId, int langId)
        {
            boolean result = false;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try {
                    pstmt = con.prepareStatement("select reviewer_assigned from links where topic_id=? and link_id=? and lang_id=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    pstmt.setInt(3, langId);
                    res = pstmt.executeQuery();
                    while(res.next()) {
                        result = res.getBoolean("reviewer_assigned");
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }

        /**isPublisherAssigned() function check whether the publisher is assigned to this content or not.
         *
         * @param topicId an integer containing topic id
         *
         * @param linkId an integer containing link id
         *
         * @param langId an integer containing language id
         *
         * @return boolean It returns true if publisher is assigned to this content otherwise false
         *
         */
        public boolean isPublisherAssigned(int topicId, int linkId, int langId)
        {
            boolean result = false;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try {
                    pstmt = con.prepareStatement("select publisher_assigned from links where topic_id=? and link_id=? and lang_id=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    pstmt.setInt(3, langId);
                    res = pstmt.executeQuery();
                    while(res.next()) {
                        result = res.getBoolean("publisher_assigned");
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }

        /**assignTranslator() function assign the translator to a content. It updates the links table.
         * 
         * @param topicId an integer containing topic id of the content
         *
         * @param linkId an integer containing link id of the content
         *
         * @param langId an integer containing the language id of the content
         *
         * @param userId a string containing the id of the user
         *
         * @return boolean It returns true if the update is successful otherwise false.
         * 
         */
        public boolean assignTranslator(int topicId, int linkId, int langId, String userId) {
            boolean result = false;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try {
                    pstmt = con.prepareStatement("update links set translator_assigned=true,translator_id=? where topic_id=? and link_id=? and lang_id=?");
                    pstmt.setString(1, userId);
                    pstmt.setInt(2, topicId);
                    pstmt.setInt(3, linkId);
                    pstmt.setInt(4, langId);
                    int rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated == 1) {
                        result = true;
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }

        /**assignReviewer() function assign the reviewer to a content. It updates the links table.
         *
         * @param topicId an integer containing topic id of the content
         *
         * @param linkId an integer containing link id of the content
         *
         * @param langId an integer containing the language id of the content
         *
         * @param userId a string containing the id of the user
         *
         * @return boolean It returns true if the update is successful otherwise false.
         *
         */
        public boolean assignReviewer(int topicId, int linkId, int langId, String userId) {
            boolean result = false;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try {
                    pstmt = con.prepareStatement("update links set reviewer_assigned=true,reviewer_id=? where topic_id=? and link_id=? and lang_id=?");
                    pstmt.setString(1, userId);
                    pstmt.setInt(2, topicId);
                    pstmt.setInt(3, linkId);
                    pstmt.setInt(4, langId);
                    int rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated == 1) {
                        result = true;
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }

        /**assignPublisher() function assign the publisher to a content. It updates the links table.
         *
         * @param topicId an integer containing topic id of the content
         *
         * @param linkId an integer containing link id of the content
         *
         * @param langId an integer containing the language id of the content
         *
         * @param userId a string containing the id of the user
         *
         * @return boolean It returns true if the update is successful otherwise false.
         *
         */
        public boolean assignPublisher(int topicId, int linkId, int langId, String userId) {
            boolean result = false;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try {
                    pstmt = con.prepareStatement("update links set publisher_assigned=true,publisher_id=? where topic_id=? and link_id=? and lang_id=?");
                    pstmt.setString(1, userId);
                    pstmt.setInt(2, topicId);
                    pstmt.setInt(3, linkId);
                    pstmt.setInt(4, langId);
                    int rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated == 1) {
                        result = true;
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }

        /** countUserTranslation() function counts the number of translation assigned to the user
         *
         * @param userId A string containing the user id
         *
         * @return int it returns the total number of translation assigned to a particular user
         * 
         */
        public int countUserTranslation(String userId) {
            int count=0;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try {
                    pstmt = con.prepareStatement("select count(topic_id) as total from links where translator_id=?");
                    pstmt.setString(1, userId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        count = res.getInt("total");
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return count;
        }

        /** getTranslationLimit() function gets the translation limit for a user (Translation limit means,
         *  how many translation a user can do simultaneously)
         *
         * @param userId A string containing the user id
         *
         * @return int It returns the translation limit for a particular user
         *
         */
        public int getTranslationLimit(String userId) {
            int limit = 0;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("select max_translation from ecusers where userid=?");
                    pstmt.setString(1, userId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        limit = res.getInt("max_translation");
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return limit;
        }

        /** getLink() method returns the details of a topic link from links table.
         *  All the details includes description of link, translator, reviewer and publisher details.
         *  It also include author of the topic and level of the topic.
         *
         * @param topicId An integer containing the topic id
         *
         * @param linkId An integer containing the link id
         *
         * @param langId An integer containing the language id
         *
         * @see URLBean
         *
         * @return URLBean It return a object of URLBean class having all the details based on the
         * parameter provided to the function if found otherwise returns null object.
         * 
         */
        public URLBean getLink(int topicId, int linkId, int langId) {
            URLBean url = null;
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("select * from links where topic_id=? and link_id=? and lang_id=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    pstmt.setInt(3, langId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        url = new URLBean();
                        url.setTopicId(res.getInt("topic_id"));
                        url.setLinkId(res.getInt("link_id"));
                        url.setLangId(res.getInt("lang_id"));
                        url.setDesc(res.getString("description"));
                        url.setAuthor(res.getString("author"));
                        url.setLevel(res.getString("level"));
                        url.setVerified(res.getBoolean("verified"));
                    }
                } catch(SQLException sqle) {
                    sqle.printStackTrace();
                } finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return url;
        }

        /** translateTitle() function updates the description of a content. It updates the link_description table in database
         *
         * @param topicId An integer containing the topic id
         *
         * @param linkId An integer containing the link id
         *
         * @param langId An integer containing the language id
         *
         * @param title A string containing the title of the link
         *
         * @see LanguageBean
         *
         * @return boolean It returns true if the update is successful otherwise false.
         *
         */
        public boolean translateTitle(int topicId, int linkId, int langId, String title, int status) {
            boolean result = false; // variable to store the result of this function
            //checking for database connection
            if(EkShikshaDBConnection.isClosed(con)) {
                //if database connection is closed get a new connection
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) { //checking whether database connection is not closed
                //handling sql exceptions if any
                try {
                    //declaring query
                    String selectQuery = "select description,lang_id from links where topic_id=? and link_id=? and lang_id=(select distinct(original_language) from links where topic_id=? and link_id=?);";
                    String insertQuery = "insert into link_description(topic_id,link_id,lang_id,description,status) values(?,?,?,?,?)";
                    String updateQuery = "update link_description set description=?,status=? where topic_id=? and link_id=? and lang_id=?";
                    pstmt = con.prepareStatement("select * from link_description where topic_id=? and link_id=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        pstmt = con.prepareStatement(updateQuery);
                        pstmt.setString(1, title);
                        pstmt.setInt(2, status);
                        pstmt.setInt(3, topicId);
                        pstmt.setInt(4, linkId);
                        pstmt.setInt(5, langId);
                        int rowUpdated = pstmt.executeUpdate();
                        if(rowUpdated == 1) {
                            result = true;
                        }
                    } else {
                        pstmt = con.prepareStatement(selectQuery);
                        pstmt.setInt(1, topicId);
                        pstmt.setInt(2, linkId);
                        pstmt.setInt(3, topicId);
                        pstmt.setInt(4, linkId);
                        res = pstmt.executeQuery();
                        if(res.next()) {
                            EContentMenuHelper helper = new EContentMenuHelper();
                            ArrayList availableLanguages = helper.getAvailableLanguage();
                            Iterator langIterator = availableLanguages.iterator();
                            String description = res.getString("description");
                            int original_language = res.getInt("lang_id");
                            int count = 0;
                            pstmt = con.prepareStatement(insertQuery);
                            while(langIterator.hasNext()) {
                                ekalavya.econtent.bean.LanguageBean languageBean = (ekalavya.econtent.bean.LanguageBean)langIterator.next();
                                if(original_language == languageBean.getLanguageId()) {
                                    pstmt.setInt(1,topicId);
                                    pstmt.setInt(2, linkId);
                                    pstmt.setInt(3, languageBean.getLanguageId());
                                    pstmt.setString(4, description);
                                    pstmt.setInt(5, 4);
                                } else if(langId == languageBean.getLanguageId()) {
                                    pstmt.setInt(1,topicId);
                                    pstmt.setInt(2, linkId);
                                    pstmt.setInt(3, languageBean.getLanguageId());
                                    pstmt.setString(4, title);
                                    pstmt.setInt(5, status);
                                } else {
                                    pstmt.setInt(1,topicId);
                                    pstmt.setInt(2, linkId);
                                    pstmt.setInt(3, languageBean.getLanguageId());
                                    pstmt.setString(4, description);
                                    pstmt.setInt(5, 1);
                                }
                                int rowUpdated = pstmt.executeUpdate();
                                if(rowUpdated == 1) {
                                    count++;
                                }
                            }
                            if(count == availableLanguages.size()) {
                                result = true;
                            }
                        }
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return result;
        }

        /**
         * 
         * @param topicId
         * @param linkId
         * @param langId
         * @return
         */
        public boolean publishTitle(String title, int topicId, int linkId, int langId) {
            boolean result = false;
            //checking for database connection
            if(EkShikshaDBConnection.isClosed(con)) {
                //if database connection is closed get a new connection
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) { //checking whether database connection is not closed
                //handling sql exceptions if any
                try {
                    pstmt = con.prepareStatement("update links set description=? where topic_id=? and link_id=? and lang_id=?");
                    pstmt.setString(1, title);
                    pstmt.setInt(2, topicId);
                    pstmt.setInt(3, linkId);
                    pstmt.setInt(4, langId);
                    int rowUpdated = pstmt.executeUpdate();
                    if(rowUpdated == 1) {
                        result = true;
                    }
                }catch(SQLException sqle) {
                    sqle.printStackTrace();
                }
            }
            return result;
        }

        /**
         * 
         * @param topicId
         * @param linkId
         * @param langId
         * @return
         */
        public String getLinkDescription(int topicId, int linkId, int langId, int status) {
            String description = null;
            //checking for database connection
            if(EkShikshaDBConnection.isClosed(con)) {
                //if database connection is closed get a new connection
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) { //checking whether database connection is not closed
                //handling sql exceptions if any
                try {
                    pstmt = con.prepareStatement("select description from link_description where topic_id=? and link_id=? and lang_id=? and status=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    pstmt.setInt(3, langId);
                    pstmt.setInt(4, status);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        description = res.getString("description");
                    }
                } catch(SQLException sqle) {
                    sqle.printStackTrace();
                } finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return description;
        }

        /**
         *
         * @param topicId
         * @param linkId
         * @param langId
         * @return
         */
        public String getLinkDescription(int topicId, int linkId, int langId) {
            String description = null;
            //checking for database connection
            if(EkShikshaDBConnection.isClosed(con)) {
                //if database connection is closed get a new connection
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) { //checking whether database connection is not closed
                //handling sql exceptions if any
                try {
                    pstmt = con.prepareStatement("select description from link_description where topic_id=? and link_id=? and lang_id=?");
                    pstmt.setInt(1, topicId);
                    pstmt.setInt(2, linkId);
                    pstmt.setInt(3, langId);
                    res = pstmt.executeQuery();
                    if(res.next()) {
                        description = res.getString("description");
                    }
                } catch(SQLException sqle) {
                    sqle.printStackTrace();
                } finally {
                    EkShikshaDBConnection.closePStatement(pstmt);
                    EkShikshaDBConnection.closeResultSet(res);
                    EkShikshaDBConnection.closeDBConnection(con);
                }
            }
            return description;
        }
        
        /**
         * 
         * @param topicId An integer containing the topic id
         *  
         * @param linkId An integer containing the link id
         * 
         * @param langId An integer containing the language id
         * 
         * @return String It returns a string
         */
        public String getTranslator(int topicId, int linkId, int langId) {
            String translator = null;

            return null;
        }

}
