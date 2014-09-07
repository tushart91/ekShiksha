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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.*;
import ekalavya.econtent.bean.LanguageBean;
import ekalavya.helper.EkShikshaDBConnection;

public class ContentHandler {
    //declaring class variables
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet res;
    private Statement stmt;

    //declaring constructor
    public ContentHandler()
    {
        //con = EkShikshaDBConnection.getDBConnection();
    }
    //declaring constructor with parameter as a database connection object
    public ContentHandler(Connection con)
    {
    this.con = con;
    }
    /**
     * This function is called to insert all the contents of parsed html file into database.
     * This function calls insertSimpleContent() and insertContent() to insert the values into database.
     * This function splits the simple text string into an array for inserting into database.
     *
     @param html A string containing html texts
     *
     @param complex A string containing complex texts
     *
     @param simple A string containing simple texts
     *
     @param translatable A string containing translatable texts
     *
     @param topicId An integer containing topic id of content
     *
     @param linkId An integer containing link id of content
     *
     @param langId An integer containing language id of content
     *
     */
    public void insertParsedContent(String html, String complex, String simple, String translatable, int topicId, int linkId, int langId)
    {
        String[] simpleContent = null;
        String[] translatableContent = null;
        boolean isInserted = false;
        String simpleIds = "";
        String translatableIds = "";
        String delimiter =  "\\$\\$\\$\\$\\$";
        /* Getting the list of available language */
        ArrayList availableLanguage = new ArrayList();
        EContentMenuHelper helper = new EContentMenuHelper();
        availableLanguage = helper.getAvailableLanguage();
        Iterator it = availableLanguage.iterator();
        if(simple != null) {
            //creating array of simple content by spliting the simple content using delimiter
            simpleContent = simple.split(delimiter);
            /* Calling insertSimpleContent() function to insert simple contents into database */
            simpleIds = insertSimpleContent(simpleContent,langId);
            /* Calling insertContent() function to insert comma seperated string of simple content's id into database */
            insertContent(-1,topicId,linkId,-1,simpleIds);
        }
        if(translatable != null) {
            //creating array of translatable content by spliting the simple content using delimiter
            translatableContent = translatable.split(delimiter);
            /* Calling insertTranslatableContent() function to insert translatable contents into database*/
            translatableIds = insertTranslatableContent(translatableContent,langId);
            /* Calling insertContent() function to insert comma seperated string of translatable content's id into database */
            insertContent(-2,topicId,linkId,-2,translatableIds);
        }
        if(html != null) {
            /* Calling insertContent() function to insert html string into database */
            isInserted = insertContent(0,topicId,linkId,0,html);
        }
        /* Calling insertContent() function to insert complex text into database */
        if(isInserted && complex != null) {
            String iDelimitor = "\\$\\$I\\$\\$";
            StringBuffer buffer = new StringBuffer(complex.replaceAll(delimiter, iDelimitor));
            //isInserted = insertContent(1,topicId,linkId,langId,complex);
            it = availableLanguage.iterator();
            while(it.hasNext()) {
                LanguageBean lang = (LanguageBean)it.next();
                isInserted = insertContent(1,topicId,linkId,lang.getLanguageId(),buffer.toString());
            }
        }
    }

