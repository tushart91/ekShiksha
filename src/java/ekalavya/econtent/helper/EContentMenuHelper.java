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
import ekalavya.helper.EkShikshaDBConnection;
import ekalavya.econtent.bean.LanguageBean;
import ekalavya.econtent.bean.URLBean;
import java.util.*;
import java.util.regex.Pattern;
public class EContentMenuHelper {
        //declaring class variables
        private Connection con; // to store the database connection object
        private PreparedStatement pstmt; // to store the prpearedstatement object
        private Statement stmt; //to store the statement object
        private ResultSet res; //to store the result set

        //declaring the constructor of the class
        public EContentMenuHelper(){
            //con = EkShikshaDBConnection.getDBConnection();
        }

        public EContentMenuHelper(Connection con) {
            this.con = con;
        }
        /*
         * The getAvailablieLanguage() function returns the list of available language *
         * It returns a list of type LanguageBean. *
         * LanguageBean has language id, language name and description *
         * If no language found, this method returns empty list.
         */
        public ArrayList getAvailableLanguage(){
            ArrayList langList = new ArrayList();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT * FROM languages ORDER By lang_id");
                    res = pstmt.executeQuery();
                    while(res.next()){
                        LanguageBean lBean = new LanguageBean();
                        lBean.setLanguageId(res.getInt("lang_id"));
                        lBean.setLanguageName(res.getString("lang_name"));
                        lBean.setDescription(res.getString("lang_desc"));
                        langList.add(lBean);
                    }
                    return langList;
                }catch(SQLException sqle){
                    System.out.println(sqle);
                }finally {
                     EkShikshaDBConnection.closePStatement(pstmt);
                     EkShikshaDBConnection.closeResultSet(res);
                     EkShikshaDBConnection.closeDBConnection(con);
                 }

            }
            return langList;
        }

        /*
         *  getAllTopics method is used for retreiving all topics available for particular language
         *  It takes a parameter language id (langId).
         *  It returns a list of Topics for particular language.
         *  If no Topic found, the function returns a empty list.
         */
        public ArrayList getAllTopics(int langId) {
            ArrayList topicList = new ArrayList();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("select topics.topic_id,contents.topic_name,topics.parent_id,topics.type from topics inner join contents on (topics.topic_id = contents.topic_id) where contents.lang_id=? or contents.lang_id=1 order by contents.topic_id, contents.lang_id desc;");
                    pstmt.setInt(1, langId);
                    res = pstmt.executeQuery();
                    int currentTopicId = 0;
                    while(res.next()){
                        Topic topic = new Topic();
                        if(currentTopicId==0) {
                            topic.setTopicId(res.getInt("topic_id"));
                            topic.setTopicName(res.getString("topic_name"));
                            topic.setParentId(res.getInt("parent_id"));
                            topic.setType(res.getInt("type"));
                            topicList.add(topic);
                        } else if(currentTopicId!=res.getInt("topic_id")) {
                            topic.setTopicId(res.getInt("topic_id"));
                            topic.setTopicName(res.getString("topic_name"));
                            topic.setParentId(res.getInt("parent_id"));
                            topic.setType(res.getInt("type"));
                            topicList.add(topic);
                        }
                        currentTopicId = topic.getTopicId();
                    }
                    return topicList;
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
            return topicList;
        }

        /*
         *  getTopics() function is used to search topics based on parent id. *
         *  It returns a list of topics based on a particular parent id *
         *  It takes two arguments first is a list of topics to be searched and
         *  second a parent id to search topics in all topics avaiable. *
        */
        public static ArrayList getTopics(ArrayList topics,int parentId) {
            ArrayList resultSet = new ArrayList();
            Iterator iter = topics.iterator();
            while(iter.hasNext()) {
                Topic topic = (Topic)iter.next();
                if(topic.getParentId() == parentId) {
                    resultSet.add(topic);
                }
            }
            return resultSet;
        }



        /*
         *  displayMenu function is used to generate dynamic tree menu based on database.
         *  This is a recurrsive function to build a html list string. *
         *  This function returns a string to generate a list (having html tags in it).
        */

        public String displayMenu(ArrayList topics,int parent_id, int level, boolean initial) {
            
            String html = "";
            ArrayList result = EContentMenuHelper.getTopics(topics, parent_id);
            if(!initial) {
                html += "<ul>";
            }
            Iterator iter = result.iterator();
            while(iter.hasNext()) {
                Topic topic = (Topic)iter.next();
                try {
                    if(topic.getType() == 1) {
                        html += "<li><a href='#'>"+topic.getTopicName()+"</a>";
                        html += displayMenu(topics,topic.getTopicId(),level+1,false);
                    } else if(topic.getType()==0){
                        html += "<li><a href='showContents.do?topicId="+topic.getTopicId()+"'>"+topic.getTopicName()+"</a></li>";
                    }
                }catch(Exception e) {
                    System.out.println(e);
                }
            }
            if(!initial) {
               html += "</ul>";
            }
            return html;
        }

        
        public Topic getTopic(int topicId, int langId) {
            Topic topic = new Topic();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("select topics.topic_id,contents.topic_name,topics.parent_id,topics.type from topics inner join contents on (topics.topic_id = contents.topic_id) where contents.lang_id=? and topics.topic_id=?;");
                    pstmt.setInt(1, langId);
                    pstmt.setInt(2, topicId);
                    res = pstmt.executeQuery();
                    while(res.next()){
                        topic.setTopicId(res.getInt("topic_id"));
                        topic.setTopicName(res.getString("topic_name"));
                        topic.setParentId(res.getInt("parent_id"));
                        topic.setType(res.getInt("type"));
                    }
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
            return topic;
        }

        public String getTopicTree(ArrayList topics,int parent_id, int level) {
            String html = "";
            ArrayList result = EContentMenuHelper.getTopics(topics, parent_id);
            html += "<ul>";
            Iterator iter = result.iterator();
            while(iter.hasNext()) {
                Topic topic = (Topic)iter.next();
                try {
                    if(topic.getType() == 1) {
                        html += "<li><a href='#'>"+topic.getTopicName()+"</a>";
                        html += getTopicTree(topics,topic.getTopicId(),level+1);
                    } else if(topic.getType()==0){
                        html += "<li><a href='showTranslationContents.do?topicId="+topic.getTopicId()+"'>"+topic.getTopicName()+"</a></li>";
                    }
                }catch(Exception e) {
                    System.out.println(e);
                }
            }
             html += "</ul>";
             return html;
        }

        public String displayTranslatableTopic(int topicId, int langId) {
            String html = "<ul>";
            Topic topic = getTopic(topicId,langId);
            ArrayList allTopics = getAllTopics(langId);
            if(topic.getType()==1) {
                html += "<li><a href='#'>"+topic.getTopicName()+"</a>";
                html += getTopicTree(allTopics,topic.getTopicId(),1);
            } else {
                html += "<li><a href='showTranslationContents.do?topicId="+topic.getTopicId()+"'>"+topic.getTopicName()+"</a></li>";
            }
            html += "</ul>";
            return html;
        }

        /*
         *  getTopicList method is used for retreiving all topics available for particular language ordered by topic name
         *  It takes a parameter language id (langId).
         *  It returns a list of Topics for particular language.
         *  If no Topic found, the function returns a empty list.
         */
        public ArrayList getTopicList(int langId) {
            ArrayList topicList = new ArrayList();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("select topics.topic_id,contents.topic_name,topics.parent_id,topics.type from topics inner join contents on (topics.topic_id = contents.topic_id) where contents.lang_id=? or contents.lang_id=1 order by contents.topic_name,contents.topic_id, contents.lang_id desc;");
                    pstmt.setInt(1, langId);
                    res = pstmt.executeQuery();
                    int currentTopicId = 0;
                    while(res.next()){
                        Topic topic = new Topic();
                        if(currentTopicId==0) {
                            topic.setTopicId(res.getInt("topic_id"));
                            topic.setTopicName(res.getString("topic_name"));
                            topic.setParentId(res.getInt("parent_id"));
                            topic.setType(res.getInt("type"));
                            topicList.add(topic);
                        } else if(currentTopicId!=res.getInt("topic_id")) {
                            topic.setTopicId(res.getInt("topic_id"));
                            topic.setTopicName(res.getString("topic_name"));
                            topic.setParentId(res.getInt("parent_id"));
                            topic.setType(res.getInt("type"));
                            topicList.add(topic);
                        }
                        currentTopicId = topic.getTopicId();
                    }
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
            return topicList;
        }

        /*
         *  getTranslatableDocument() function is used for retreiving url of translatable document assigned to particular user *
         *  This function returns a list of document links depending upon userId.
         *  This function takes one argument that is userId (id of user who is logged in as a translator.
         *  It returns a link of document links if found otherwise empty list *
        */
        public ArrayList getTranslatableDocument(String userId)
        {
            ArrayList urlList = new ArrayList();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT topic_id,link_id,turl,description FROM links WHERE verified=true AND translator_id=?");
                    pstmt.setString(1, userId);
                    res = pstmt.executeQuery();
                    while(res.next()) {
                        URLBean url = new URLBean();
                        url.setTopicId(res.getInt("topic_id"));
                        url.setLinkId(res.getInt("link_id"));
                        url.setUrl(res.getString("turl"));
                        url.setDesc(res.getString("description"));
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
         *  getReviewableDocument() function is used for retreiving url of reviewable document assigned to particular user *
         *  This function returns a list of document links depending upon userId.
         *  This function takes one argument that is userId (id of user who is logged in as a reviewer.
         *  It returns a link of document links if found otherwise empty list *
        */
        public ArrayList getReviewableDocument(String userId)
        {
            ArrayList urlList = new ArrayList();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT topic_id,link_id,rurl,description FROM links WHERE verified=true AND reviewer_id=?");
                    pstmt.setString(1, userId);
                    res = pstmt.executeQuery();
                    while(res.next()) {
                        URLBean url = new URLBean();
                        url.setTopicId(res.getInt("topic_id"));
                        url.setLinkId(res.getInt("link_id"));
                        url.setUrl(res.getString("rurl"));
                        url.setDesc(res.getString("description"));
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
         *  getPublisherDocument() function is used for retreiving url of document to be published assigned to particular user *
         *  This function returns a list of document links depending upon userId.
         *  This function takes one argument that is userId (id of user who is logged in as a publisher.
         *  It returns a link of document links if found otherwise empty list *
        */
        public ArrayList getPublishableDocument(String userId)
        {
            ArrayList urlList = new ArrayList();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("SELECT topic_id,link_id,purl,description FROM links WHERE verified=true AND publisher_id=?");
                    pstmt.setString(1, userId);
                    res = pstmt.executeQuery();
                    while(res.next()) {
                        URLBean url = new URLBean();
                        url.setTopicId(res.getInt("topic_id"));
                        url.setLinkId(res.getInt("link_id"));
                        url.setUrl(res.getString("purl"));
                        url.setDesc(res.getString("description"));
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
         *  getTopicList method is used for retreiving all topics available for particular language ordered by topic name
         *  It takes a parameter language id (langId).
         *  It returns a list of Topics for particular language.
         *  If no Topic found, the function returns a empty list.
         */
        public ArrayList getTopicListByLanguage(int langId) {
            ArrayList topicList = new ArrayList();
            if(EkShikshaDBConnection.isClosed(con)) {
                con = EkShikshaDBConnection.getDBConnection();
            }
            if(!EkShikshaDBConnection.isClosed(con)) {
                try{
                    pstmt = con.prepareStatement("select topics.topic_id,contents.topic_name,topics.parent_id,topics.type from topics inner join contents on (topics.topic_id = contents.topic_id) where contents.lang_id=? order by contents.lang_id desc;");
                    pstmt.setInt(1, langId);
                    res = pstmt.executeQuery();
                    int currentTopicId = 0;
                    while(res.next()){
                        Topic topic = new Topic();
                        if(currentTopicId==0) {
                            topic.setTopicId(res.getInt("topic_id"));
                            topic.setTopicName(res.getString("topic_name"));
                            topic.setParentId(res.getInt("parent_id"));
                            topic.setType(res.getInt("type"));
                            topicList.add(topic);
                        } else if(currentTopicId!=res.getInt("topic_id")) {
                            topic.setTopicId(res.getInt("topic_id"));
                            topic.setTopicName(res.getString("topic_name"));
                            topic.setParentId(res.getInt("parent_id"));
                            topic.setType(res.getInt("type"));
                            topicList.add(topic);
                        }
                        currentTopicId = topic.getTopicId();
                    }
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
            return topicList;
        }

        public boolean isChild(int parent, int child) {
            boolean result = false;
            ArrayList list = getAllTopics(1);
            String isChild = findChild(list,parent,child);
            result = isChild.matches("true");
            return result;
        }

        public String findChild(ArrayList topics,int parent_id, int child_id) {
            String isChild = "";
            ArrayList result = EContentMenuHelper.getTopics(topics, parent_id);
            Iterator iter = result.iterator();
            while(iter.hasNext()) {
                Topic topic = (Topic)iter.next();
                try {
                    if(topic.getType() == 1) {
                        isChild += findChild(topics,topic.getTopicId(), child_id);
                    }
                    if(topic.getTopicId() == child_id) {
                        isChild += "true";
                    }
                }catch(Exception e) {
                    System.out.println(e);
                }
            }
            return isChild;
        }
}