    /**
     * This function inserts the html content, complex content and comma seprated string of id of simple contents into database for respective topic id and link id.
     * This function return true after successful insertion of values into database otherwise it returns false.
     * It takes cid(-1 for comma seperated string of simple content's id, 0 for html string and 1 for complex text string), topicId, linkId, langId and content as parameters.
     *
     @param topicId An integer containing topic id of content
     *
     @param linkId An integer containing link id of content
     *
     @param langId An integer containing language id of content
     *
     @param content A string containing contents to be inserted in complexcontent table
     *
     @return boolean return true if insertion of content is successful otherwise false.
     *
     */
    public boolean insertContent(int cid, int topicId, int linkId, int langId, String content)
    {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("insert into complexcontent(cid,topic_id,link_id,lang_id,utext) values(?,?,?,?,?)");
                pstmt.setInt(1, cid);
                pstmt.setInt(2, topicId);
                pstmt.setInt(3, linkId);
                pstmt.setInt(4, langId);
                pstmt.setString(5, content);
                int affectedRow = pstmt.executeUpdate();
                if(affectedRow == 1) {
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

    /**
     * This function inserts the simple contents into database.
     * This function calls isSimpleContentExist() function to check whether the content is already in database or not.
     * If the content is not in database, it inserts the content into database.
     * This function returns the comma seprated string of id of contents in database.
     * This function takes two parameter first one is array of simple contents and second one is language id.
     *
     @param simpleContent An array of string (simple content string array)
     *
     @param langId An integer containing language id of the simple content
     *
     @return String A string containing comma seperated string of simple contents id.
     *
     */

    public String insertSimpleContent(String[] simpleContent, int langId)
    {
        String idString = "";
        int nextId = 0;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                for(int i=0;i<simpleContent.length;i++) {
                    nextId = isSimpleContentExist(simpleContent[i],langId);
                    if(nextId == 0){
                        stmt = con.createStatement();
                        res = stmt.executeQuery("select max(sid) as nextid from simplecontent");
                        if(res.next()) {
                            nextId = res.getInt("nextid")+1;
                        }
                        pstmt = con.prepareStatement("insert into simplecontent(sid,utext,lang_id,status) values(?,?,?,4)");
                        pstmt.setInt(1, nextId);
                        pstmt.setString(2, simpleContent[i]);
                        pstmt.setInt(3, langId);
                        pstmt.executeUpdate();
                        idString += nextId+",";
                    } else {
                        idString += nextId+",";
                    }
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeStatement(stmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return idString;
    }

    /**
     * This function inserts the automatically translatable contents into database.
     * This function calls isTranslatableContentExist() function to check whether the content is already in database or not.
     * If the content is not in database, it inserts the content into database.
     * This function returns the comma seprated string of id of contents in database.
     * This function takes two parameter first one is array of translatable contents and second one is language id.
     *
     @param translatableContent An array of string (translatable content string array)
     *
     @param langId An integer containing language id of the translatable content
     *
     @return String A string containing comma seperated string of translatable contents id.
     *
     */
    public String insertTranslatableContent(String[] translatableContent, int langId) {
        String idString = "";
        int nextId = 0;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                stmt = con.createStatement();
                for(int i=0; i<translatableContent.length;i++) {
                    nextId = isTranslatableContentExist(translatableContent[i], langId);
                    if(nextId == 0) {
                        res = stmt.executeQuery("select max(tid) as nextid from translatablecontent");
                        if(res.next()) {
                        nextId = res.getInt("nextid")+1;
                        }
                        idString += nextId+",";
                        pstmt = con.prepareStatement("insert into translatablecontent(tid,utext,lang_id) values(?,?,?)");
                        pstmt.setInt(1, nextId);
                        pstmt.setString(2, translatableContent[i]);
                        pstmt.setInt(3, langId);
                        pstmt.executeUpdate();
                        /* Getting the list of available language */
                        ArrayList availableLanguage = new ArrayList();
                        EContentMenuHelper helper = new EContentMenuHelper();
                        availableLanguage = helper.getAvailableLanguage();
                        Iterator it = availableLanguage.iterator();
                        while(it.hasNext()) {
                            LanguageBean lbean = (LanguageBean)it.next();
                            if(lbean.getLanguageId() != langId) {
                                String translated = translateWord(translatableContent[i],langId,lbean.getLanguageId());
                                pstmt = con.prepareStatement("insert into translatablecontent(tid,utext,lang_id) values(?,?,?)");
                                pstmt.setInt(1, nextId);
                                pstmt.setString(2, translated);
                                pstmt.setInt(3, lbean.getLanguageId());
                                pstmt.executeUpdate();
                            }
                        }
                    } else {
                        idString += nextId+",";
                    }
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeStatement(stmt);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return idString;
    }


    /**
     * This function checks whether the translatable content is already exist in translatablecontent table in database or not.
     * If the content is available it return the id of available content otherwise 0.
     * This function takes two parameter first one is content and second one is language Id.
     *
     @param translatableContent A translatable content string
     *
     @param langId An integer containing language id of the translatable content
     *
     @return int It return id of the translatable content if found otherwise 0
     *
     */
    public int isTranslatableContentExist(String translatableContent, int langId) {
        int tId = 0;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("Select tid from translatablecontent where lang_id=? and utext=?");
                pstmt.setInt(1, langId);
                pstmt.setString(2, translatableContent);
                res = pstmt.executeQuery();
                while(res.next()) {
                    tId = res.getInt("tid");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
            }
        }
        return tId;
    }

    /**
     * This function checks whether the simple content is already exist in database or not.
     * If the content is available it return the id of available content otherwise 0.
     * This function takes two parameter first one is content and second one is language Id.
     *
     @param simpleContent A simple content string
     *
     @param langId An integer containing language id of the simple content
     *
     @return int It return id of the simple content if found otherwise 0
     *
     */
    public int isSimpleContentExist(String simpleContent, int langId)
    {
        int sId = 0;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("Select sid from simplecontent where lang_id=? and utext=?");
                pstmt.setInt(1, langId);
                pstmt.setString(2, simpleContent);
                res = pstmt.executeQuery();
                while(res.next()) {
                    sId = res.getInt("sid");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally{
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
            }
        }
        return sId;
    }

    /**
     * This function checks whether the simple content is already exist in database or not.
     * If the content is available it return true otherwise false.
     * This function takes two parameter simple content id and second one is language Id.
     *
     @param sId id of simple content
     *
     @param langId An integer containing language id of the simple content
     *
     @return boolean It return true if simple content is found otherwise false.
     *
     */
    public boolean isSimpleContentExist(int sId, int langId)
    {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select utext from simplecontent where sid=? and lang_id=?");
                pstmt.setInt(1, sId);
                pstmt.setInt(2, langId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    result = true;
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
            }
        }
        return result;
    }

    /**
     * This functions returns the array of simple contents from database for particular topic and link and specified language.
     * If language contents are not found then english content is returned.
     * It calls the getSimpleIds() function to get the id of simple content for particular topic and link.
     * It takes three parameter link topicId, linkId and languageId
     *
     @param topicId An integer containing topic id of simple content
     *
     @param linkId An integer containing link id of simple content
     *
     @param langId An integer containing language id of simple content
     *
     @return String[] It returns array of simple content string if found otherwise null
     */
    public String[] getSimpleContent(int topicId, int linkId, int langId)
    {
        String[] simpleContent = null;
        String[] simpleId = null;
        simpleId = getSimpleIds(topicId,linkId);
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            if(simpleId != null) {
                simpleContent = new String[simpleId.length];
                try {
                    /* preparing query to get the content from simplecontent table based on sid (simple content id) */
                    pstmt = con.prepareStatement("select utext from simplecontent where sid=? and (lang_id=? or lang_id=1) and status=4 order by lang_id desc");
                    /* setting the parameter langId to get the simple content in this language */
                    pstmt.setInt(2, langId);
                    for(int i=0;i<simpleId.length;i++) { /* iterating through each simple content id */
                        pstmt.setInt(1, Integer.parseInt(simpleId[i])); /* setting parameter simpleid */
                        res = pstmt.executeQuery();
                        /* moving to the first row in result set */
                        if(res.next()) {
                        /* getting the first row's value */
                        simpleContent[i] = res.getString("utext");
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
        }
        return simpleContent;
    }

    /**
     * This functions returns the array of simple contents from database for particular topic and link and specified language.
     * If language contents are not found then original content is returned, the function finds the original
     * language by calling getOriginalLanguage() method.
     * It calls the getSimpleIds() function to get the id of simple content for particular topic and link.
     * It takes three parameter link topicId, linkId and languageId
     *
     @param topicId An integer containing topic id of simple content
     *
     @param linkId An integer containing link id of simple content
     *
     @param langId An integer containing language id of simple content
     *
     @return String[] It returns array of simple content string if found otherwise null
     *
     */
    public String[] getSimpleMixedContent(int topicId, int linkId, int langId)
    {
        String[] simpleContent = null;
        String[] simpleId = simpleId = getSimpleIds(topicId,linkId);;
        int originalLanguage = 0;
        originalLanguage = getOriginalLanguage(topicId,linkId);
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            
            if(simpleId != null) {
                simpleContent = new String[simpleId.length];
                try {
                    /* preparing query to get the content from simplecontent table based on sid (simple content id) */
                    pstmt = con.prepareStatement("select utext from simplecontent where sid=? and (lang_id=? or lang_id=?) and status=4 order by lang_id desc");
                    /* setting the parameter langId to get the simple content in this language */
                    for(int i=0;i<simpleId.length;i++) { /* iterating through each simple content id */
                        pstmt.setInt(1, Integer.parseInt(simpleId[i])); /* setting parameter simpleid */
                        pstmt.setInt(2, langId);
                        pstmt.setInt(3, originalLanguage);
                        res = pstmt.executeQuery();
                        /* moving to the first row in result set */
                        if(res.next()) {
                            /* getting the first row's value */
                            simpleContent[i] = res.getString("utext");
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
        }
        return simpleContent;
    }

    /**
     * This function returns the array of id of simple content of particular topic and link.
     * It takes two parameter like topicId and linkId to get the id string.
     * It splits the id string into an array of id and returns.
     *
     @param topicId An integer containing topic id of simple content
     *
     @param linkId An integer containing link id of simple content
     *
     @return String[] It returns array of id of simple content string if found otherwise null
     *
     */
    public String[] getSimpleIds(int topicId, int linkId)
    {
        String[] ids = null;
        String idString = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                /* preparing the query to get the simple contents id string */
                pstmt = con.prepareStatement("select utext from complexcontent where topic_id=? and link_id=? and cid=-1");
                /* setting the parameter topicId and linkId to get id string of simple content */
                pstmt.setInt(1, topicId);
                pstmt.setInt(2, linkId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    /* getting the id string */
                    idString = res.getString("utext");
                }
                if(idString != null) {
                    /* splitting the idString into an array*/
                    ids = idString.split(",");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        /* returning the array of id */
        return ids;
    }

    /**
     * This function returns the array of id of translatable content of particular topic and link.
     * It takes two parameter like topicId and linkId to get the id string.
     * It splits the id string into an array of id and returns.
     *
     @param topicId An integer containing topic id of translatable content
     *
     @param linkId An integer containing link id of translatable content
     *
     @return String[] It returns array of id of translatable content string if found otherwise null
     *
     */
    public String[] getTranslatableIds(int topicId, int linkId)
    {
        String[] ids = null;
        String idString = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                /* preparing the query to get the translatable contents id string */
                pstmt = con.prepareStatement("select utext from complexcontent where topic_id=? and link_id=? and cid=-2");
                /* setting the parameter topicId and linkId to get id string of translatable content */
                pstmt.setInt(1, topicId);
                pstmt.setInt(2, linkId);
                res = pstmt.executeQuery();
                if(res.next()) {
                    /* getting the id string */
                    idString = res.getString("utext");
                }
                if(idString != null) {
                    /* splitting the idString into an array*/
                    ids = idString.split(",");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        /* returning the array of id */
        return ids;
    }

    /**
     * This functions returns the array of translatable contents from database for particular topic and link and specified language.
     * It calls the getTranslatableIds() function to get the id of translatable content for particular topic and link.
     * It takes three parameter link topicId, linkId and languageId
     *
     @param topicId An integer containing topic id of translatable content
     *
     @param linkId An integer containing link id of translatable content
     *
     @param langId An integer containing language id of translatable content
     *
     @return String[] It returns array of translatable content string if found otherwise null
     *
     */
    public String[] getTranslatableContent(int topicId, int linkId, int langId)
    {
        String[] translatableContent = null;
        String[] translatableId = translatableId = getTranslatableIds(topicId,linkId);;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            if(translatableId != null) {
                translatableContent = new String[translatableId.length];
                try {
                    /* preparing query to get the content from translatablecontent table based on tid (translatable content id) */
                    pstmt = con.prepareStatement("select utext from translatablecontent where tid=? and lang_id=?");
                    for(int i=0;i<translatableId.length;i++) { /* iterating through each translatable content id */
                        pstmt.setInt(1, Integer.parseInt(translatableId[i])); /* setting parameter translatableid */
                        pstmt.setInt(2, langId);
                        res = pstmt.executeQuery();
                        /* moving to the first row in result set */
                        if(res.next()) {
                            /* getting the first row's value */
                            translatableContent[i] = res.getString("utext");
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
        }
        return translatableContent;
    }

    /**
     * This function finds the complex contents for given topic,link and language. If language is not found it takes english as default
     * This function returns the array of string containing complex content.
     * It takes topicId, linkId and langId as parameter.
     *
     @param topicId An integer containing topic id of complex content
     *
     @param linkId An integer containing link id of complex content
     *
     @param langId An integer containing language id of complex content
     *
     @return String[] It returns array of complex content string if found otherwise null
     *
     */
    public String[] getComplexContent(int topicId, int linkId, int langId)
    {
        String[] complexContent = null;
        String complexString = null;
        String delimiter =  "\\$\\$.*?\\$\\$";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
             try {
                 pstmt = con.prepareStatement("select utext from complexcontent where topic_id=? and link_id=? and cid=1 and (lang_id=? or lang_id=1) order by lang_id desc");
                 /* setting up the parameter for the query */
                 pstmt.setInt(1, topicId);
                 pstmt.setInt(2, linkId);
                 pstmt.setInt(3, langId);
                 res = pstmt.executeQuery();
                 /* moving next to the first row in resultset */
                 if(res.next()) {
                     /* getting the first row's value */
                     complexString = res.getString("utext");
                     /* splitting the complexString into an array of strings */
                     complexContent = complexString.split(delimiter);
                 }
             }catch(SQLException sqle) {
                sqle.printStackTrace();
             }finally {
                 EkShikshaDBConnection.closePStatement(pstmt);
                 EkShikshaDBConnection.closeResultSet(res);
                 EkShikshaDBConnection.closeDBConnection(con);
             }
         }
         return complexContent;
    }

    /**
     * This function finds the complex contents for given topic,link in given language.
     * This function returns the array of string containing complex content.
     * It takes topicId, linkId and langId as parameter.
     *
     @param topicId An integer containing topic id of complex content
     *
     @param linkId An integer containing link id of complex content
     *
     @param langId An integer containing language id of complex content
     *
     @return String[] It returns array of complex content string if found otherwise null
     *
     */
    public String[] getComplexContentByLanguage(int topicId, int linkId, int langId)
    {
         String[] complexContent = null;
         String complexString = null;
         String delimiter =  "\\$\\$.*?\\$\\$";
         if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
             try {
                 pstmt = con.prepareStatement("select utext from complexcontent where topic_id=? and link_id=? and cid=1 and lang_id=?");
                 /* setting up the parameter for the query */
                 pstmt.setInt(1, topicId);
                 pstmt.setInt(2, linkId);
                 pstmt.setInt(3, langId);
                 res = pstmt.executeQuery();
                 /* moving next to the first row in resultset */
                 if(res.next()) {
                     /* getting the first row's value */
                     complexString = res.getString("utext");
                     /* splitting the complexString into an array of strings */
                     complexContent = complexString.split(delimiter);
                 }
             }catch(SQLException sqle) {
                sqle.printStackTrace();
             }finally {
                 EkShikshaDBConnection.closePStatement(pstmt);
                 EkShikshaDBConnection.closeResultSet(res);
                 EkShikshaDBConnection.closeDBConnection(con);
             }
         }
         return complexContent;
    }

    /**
     * This functions returns the array of simple contents in english from database for particular topic and link.
     * It calls the getSimpleIds() function to get the id of simple content for particular topic and link.
     * It takes three parameter link topicId, linkId and languageId
     *
     @param topicId An integer containing topic id of simple content
     *
     @param linkId An integer containing link id of simple content
     *
     @return String[] It returns array of simple content string if found otherwise null
     *
     */
    public String[] getSimpleContent(int topicId, int linkId)
    {
        String[] simpleContent = null;
        String[] simpleId = null;
        simpleId = getSimpleIds(topicId,linkId);
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            if(simpleId != null) {
            simpleContent = new String[simpleId.length];
                try {
                    /* preparing query to get the content from simplecontent table based on sid (simple content id) */
                    pstmt = con.prepareStatement("select utext from simplecontent where sid=? and lang_id=1");
                    /* setting the parameter langId to get the simple content in this language */
                    for(int i=0;i<simpleId.length;i++) { /* iterating through each simple content id */
                        pstmt.setInt(1, Integer.parseInt(simpleId[i])); /* setting parameter simpleid */
                        res = pstmt.executeQuery();
                        /* moving to the first row in result set */
                        if(res.next()) {
                             /* getting the first row's value */
                             simpleContent[i] = res.getString("utext");
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
        }
        return simpleContent;
    }

    /**
     * This function finds the complex contents for given topic,link in given language.
     * This function returns the string containing complex content.
     * It takes topicId, linkId and langId as a parameter.
     *
     @param topicId An integer containing topic id of complex content
     *
     @param linkId An integer containing link id of complex content
     *
     @param langId An integer containing language id of complex content
     *
     @return String It returns complex content string if found otherwise null
     *
     */
    public String getComplexString(int topicId, int linkId, int langId)
    {
        String complexString= "";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                 pstmt = con.prepareStatement("select utext from complexcontent where topic_id=? and link_id=? and cid=1 and lang_id=?");
                 /* setting up the parameter for the query */
                 pstmt.setInt(1, topicId);
                 pstmt.setInt(2, linkId);
                 pstmt.setInt(3, langId);
                 res = pstmt.executeQuery();
                 /* moving next to the first row in resultset */
                 if(res.next()) {
                    /* getting the first row's value */
                    complexString = res.getString("utext");
                 }
             }catch(SQLException sqle) {
                sqle.printStackTrace();
             }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
             }
        }
        return complexString;
    }

    /**
     * This function finds the html string for given topic,link in given language.
     * This function returns the string containing html of document
     * It takes topicId and linkId as a parameter.
     *
     @param topicId An integer containing topic id of html string
     *
     @param linkId An integer containing link id of html string
     *
     @return String It returns html string of content if found otherwise empty string
     *
     */
    public String getHtmlString(int topicId, int linkId)
    {
        String complexString= "";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                pstmt = con.prepareStatement("select utext from complexcontent where topic_id=? and link_id=? and cid=0");
                /* setting up the parameter for the query */
                pstmt.setInt(1, topicId);
                pstmt.setInt(2, linkId);
                res = pstmt.executeQuery();
                /* moving next to the first row in resultset */
                if(res.next()) {
                    /* getting the first row's value */
                    complexString = res.getString("utext");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return complexString;
    }

    /**
     * This function translates the complex string partially.
     * It translates a particular string and change its status to translated.
     * This function takes four parameters topicId, linkId, langId and contentId.
     * contentId is an integer that indicates that which string to be translated.
     * It returns true if translation is successful otherwise false.
     *
     @param topicId An integer containing topic id of complex content
     *
     @param linkId An integer containing link id of complex content
     *
     @param langId An integer containing language id of complex content
     *
     @param contentId An integer containing content id of complex content
     *
     @param content A string containing complex content string
     *
     */
    public boolean translateComplexContent(int topicId, int linkId, int langId, int contentId, String content)
    {
        //declaring result to be returned, initially false.
        boolean result = false;
        try{
            StringBuffer buffer = new StringBuffer();
            String complexString = getComplexString(topicId,linkId,langId);
            String tDelimitor = "$$T$$";
            String sDelimitor = "\\$\\$.*?\\$\\$";
            String[] original = complexString.split(sDelimitor);
            String[] delArray = new String[original.length];
            Pattern p = Pattern.compile(sDelimitor);
            Matcher m = p.matcher(complexString);
            int counter = 0;
            while(m.find()) {
                delArray[counter] = complexString.substring(m.start(),m.end());
                counter++;
            }
            original[contentId] = content;
            delArray[contentId] = tDelimitor;
            for(int i=0;i<original.length;i++) {
                buffer.append((original[i]+delArray[i]));
            }
            result = updateComplexContent(topicId,linkId,langId,buffer.toString());
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    /**
     * This function reviews the translated complex string partially.
     * It reviews a particular string and change its status to reviewed.
     * This function takes four parameters topicId, linkId, langId and contentId.
     * contentId is an integer that indicates that which string to be translated.
     * It returns true if translation is successful otherwise false.
     *
     @param topicId An integer containing topic id of complex content
     *
     @param linkId An integer containing link id of complex content
     *
     @param langId An integer containing language id of complex content
     *
     @param contentId An integer containing content id of complex content
     *
     @param content A string containing complex content string
     *
     */
    public boolean reviewComplexContent(int topicId, int linkId, int langId, int contentId, String content, int status)
    {
        //declaring result to be returned, initially false.
        boolean result = false;
        try{
            StringBuffer buffer = new StringBuffer();
            String complexString = getComplexString(topicId,linkId,langId);
            String tDelimitor = "$$R$$";
            if(status == 1) {
                tDelimitor = "$$I$$";
            }
            String sDelimitor = "\\$\\$.*?\\$\\$";
            String[] original = complexString.split(sDelimitor);
            String[] delArray = new String[original.length];
            Pattern p = Pattern.compile(sDelimitor);
            Matcher m = p.matcher(complexString);
            int counter = 0;
            while(m.find()) {
                delArray[counter] = complexString.substring(m.start(),m.end());
                counter++;
            }
            original[contentId] = content;
            delArray[contentId] = tDelimitor;
            for(int i=0;i<original.length;i++) {
                buffer.append((original[i]+delArray[i]));
            }
            result = updateComplexContent(topicId,linkId,langId,buffer.toString());
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    /**
     * This function publishes the reviewed complex string partially.
     * It publishes a particular string and change its status to published.
     * This function takes four parameters topicId, linkId, langId and contentId.
     * contentId is an integer that indicates that which string to be translated.
     * It returns true if translation is successful otherwise false.
     *
     @param topicId An integer containing topic id of complex content
     *
     @param linkId An integer containing link id of complex content
     *
     @param langId An integer containing language id of complex content
     *
     @param contentId An integer containing content id of complex content
     *
     @param content A string containing complex content string
     *
     */
    public boolean publishComplexContent(int topicId, int linkId, int langId, int contentId, String content, int status)
    {
        //declaring result to be returned, initially false.
        boolean result = false;
        try{
            StringBuffer buffer = new StringBuffer();
            String complexString = getComplexString(topicId,linkId,langId);
            String tDelimitor = "$$P$$";
            if(status == 1) {
                tDelimitor = "$$I$$";
            }
            String sDelimitor = "\\$\\$.*?\\$\\$";
            String[] original = complexString.split(sDelimitor);
            String[] delArray = new String[original.length];
            Pattern p = Pattern.compile(sDelimitor);
            Matcher m = p.matcher(complexString);
            int counter = 0;
            while(m.find()) {
                delArray[counter] = complexString.substring(m.start(),m.end());
                counter++;
            }
            original[contentId] = content;
            delArray[contentId] = tDelimitor;
            for(int i=0;i<original.length;i++) {
                buffer.append((original[i]+delArray[i]));
            }
            result = updateComplexContent(topicId,linkId,langId,buffer.toString());
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }


    /**
     * updateComplexContent() function updates the complex string into database.
     * It updates the complex string according to topicId, linkId and languageId.
     * It takes four parameter namely topicid, linkId, langId and content(complex string to be updated)
     * It returns true if updation is completed successfully otherwise false.
     *
     @param topicId An integer containing topic id of complex content
     *
     @param linkId An integer containing link id of complex content
     *
     @param langId An integer containing language id of complex content
     *
     @param content A string containing complex content
     *
     */
    public boolean updateComplexContent(int topicId, int linkId, int langId, String content)
    {
        boolean result = false;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("update complexcontent set utext=? where cid=1 and topic_id=? and link_id=? and lang_id=?");
                pstmt.setString(1, content);
                pstmt.setInt(2, topicId);
                pstmt.setInt(3, linkId);
                pstmt.setInt(4, langId);
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated==1) {
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

    /**
     * updateSimpleContent() function updates the simple string into database.
     * It updates the simple string according to simple string id(sId), languageId.
     * It takes three parameters namely sId(simple content id), languageId and content(simple string to be updated)
     * It returns true if updation is completed successfully otherwise false.
     *
     @param sid An integer containing simple content id
     *
     @param langId An integer containing language id of simple content
     *
     @param content A string containing simple content
     *
     @return boolean It returns true if update is successful otherwise false.
     *
     */
    public boolean updateSimpleContent(int sid, int langId, String content)
    {
        boolean result = false;
        String updateQuery = "update simplecontent set utext=?,status=2 where sid=? and lang_id=?";
        String insertQuery = "insert into simplecontent values(?,?,?,?)";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                if(isSimpleContentExist(sid,langId)) {
                    pstmt = con.prepareStatement(updateQuery);
                    pstmt.setString(1, content);
                    pstmt.setInt(2, sid);
                    pstmt.setInt(3, langId);
                } else {
                    pstmt = con.prepareStatement(insertQuery);
                    pstmt.setInt(1, sid);
                    pstmt.setString(2, content);
                    pstmt.setInt(3, langId);
                    pstmt.setInt(4,2);
                }
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated==1) {
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


    /**
     * updateSimpleContent() function updates the simple string into database.
     * It updates the simple string according to simple string id(sId), languageId.
     * It takes three parameters namely sId(simple content id), languageId and content(simple string to be updated)
     * and status of the content.
     * It returns true if updation is completed successfully otherwise false.
     *
     @param sid An integer containing simple content id
     *
     @param langId An integer containing language id of simple content
     *
     @param content A string containing simple content
     *
     @param status An integer containing status of simple content.
     *
     @return boolean It returns true if update is successful otherwise false.
     *
     */
    public boolean updateSimpleContent(int sid, int langId, String content, int status)
    {
        boolean result = false;
        String updateQuery = "update simplecontent set utext=?,status=? where sid=? and lang_id=?";
        String insertQuery = "insert into simplecontent values(?,?,?,?)";
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try {
                if(isSimpleContentExist(sid,langId)) {
                    pstmt = con.prepareStatement(updateQuery);
                    pstmt.setString(1, content);
                    pstmt.setInt(2, status);
                    pstmt.setInt(3, sid);
                    pstmt.setInt(4, langId);
                } else {
                    pstmt = con.prepareStatement(insertQuery);
                    pstmt.setInt(1, sid);
                    pstmt.setString(2, content);
                    pstmt.setInt(3, langId);
                    pstmt.setInt(4,status);
                }
                int rowUpdated = pstmt.executeUpdate();
                if(rowUpdated==1) {
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

    /**
     * getComplexMixedContent() function create mixed complex content from original complex content and
     * requestedContent(depends on the language). It mix the content according to some delimitors and then
     * create a mixed string array of complex content.
     * It takes three parameter topicId, linkId and languageId(for which the content should be prepared)
     * It returns a array of string (mixed complex string) if found according to parameters otherwise null.
     *
     @param topicId An integer containing topic id of complex content
     *
     @param linkId An integer containing link id of complex content
     *
     @param langId An integer containing language id of complex content
     *
     @return String[] It returns array of complex content string if found otherwise null
     *
     */
    public String[] getComplexMixedContent(int topicId, int linkId, int langId)
    {
        //declaring mixed content array
        String[] complexContent = null;
        //fetching original language of the content.
        int originalLanguage = getOriginalLanguage(topicId, linkId);
        //fetching original content string from database
        String originalContent = getComplexString(topicId, linkId, originalLanguage);
        //fetching requested content string from database(depending upon language
        String requestedContent = getComplexString(topicId, linkId, langId);
        //declaring delimitors for various status of a substring in complex string.
        String delimitor = "\\$\\$\\$\\$\\$";
        String iDelimitor = "\\$\\$I\\$\\$";
        String tDelimitor = "\\$\\$T\\$\\$";
        String rDelimitor = "\\$\\$R\\$\\$";
        String pDelimitor = "\\$\\$P\\$\\$";
        String sDelimitor = "\\$\\$.*?\\$\\$";
        if(originalContent != null && requestedContent != null) {
            String[] original = originalContent.split(sDelimitor);
            String[] translated = requestedContent.split(sDelimitor);
            complexContent = new String[original.length];
            String[] delArray = new String[original.length];
            Pattern p = Pattern.compile(sDelimitor);
            Matcher m = p.matcher(requestedContent);
            int counter = 0;
            while(m.find()) {
                delArray[counter] = requestedContent.substring(m.start(),m.end());
            counter++;
            }
            for(int i=0;i<original.length;i++) {
                if(delArray[i].matches(iDelimitor)) {
                    complexContent[i] = original[i];
                } else if(delArray[i].matches(tDelimitor)) {
                    complexContent[i] = original[i];
                } else if(delArray[i].matches(rDelimitor)) {
                    complexContent[i] = original[i];
                } else if(delArray[i].matches(pDelimitor)) {
                    complexContent[i] = translated[i];
                }
            }
        }
        return complexContent;
    }

    /**
     * getOriginalLanguage() method finds the original language of the content using topicId and linkId.
     * It takes two parameters namely topicId and linkId.
     * topicId means contents comes under this topic
     * linkId means contents comes under this link
     * It returns a integer value having the original language id of the content.
     *
     @param topicId An integer containing topic id of  content
     *
     @param linkId An integer containing link id of content
     *
     */
    public int getOriginalLanguage(int topicId, int linkId)
    {
        int originalLanguage = 0;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                pstmt = con.prepareStatement("select original_language from links where topic_id=? and link_id=?");
                pstmt.setInt(1, topicId);
                pstmt.setInt(2, linkId);
                res = pstmt.executeQuery();
                while(res.next()) {
                    originalLanguage = res.getInt("original_language");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
                EkShikshaDBConnection.closeDBConnection(con);
            }
        }
        return originalLanguage;
    }

    /**
     * getComplexContentForTranslator() finds the complex content for given parmeter(topicId,linkId and langId)
     * It then splits the complex string into pieces and then checks status of every piece using suffixed
     * delimiter. While checking the status of every piece it assign a color to that piece according to
     * status of the piece.
     * It takes three parameter topicId, linkId and languageId(for which the content should be prepared)
     * It returns a 2-dimensional array of string if found according to parameters otherwise null.
     */
    public String[][] getComplexContentForTranslator(int topicId, int linkId, int langId)
    {
        String[][] complexContent = null;
        //fetching original language of the content.
        int originalLanguage = getOriginalLanguage(topicId, linkId);
        //fetching requested content string from database(depending upon language
        String requestedContent = getComplexString(topicId, linkId, langId);
        //declaring delimitors for various status of a substring in complex string.
        String delimitor = "\\$\\$\\$\\$\\$";
        String iDelimitor = "\\$\\$I\\$\\$";
        String tDelimitor = "\\$\\$T\\$\\$";
        String rDelimitor = "\\$\\$R\\$\\$";
        String pDelimitor = "\\$\\$P\\$\\$";
        String sDelimitor = "\\$\\$.*?\\$\\$";
        if(requestedContent != null) {
            String[] translated = requestedContent.split(sDelimitor);
            complexContent = new String[translated.length][2];
            String[] delArray = new String[translated.length];
            Pattern p = Pattern.compile(sDelimitor);
            Matcher m = p.matcher(requestedContent);
            int counter = 0;
            while(m.find()) {
                delArray[counter] = requestedContent.substring(m.start(),m.end());
                counter++;
            }
            for(int i=0;i<translated.length;i++) {
                if(delArray[i].matches(iDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "red";
                } else if(delArray[i].matches(tDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "orange";
                } else if(delArray[i].matches(rDelimitor)) {
                complexContent[i][0] = translated[i];
                complexContent[i][1] = "gold";
                } else if(delArray[i].matches(pDelimitor)) {
                complexContent[i][0] = translated[i];
                complexContent[i][1] = "green";
                }
            }
        }
        return complexContent;
    }

    /**
     * This functions returns the array of simple contents from database for particular topic and link and specified language.
     * If language contents are not found then original content is returned, the function finds the original
     * language by calling getOriginalLanguage() method.
     * It calls the getSimpleIds() function to get the id of simple content for particular topic and link.
     * It takes three parameter link topicId, linkId and languageId
     */
    public String[][] getSimpleContentForTranslator(int topicId, int linkId, int langId)
    {
        String[][] simpleContent = null;
        String[] simpleId = null;
        String[] original = null;
        int originalLanguage = 0;
        originalLanguage = getOriginalLanguage(topicId,linkId);
        simpleId = getSimpleIds(topicId,linkId);
        simpleContent = new String[simpleId.length][3];
        original = getSimpleContent(topicId,linkId,originalLanguage);
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            if(simpleId != null) {
                try {
                    /* preparing query to get the content from simplecontent table based on sid (simple content id) */
                    pstmt = con.prepareStatement("select utext,status,lang_id from simplecontent where sid=? and (lang_id=? or lang_id=?) order by lang_id desc");
                    /* setting the parameter langId to get the simple content in this language */
                    for(int i=0;i<simpleId.length;i++) { /* iterating through each simple content id */
                        pstmt.setInt(1, Integer.parseInt(simpleId[i])); /* setting parameter simpleid */
                        pstmt.setInt(2, langId);
                        pstmt.setInt(3, originalLanguage);
                        res = pstmt.executeQuery();
                        /* moving to the first row in result set */
                        if(res.next()) {
                            /* getting the first row's value */
                            simpleContent[i][0] = res.getString("utext");
                            int status = res.getInt("status");
                            int language = res.getInt("lang_id");
                            if(language==langId && (status==4)) {
                                simpleContent[i][1] = "green";
                            } else if(language==langId && (status==3)) {
                                simpleContent[i][1] = "gold";
                            } else if(language==langId && (status==2)) {
                                simpleContent[i][1] = "orange";
                            } else if(language==langId && (status==1)) {
                                simpleContent[i][1] = "red";
                            } else {
                                simpleContent[i][1] = "red";
                            }
                            simpleContent[i][2] = original[i];
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
        }
        return simpleContent;
    }


    /**
     * getComplexContentForReviewer() finds the complex content for given parmeter(topicId,linkId and langId)
     * It then splits the complex string into pieces and then checks status of every piece using suffixed
     * delimiter. While checking the status of every piece it assign a color to that piece according to
     * status of the piece.
     * It takes three parameter topicId, linkId and languageId(for which the content should be prepared)
     * It returns a 2-dimensional array of string if found according to parameters otherwise null.
     */
    public String[][] getComplexContentForReviewer(int topicId, int linkId, int langId)
    {
        String[][] complexContent = null;
        //fetching original language of the content.
        int originalLanguage = getOriginalLanguage(topicId, linkId);
        //fetching requested content string from database(depending upon language
        String requestedContent = getComplexString(topicId, linkId, langId);
        //declaring delimitors for various status of a substring in complex string.
        String delimitor = "\\$\\$\\$\\$\\$";
        String iDelimitor = "\\$\\$I\\$\\$";
        String tDelimitor = "\\$\\$T\\$\\$";
        String rDelimitor = "\\$\\$R\\$\\$";
        String pDelimitor = "\\$\\$P\\$\\$";
        String sDelimitor = "\\$\\$.*?\\$\\$";
        if(requestedContent != null) {
            String[] original = getComplexContent(topicId,linkId,originalLanguage);
            String[] translated = requestedContent.split(sDelimitor);
            complexContent = new String[translated.length][3];
            String[] delArray = new String[translated.length];
            Pattern p = Pattern.compile(sDelimitor);
            Matcher m = p.matcher(requestedContent);
            int counter = 0;
            while(m.find()) {
                delArray[counter] = requestedContent.substring(m.start(),m.end());
                counter++;
            }
            for(int i=0;i<translated.length;i++) {
                if(delArray[i].matches(iDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "red";
                    complexContent[i][2] = original[i];
                } else if(delArray[i].matches(tDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "orange";
                    complexContent[i][2] = original[i];
                } else if(delArray[i].matches(rDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "gold";
                    complexContent[i][2] = original[i];
                } else if(delArray[i].matches(pDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "green";
                    complexContent[i][2] = original[i];
                }
            }
        }
        return complexContent;
    }

    /**
     * getSimpleContentForReviewer() functions returns the array of simple contents from database for particular topic and link and specified language.
     * If language contents are not found then original content is returned, the function finds the original
     * language by calling getOriginalLanguage() method.
     * It calls the getSimpleIds() function to get the id of simple content for particular topic and link.
     * It takes three parameter link topicId, linkId and languageId
     */
    public String[][] getSimpleContentForReviewer(int topicId, int linkId, int langId)
    {
        String[][] simpleContent = null;
        String[] simpleId = null;
        String[] original = null;
        int originalLanguage = 0;
        originalLanguage = getOriginalLanguage(topicId,linkId);
        simpleId = getSimpleIds(topicId,linkId);
        simpleContent = new String[simpleId.length][3];
        original = getSimpleContent(topicId,linkId,originalLanguage);
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            if(simpleId != null) {
                try {
                    /* preparing query to get the content from simplecontent table based on sid (simple content id) */
                    pstmt = con.prepareStatement("select utext,status,lang_id from simplecontent where sid=? and (lang_id=? or lang_id=?) order by lang_id desc");
                    /* setting the parameter langId to get the simple content in this language */
                    for(int i=0;i<simpleId.length;i++) { /* iterating through each simple content id */
                        pstmt.setInt(1, Integer.parseInt(simpleId[i])); /* setting parameter simpleid */
                        pstmt.setInt(2, langId);
                        pstmt.setInt(3, originalLanguage);
                        res = pstmt.executeQuery();
                        /* moving to the first row in result set */
                        if(res.next()) {
                            /* getting the first row's value */
                            simpleContent[i][0] = res.getString("utext");
                            int status = res.getInt("status");
                            int language = res.getInt("lang_id");
                            if(language==langId && (status==4)) {
                                simpleContent[i][1] = "green";
                            } else if(language==langId && (status==3)) {
                                simpleContent[i][1] = "gold";
                            } else if(language==langId && (status==2)) {
                                simpleContent[i][1] = "orange";
                            } else if(language==langId && (status==1)) {
                                simpleContent[i][1] = "red";
                            } else {
                                simpleContent[i][1] = "red";
                            }
                            simpleContent[i][2] = original[i];
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
        }
        return simpleContent;
    }

    /**
     * getComplexContentForPublisher() finds the complex content for given parmeter(topicId,linkId and langId)
     * It then splits the complex string into pieces and then checks status of every piece using suffixed
     * delimiter. While checking the status of every piece it assign a color to that piece according to
     * status of the piece.
     * It takes three parameter topicId, linkId and languageId(for which the content should be prepared)
     * It returns a 2-dimensional array of string if found according to parameters otherwise null.
     */
    public String[][] getComplexContentForPublisher(int topicId, int linkId, int langId)
    {
        String[][] complexContent = null;
        //fetching original language of the content.
        int originalLanguage = getOriginalLanguage(topicId, linkId);
        //fetching requested content string from database(depending upon language
        String requestedContent = getComplexString(topicId, linkId, langId);
        //declaring delimitors for various status of a substring in complex string.
        String delimitor = "\\$\\$\\$\\$\\$";
        String iDelimitor = "\\$\\$I\\$\\$";
        String tDelimitor = "\\$\\$T\\$\\$";
        String rDelimitor = "\\$\\$R\\$\\$";
        String pDelimitor = "\\$\\$P\\$\\$";
        String sDelimitor = "\\$\\$.*?\\$\\$";
        if(requestedContent != null) {
            String[] translated = requestedContent.split(sDelimitor);
            String[] original = getComplexContent(topicId,linkId,originalLanguage);
            complexContent = new String[translated.length][3];
            String[] delArray = new String[translated.length];
            Pattern p = Pattern.compile(sDelimitor);
            Matcher m = p.matcher(requestedContent);
            int counter = 0;
            while(m.find()) {
                delArray[counter] = requestedContent.substring(m.start(),m.end());
                counter++;
            }
            for(int i=0;i<translated.length;i++) {
                if(delArray[i].matches(iDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "red";
                    complexContent[i][2] = original[i];
                } else if(delArray[i].matches(tDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "orange";
                    complexContent[i][2] = original[i];
                } else if(delArray[i].matches(rDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "gold";
                    complexContent[i][2] = original[i];
                } else if(delArray[i].matches(pDelimitor)) {
                    complexContent[i][0] = translated[i];
                    complexContent[i][1] = "green";
                    complexContent[i][2] = original[i];
                }
            }
        }
        return complexContent;
    }

    /**
     * getSimpleContentForPublisher() functions returns the array of simple contents from database for particular topic and link and specified language.
     * If language contents are not found then original content is returned, the function finds the original
     * language by calling getOriginalLanguage() method.
     * It calls the getSimpleIds() function to get the id of simple content for particular topic and link.
     * It takes three parameter link topicId, linkId and languageId
     */
    public String[][] getSimpleContentForPublisher(int topicId, int linkId, int langId)
    {
        String[][] simpleContent = null;
        String[] simpleId = null;
        String[] original = null;
        int originalLanguage = 0;
        originalLanguage = getOriginalLanguage(topicId,linkId);
        simpleId = getSimpleIds(topicId,linkId);
        simpleContent = new String[simpleId.length][3];
        original = getSimpleContent(topicId,linkId,originalLanguage);
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            if(simpleId != null && originalLanguage > 0) {
                try {
                    /* preparing query to get the content from simplecontent table based on sid (simple content id) */
                    pstmt = con.prepareStatement("select utext,status,lang_id from simplecontent where sid=? and (lang_id=? or lang_id=?) order by lang_id desc");
                    /* setting the parameter langId to get the simple content in this language */
                    for(int i=0;i<simpleId.length;i++) { /* iterating through each simple content id */
                        pstmt.setInt(1, Integer.parseInt(simpleId[i])); /* setting parameter simpleid */
                        pstmt.setInt(2, langId);
                        pstmt.setInt(3, originalLanguage);
                        res = pstmt.executeQuery();
                        /* moving to the first row in result set */
                        if(res.next()) {
                            /* getting the first row's value */
                            simpleContent[i][0] = res.getString("utext");
                            int status = res.getInt("status");
                            int language = res.getInt("lang_id");
                            if(language==langId && (status==4)) {
                                simpleContent[i][1] = "green";
                            } else if(language==langId && (status==3)) {
                                simpleContent[i][1] = "gold";
                            } else if(language==langId && (status==2)) {
                                simpleContent[i][1] = "orange";
                            } else if(language==langId && (status==1)) {
                                simpleContent[i][1] = "red";
                            } else {
                                simpleContent[i][1] = "red";
                            }
                            simpleContent[i][2] = original[i];
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
        }
        return simpleContent;
    }

    /**
     * translateWord() function translate every character of the word into respective language (given as a parameter).
     * It first create a character array of string then translate every character of string.
     * It takes two parameter first the string (that is to be translated) and second one is language(in which string to be translated)
     * It returns translated string.
     */
    public String translateWord(String string, int originalLanguage, int langId) {
        String translated = "";
        if(string != null) {//checking whether the given string is not null
            char[] characters = string.toCharArray();
            for(int i=0;i<characters.length;i++) {
                int characterId = getCharacterId(String.valueOf(characters[i]), originalLanguage);
                if(characterId != 0) {
                    translated += getCharacterUnicode(characterId, langId);
                } else {
                    translated += characters[i];
                }
            }
        }
        return translated;
    }

    /**
     * getCharacterUnicode() function gets a unicode value from charactertable in database.
     * It finds the value from charactertable according to the ascci value of character as an id and language id.
     * Finally it returns the unicode value of that character.
     * @param id(ASCII value of the character) and langId.
     * @return (String) It returns a unicode value of character as a string.
     */
    public String getCharacterUnicode(int id, int langId)
    {
        //declaring variable to store unicode value
        String unicode = null;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                //creating the query statement to get unicode value of character
                pstmt = con.prepareStatement("select unicodevalue from charactertable where characterid=? and lang_id=?");
                //binding the parameter to query statement
                pstmt.setInt(1, id);
                pstmt.setInt(2, langId);
                //executing the query
                res = pstmt.executeQuery();
                //getting the unicode value if exist
                if(res.next()) {
                    unicode = res.getString("unicodevalue");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
            }
        }
        //returning the unicode value
        return unicode;
    }

    /**
     * getCharacterId() function gets a id of unicode text from charactertable in database.
     * It finds the id from charactertable according to the unicode value  and language id.
     * Finally it returns the id of the unicode character.
     * @param unicode(unicode character) and langId.
     * @return (int) It returns a int value of unicode character.
     */
    public int getCharacterId(String unicode, int langId)
    {
        //declaring variable to store id
        int id = 0;
        if(EkShikshaDBConnection.isClosed(con)) {
            con = EkShikshaDBConnection.getDBConnection();
        }
        if(!EkShikshaDBConnection.isClosed(con)) {
            try{
                //creating the query statement to get id of unicode value
                pstmt = con.prepareStatement("select characterid from charactertable where unicodevalue=? and lang_id=?");
                //binding the parameter to query statement
                pstmt.setString(1, unicode);
                pstmt.setInt(2, langId);
                //executing the query
                res = pstmt.executeQuery();
                //getting the id if exist
                if(res.next()) {
                    id = res.getInt("characterid");
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                EkShikshaDBConnection.closePStatement(pstmt);
                EkShikshaDBConnection.closeResultSet(res);
            }
        }
        //returning the unicode value
        return id;
    }

    /**
     * getTopicTranslationRatio() function computes how much the topic is translated.
     * The computation of the translation ratio is based on the suffixed delimiter (for complex string),
     * and status associated with simple string.
     */
    public float getTopicTranslationRatio(int topicId, int linkId, int langId) {
        float ratio = 0.0f;
        int originalLanguage = 1;
        String original = "one of dd the$$P$$hello how are you.$$P$$we are with you$$P$$yes you can do it.$$P$$";
        String regional = "one of the$$P$$hello how are you.$$R$$we are with you$$T$$yes you can do it.$$P$$";
        //declaring delimitors for various status of a substring in complex string.
        String pDelimitor = "\\$\\$P\\$\\$"; // to match only published entity
        String sDelimitor = "\\$\\$.*?\\$\\$"; //to match every entity
        if(original != null) { // original content is not null
            //spliting the original content into  array
            String[] originalContent = original.split(sDelimitor);
            //spliting the regional content into  array
            String[] regionalContent = regional.split(sDelimitor);
            //declaring the array to store the delimitor for regional content
            String[] regionalDelimitor = new String[regionalContent.length];
            //variable to store the number of translatable entities in original content
            int totalTranslatable = originalContent.length;
            //variable to store number of entities translated
            int translated = 0;
            //to extract the delimitor of original language
            Pattern p = Pattern.compile(sDelimitor); //creating a pattern to extract delimitor
            Matcher m = p.matcher(regional); //creating the source from which delimitor to be extracted
            int counter = 0;//setting counter to zero
            while(m.find()) {
                //extracting the delimitor from contents and store them in regionalDelimitor array
                regionalDelimitor[counter] = regional.substring(m.start(),m.end());
                counter++; //increment counter by one
            }
            //iterating through the delimitor array
            for(int i=0;i<regionalDelimitor.length;i++) {
                if(regionalDelimitor[i].matches(pDelimitor)) { //checking whether delimitor matches publihed entity delimitor
                    translated++; //increment translated entity counter by 1
                }
            }
            
            System.out.println("Total : "+totalTranslatable);
            System.out.println("Translated : "+translated);
            ratio = (translated * 100)/totalTranslatable;
            System.out.println("Ratio : "+ratio);
        }
        return ratio;
    }

    
    public static void main(String[] args) {
        new ContentHandler().getTopicTranslationRatio(1, 1, 1);
    }
}
